jQuery(document).on("turbolinks:load", function() {
  var $messages = $("#messages");
  var current_user_id = $("#message_content").data("current-user-id");

  App.messages = App.cable.subscriptions.create(
    {
      channel: "MessagesChannel",
      chat_room_id: $messages.data("chat-room-id")
    },
    {
      received: function(data) {
        $("textarea[data-current-user-id='" + current_user_id + "'").val("");
        $messages.removeClass("hidden");
        $messages.append(this.renderMessage(data));
      },

      renderMessage: function(data) {
        return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
      }
    }
  );
})