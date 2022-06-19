.class public final Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;",
        ">;"
    }
.end annotation


# instance fields
.field private final attachmentToDiskServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/AttachmentDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private final belvedereProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/belvedere/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/belvedere/a;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/AttachmentDownloadService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->belvedereProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->attachmentToDiskServiceProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/belvedere/a;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/AttachmentDownloadService;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesAttachmentDownloader(Lzendesk/belvedere/a;Ljava/lang/Object;)Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/AttachmentDownloadService;

    invoke-static {p0, p1}, Lzendesk/support/request/RequestModule;->providesAttachmentDownloader(Lzendesk/belvedere/a;Lzendesk/support/request/AttachmentDownloadService;)Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->get()Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->belvedereProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/belvedere/a;

    iget-object v1, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->attachmentToDiskServiceProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->providesAttachmentDownloader(Lzendesk/belvedere/a;Ljava/lang/Object;)Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    move-result-object v0

    return-object v0
.end method
