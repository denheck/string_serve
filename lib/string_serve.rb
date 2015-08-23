require 'rack'
require 'w3c_validators'
require 'json'

class String
  def serve
    Rack::Handler::WEBrick.run(->(env) {
      [200, {'Content-Type' => content_type}, [self]]
    })
  end

  private

  def content_type
    case
    when valid_html?
      'text/html'
    when valid_json?
      'application/json'
    else
      'text/plain'
    end
  end

  def valid_json?
    !!JSON.parse(self) rescue false
  end

  def valid_html?
    W3CValidators::MarkupValidator.new
                                  .validate_text(self)
                                  .errors
                                  .length == 0
  end
end
