{Actions,
 CategoryStore,
 React,
 TaskFactory,
 FocusedMailViewStore} = require 'nylas-exports'

class UnsubscribeQuickAction extends React.Component
  @displayName: 'ThreadListQuickActions'
  @propTypes:
    thread: React.PropTypes.object

  render: =>
    mailViewFilter = FocusedMailViewStore.mailView()
    unsubscribe = null

    if true
      unsubscribe = <div key="unsubscribe"
                   title="Unsubscribe"
                   style={{ order: 90 }}
                   className='btn action action-unsubscribe'
                   onClick={@_onUnsubscribe}></div>

    return unsubscribe

  shouldComponentUpdate: (newProps, newState) ->
    newProps.thread.id isnt @props?.thread.id

  _onUnsubscribe: (event) =>
    console.log("Unsubscribe button clicked");
    #task = TaskFactory.taskForMovingToTrash
     # threads: [@props.thread]
     # fromView: FocusedMailViewStore.mailView()
    #Actions.queueTask(task)
  
    # Don't trigger the thread row click
    event.stopPropagation()

module.exports = UnsubscribeQuickAction