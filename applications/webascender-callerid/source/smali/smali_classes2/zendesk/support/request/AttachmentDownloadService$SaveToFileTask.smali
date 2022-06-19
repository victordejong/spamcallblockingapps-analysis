.class Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToFileTask"
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

.field private final destFile:Lzendesk/belvedere/r;

.field private final responseBody:Lm/h0;


# direct methods
.method private constructor <init>(Lm/h0;Lzendesk/belvedere/r;Lcom/zendesk/service/f;)V
    .locals 0
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lm/h0;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lzendesk/belvedere/r;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->callback:Lcom/zendesk/service/f;

    return-void
.end method

.method synthetic constructor <init>(Lm/h0;Lzendesk/belvedere/r;Lcom/zendesk/service/f;Lzendesk/support/request/AttachmentDownloadService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;-><init>(Lm/h0;Lzendesk/belvedere/r;Lcom/zendesk/service/f;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lzendesk/belvedere/r;

    invoke-virtual {v1}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ln/r;->f(Ljava/io/File;)Ln/b0;

    move-result-object v1

    invoke-static {v1}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lm/h0;

    invoke-virtual {v2}, Lm/h0;->source()Ln/h;

    move-result-object v2

    invoke-interface {v1, v2}, Ln/g;->C0(Ln/d0;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lm/h0;

    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    :try_start_2
    const-string v2, "RequestActivity"

    const-string v3, "Unable to save attachment to disk. Error: \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v2, Lcom/zendesk/service/b;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 8
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lm/h0;

    invoke-static {v0}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 9
    :goto_1
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->callback:Lcom/zendesk/service/f;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lzendesk/belvedere/r;

    invoke-virtual {v1, v0}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {v1, v0}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 12
    :goto_3
    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lm/h0;

    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
