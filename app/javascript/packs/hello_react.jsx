// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'

const Hello = React.createClass({
  propTypes: {
    name: React.PropTypes.string
  },
  render () {
    return (
      <div>
        <h1>Hello {this.props.name}!</h1>
        <h2>Hello {this.props.testString}!</h2>
      </div>
    )
  }
})

Hello.defaultProps = {
  name: 'David',
  testString: testString
}

ReactDOM.render(<Hello/>, document.getElementById('app'))
