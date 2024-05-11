require 'minitest/autorun'
require 'rack/test'

ENV['RACK_ENV'] == 'test'

require_relative '../cms_2'

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index_page
    get '/'

    assert_equal 200, last_response.status
    assert_equal 'text/html;charset=utf-8', last_response['content-type']

    assert_includes last_response.body, 'about.txt'
    assert_includes last_response.body, 'changes.txt'
    assert_includes last_response.body, 'history.txt'
  end

  def test_viewing_about_dot_txt_document
    get '/about.txt'

    assert_equal 200, last_response.status
    assert_equal 'text/plain', last_response['content-type']

    assert_includes last_response.body, 'hello from the about.txt file'
  end

  def test_viewing_changes_dot_txt_document
    get '/changes.txt'

    assert_equal 200, last_response.status
    assert_equal 'text/plain', last_response['content-type']

    assert_includes last_response.body, 'hello from the changes.txt file'
  end

  def test_viewing_history_dot_txt_document
    get '/history.txt'

    assert_equal 200, last_response.status
    assert_equal 'text/plain', last_response['content-type']

    assert_includes last_response.body, 'hello from the history.txt file'
  end

end


