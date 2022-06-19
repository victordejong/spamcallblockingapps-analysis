.class public interface abstract Lzendesk/support/RequestProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addComment(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/EndUserComment;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Comment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createRequest(Lzendesk/support/CreateRequest;Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/CreateRequest;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllRequests(Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getComments(Ljava/lang/String;Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/CommentsResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCommentsSince(Ljava/lang/String;Ljava/util/Date;ZLcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/CommentsResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUpdatesForDevice(Lcom/zendesk/service/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/RequestUpdates;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract markRequestAsRead(Ljava/lang/String;I)V
.end method

.method public abstract markRequestAsUnread(Ljava/lang/String;)V
.end method
