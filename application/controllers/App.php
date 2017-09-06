<?php
use GuzzleHttp\Client;
defined('BASEPATH') OR exit('No direct script access allowed');
class App extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	public function index(){
		$ret = array(
			'data' => 'Hello World :)'
			);
		echo json_encode($ret);
	}

	public function listtodos(){
		$this->db->where('team_public_id', $this->input->post('team_id', true));
		$this->db->where('channel_public_id', $this->input->post('channel_id', true));
		$this->db->where('task_status', 'undone');
		$this->db->join('channels', 'tasks.task_channel = channels.channel_id');
		$this->db->join('teams', 'teams.team_id = channels.channel_team');
		$data = $this->db->get('tasks')->result_array();
		$str = "";
		foreach ($data as $key => $value) {
			$str = $str . "*" . $value['task_text'] . "* \n";
		}
		if( $str == "" ){
			$str = "*No Todos*";
		}
		// $str = trim($str, "\\n");
		$this->respond($this->input->post('response_url', true), $str);
	}
	public function marktodo(){
		$this->db->where('team_public_id', $this->input->post('team_id', true));
		$this->db->where('channel_public_id', $this->input->post('channel_id', true));
		$this->db->where('task_text', $this->input->post('text', true));
		$this->db->join('channels', 'tasks.task_channel = channels.channel_id');
		$this->db->join('teams', 'teams.team_id = channels.channel_team');
		$data = $this->db->get('tasks');
		if( $data->num_rows() == 1 ){
			$data = $data->row_array();
			if( $data['task_status'] == 'undone' ){
				$updatedTask = array(
					'task_status' => 'done'
					);
				$this->db->where('task_id', $data['task_id']);
				$this->db->update('tasks', $updatedTask);
				$this->respond($this->input->post('response_url', true), 'Task marked as complete');
			}else{
				$this->respond($this->input->post('response_url', true), 'Task already completed');
			}
		}else{
			$this->respond($this->input->post('response_url', true), 'Task not present in the list');
		}
	}
	public function addtodo(){
		$team_public_id = $this->input->post('team_id', true);
		$team_domain = $this->input->post('team_domain', true);

		$team = $this->db->get_where('teams', array('team_public_id' => $team_public_id));
		if( $team->num_rows() == 1 ){
			$team = $team->row_array();
			$team_id = $team['team_id'];
		}else{
			$team = array(
				'team_public_id' => $team_public_id,
				'team_domain' => $team_domain
				);
			$this->db->insert('teams', $team);
			$team_id = $this->db->insert_id();
		}

		$channel_public_id = $this->input->post('channel_id', true);
		$channel_name = $this->input->post('channel_name', true);

		$channel = $this->db->get_where('channels', array('channel_public_id' => $channel_public_id, 'channel_team' => $team_id));
		if( $channel->num_rows() == 1 ){
			$channel = $channel->row_array();
			$channel_id = $channel['channel_id'];
		}else{
			$channel = array(
				'channel_public_id' => $channel_public_id,
				'channel_name' => $channel_name,
				'channel_team' => $team_id
				);
			$this->db->insert('channels', $channel);
			$channel_id = $this->db->insert_id();
		}

		$task_text = $this->input->post('text', true);
		$task = array(
			'task_text' => $task_text,
			'task_channel' => $channel_id,
			'task_user_id' => $this->input->post('user_id', true),
			'task_user_name' => $this->input->post('user_name', true),
			'task_request_data' => serialize($_POST)
			);
		$this->db->insert('tasks', $task);
		$this->respond($this->input->post('response_url', true), 'Task added to list');
	}
	public function data(){
		$data = $this->db->get('test')->result_array();
		foreach ($data as $key => $value) {
			$data[$key] = unserialize($data[$key]['test_data']);
		}
		echo "<pre>";
		print_r ( $data );
		echo "</pre>";
	}

	function respond($url, $str){
		$client = new GuzzleHttp\Client();
		$client->request('POST', $url, ['json' => ['text' => $str, "username"=> "TodoApp", "mrkdwn"=> true]]);
	}
}