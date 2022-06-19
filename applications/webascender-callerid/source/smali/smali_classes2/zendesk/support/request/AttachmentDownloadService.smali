.class Lzendesk/support/request/AttachmentDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final okHttpClient:Lm/c0;


# direct methods
.method constructor <init>(Lm/c0;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloadService;->okHttpClient:Lm/c0;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method downloadAttachment(Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lm/h0;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lm/e0$a;

    invoke-direct {v0}, Lm/e0$a;-><init>()V

    invoke-virtual {v0}, Lm/e0$a;->d()Lm/e0$a;

    invoke-virtual {v0, p1}, Lm/e0$a;->k(Ljava/lang/String;)Lm/e0$a;

    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService;->okHttpClient:Lm/c0;

    .line 3
    invoke-virtual {v0, p1}, Lm/c0;->a(Lm/e0;)Lm/f;

    move-result-object p1

    new-instance v0, Lzendesk/support/request/AttachmentDownloadService$1;

    invoke-direct {v0, p0, p2}, Lzendesk/support/request/AttachmentDownloadService$1;-><init>(Lzendesk/support/request/AttachmentDownloadService;Lcom/zendesk/service/f;)V

    .line 4
    invoke-interface {p1, v0}, Lm/f;->M(Lm/g;)V

    return-void
.end method

.method storeAttachment(Lm/h0;Lzendesk/belvedere/r;Lcom/zendesk/service/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/h0;",
            "Lzendesk/belvedere/r;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/belvedere/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;-><init>(Lm/h0;Lzendesk/belvedere/r;Lcom/zendesk/service/f;Lzendesk/support/request/AttachmentDownloadService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
