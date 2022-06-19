.class Lzendesk/support/request/AttachmentDownloadService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/AttachmentDownloadService;->downloadAttachment(Ljava/lang/String;Lcom/zendesk/service/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lzendesk/support/request/AttachmentDownloadService;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/zendesk/service/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lm/f;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/zendesk/service/f;

    new-instance v0, Lcom/zendesk/service/b;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    return-void
.end method

.method public onResponse(Lm/f;Lm/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lm/g0;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/zendesk/service/f;

    invoke-virtual {p2}, Lm/g0;->a()Lm/h0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/zendesk/service/f;

    new-instance v0, Lcom/zendesk/service/b;

    invoke-virtual {p2}, Lm/g0;->z()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :goto_0
    return-void
.end method
