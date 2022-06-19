.class Lzendesk/support/request/ActionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ActionFactory$ErrorAction;
    }
.end annotation


# instance fields
.field private final authProvider:Lzendesk/core/AuthenticationProvider;

.field private final belvedere:Lzendesk/belvedere/a;

.field private final executorService:Ljava/util/concurrent/Executor;

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final requestProvider:Lzendesk/support/RequestProvider;

.field private final sdkVersion:Ljava/lang/String;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;

.field private final uploadProvider:Lzendesk/support/UploadProvider;

.field private final zendesk:Lzendesk/core/Zendesk;


# direct methods
.method constructor <init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/belvedere/a;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;Lzendesk/support/SupportBlipsProvider;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ActionFactory;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/a;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p11, p0, Lzendesk/support/request/ActionFactory;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p7, p0, Lzendesk/support/request/ActionFactory;->sdkVersion:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    .line 11
    iput-object p9, p0, Lzendesk/support/request/ActionFactory;->zendesk:Lzendesk/core/Zendesk;

    .line 12
    iput-object p10, p0, Lzendesk/support/request/ActionFactory;->supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method


# virtual methods
.method androidOnPause()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "ANDROID_ON_PAUSE"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method androidOnResume()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "ANDROID_ON_RESUME"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method attachmentDownloaded(Lzendesk/support/request/StateRequestAttachment;Lzendesk/belvedere/r;)Lt/a/a;
    .locals 1

    .line 1
    new-instance v0, Lt/a/a;

    invoke-static {p1, p2}, Lf/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lf/h/k/c;

    move-result-object p1

    const-string p2, "ATTACHMENT_DOWNLOADED"

    invoke-direct {v0, p2, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method clearAttachments()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "CLEAR_ATTACHMENTS"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method clearMessages()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "CLEAR_MESSAGES"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method createComment(Lzendesk/support/request/StateMessage;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "CREATE_COMMENT"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method createCommentAsync(Ljava/lang/String;Ljava/util/List;)Lt/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lt/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentUploadService;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/a;

    invoke-direct {v0, v1, v2, p2}, Lzendesk/support/request/AttachmentUploadService;-><init>(Lzendesk/support/UploadProvider;Lzendesk/belvedere/a;Ljava/util/List;)V

    .line 2
    new-instance v1, Lzendesk/support/request/ActionCreateComment;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    new-instance v3, Lzendesk/support/request/StateMessage;

    invoke-direct {v3, p1, p2}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lzendesk/support/request/ActionCreateComment;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V

    .line 3
    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object p1

    return-object p1
.end method

.method createCommentError(Lcom/zendesk/service/a;Lzendesk/support/request/StateMessage;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "CREATE_COMMENT_ERROR"

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/a;Ljava/lang/Object;)V

    return-object v0
.end method

.method createCommentSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "CREATE_COMMENT_SUCCESS"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method createRequestError(Lcom/zendesk/service/a;Lzendesk/support/request/StateMessage;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "CREATE_REQUEST_ERROR"

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/a;Ljava/lang/Object;)V

    return-object v0
.end method

.method createRequestSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "CREATE_REQUEST_SUCCESS"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method deleteMessage(Lzendesk/support/request/StateMessage;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "DELETE_MESSAGE"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method deselectAttachment(Ljava/util/List;)Lt/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;)",
            "Lt/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "ATTACHMENTS_DESELECTED"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method initialLoadCommentsAsync()Lt/a/a;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/a;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/a;Z)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object v0

    return-object v0
.end method

.method installStartConfigAsync(Lzendesk/support/request/RequestUiConfig;)Lt/a/a;
    .locals 8

    .line 1
    new-instance v7, Lzendesk/support/request/ActionInstallConfiguration;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v3, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lzendesk/support/request/ActionFactory;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lzendesk/support/request/ActionFactory;->supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

    move-object v0, v7

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lzendesk/support/request/ActionInstallConfiguration;-><init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/RequestUiConfig;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportBlipsProvider;)V

    .line 2
    invoke-static {v7}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object p1

    return-object p1
.end method

.method loadComments(Z)Lt/a/a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lt/a/a;

    const-string v0, "LOAD_COMMENT_INITIAL"

    invoke-direct {p1, v0}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lt/a/a;

    const-string v0, "LOAD_COMMENTS_UPDATE"

    invoke-direct {p1, v0}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method loadCommentsError(ZLcom/zendesk/service/a;)Lt/a/a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v0, "LOAD_COMMENTS_INITIAL_ERROR"

    invoke-direct {p1, v0, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/a;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v0, "LOAD_COMMENTS_UPDATE_ERROR"

    invoke-direct {p1, v0, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/a;)V

    return-object p1
.end method

.method loadCommentsFromCache()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadCommentsFromCacheAsync()Lt/a/a;
    .locals 7

    .line 1
    new-instance v6, Lzendesk/support/request/ActionLoadCachedComments;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v3, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/a;

    iget-object v4, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lzendesk/support/request/ActionFactory;->sdkVersion:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/ActionLoadCachedComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportUiStorage;Lzendesk/belvedere/a;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 2
    invoke-static {v6}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object v0

    return-object v0
.end method

.method loadCommentsFromCacheError()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE_ERROR"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadCommentsFromCacheSuccess(Lzendesk/support/request/StateConversation;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE_SUCCESS"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method loadCommentsSuccess(ZLzendesk/support/CommentsResponse;Ljava/util/Map;)Lt/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lzendesk/support/CommentsResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/belvedere/r;",
            ">;)",
            "Lt/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/h/k/c;

    invoke-direct {v0, p2, p3}, Lf/h/k/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lt/a/a;

    const-string p2, "LOAD_COMMENTS_INITIAL_SUCCESS"

    invoke-direct {p1, p2, v0}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lt/a/a;

    const-string p2, "LOAD_COMMENTS_UPDATE_SUCCESS"

    invoke-direct {p1, p2, v0}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method loadRequest()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_REQUEST"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadRequestAsync()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadRequest;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-direct {v0, p0, v1}, Lzendesk/support/request/ActionLoadRequest;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object v0

    return-object v0
.end method

.method loadRequestError(Lcom/zendesk/service/a;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "LOAD_REQUEST_ERROR"

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/a;)V

    return-object v0
.end method

.method loadRequestSuccess(Lzendesk/support/Request;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_REQUEST_SUCCESS"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method loadSettings()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_SETTINGS"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadSettingsAsync()Lt/a/a;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadSettings;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    invoke-direct {v0, p0, v1, v2}, Lzendesk/support/request/ActionLoadSettings;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object v0

    return-object v0
.end method

.method loadSettingsError(Lcom/zendesk/service/a;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "LOAD_SETTINGS_ERROR"

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/a;)V

    return-object v0
.end method

.method loadSettingsSuccess(Lzendesk/support/request/StateSettings;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "LOAD_SETTINGS_SUCCESS"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method onDialogDismissed()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "DIALOG_DISMISSED"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method requestClosed()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "REQUEST_CLOSED"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method resendCommentAsync(Lzendesk/support/request/StateMessage;)Lt/a/a;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentUploadService;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/a;

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lzendesk/support/request/AttachmentUploadService;-><init>(Lzendesk/support/UploadProvider;Lzendesk/belvedere/a;Ljava/util/List;)V

    .line 3
    new-instance v1, Lzendesk/support/request/ActionCreateComment;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-direct {v1, p0, v2, v0, p1}, Lzendesk/support/request/ActionCreateComment;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V

    .line 4
    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object p1

    return-object p1
.end method

.method selectAttachment(Ljava/util/List;)Lt/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;)",
            "Lt/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "ATTACHMENTS_SELECTED"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method showRetryDialog(Ljava/util/List;)Lt/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Lt/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "SHOW_RETRY_DIALOG"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method skipAction()Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "SKIP_ACTION"

    invoke-direct {v0, v1}, Lt/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method startConfig(Lzendesk/support/request/RequestUiConfig;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "START_CONFIG"

    invoke-direct {v0, v1, p1}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method updateCommentsAsync()Lt/a/a;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/a;Z)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object v0

    return-object v0
.end method

.method updateNameEmailAsync(Ljava/lang/String;Ljava/lang/String;)Lt/a/a;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/ActionUpdateNameEmail;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->zendesk:Lzendesk/core/Zendesk;

    invoke-direct {v0, p1, p2, v1, v2}, Lzendesk/support/request/ActionUpdateNameEmail;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;

    move-result-object p1

    return-object p1
.end method
