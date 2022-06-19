.class Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Lzendesk/belvedere/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/zendesk/service/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/f<",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation
.end field

.field private final requestAttachment:Lzendesk/support/request/StateRequestAttachment;

.field final synthetic this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;


# direct methods
.method constructor <init>(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Lzendesk/support/request/StateRequestAttachment;Lcom/zendesk/service/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateRequestAttachment;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/belvedere/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    .line 3
    iput-object p3, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->callback:Lcom/zendesk/service/f;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->callback:Lcom/zendesk/service/f;

    invoke-static {v0, v1, p1, v2}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->access$300(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Ljava/lang/String;Lcom/zendesk/service/a;Lcom/zendesk/service/f;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/belvedere/r;

    invoke-virtual {p0, p1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->onSuccess(Lzendesk/belvedere/r;)V

    return-void
.end method

.method public onSuccess(Lzendesk/belvedere/r;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->callback:Lcom/zendesk/service/f;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    invoke-static {p1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->access$200(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v0}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
