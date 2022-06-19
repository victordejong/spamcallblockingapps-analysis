.class public final Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/AttachmentDownloadService;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final okHttpClientProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lm/c0;",
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
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->okHttpClientProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->executorProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lm/c0;",
            ">;",
            "Lj/a/a<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesAttachmentToDiskService(Lm/c0;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/AttachmentDownloadService;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzendesk/support/request/RequestModule;->providesAttachmentToDiskService(Lm/c0;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/AttachmentDownloadService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/request/AttachmentDownloadService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->get()Lzendesk/support/request/AttachmentDownloadService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/AttachmentDownloadService;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->okHttpClientProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/c0;

    iget-object v1, p0, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->executorProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->providesAttachmentToDiskService(Lm/c0;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/request/AttachmentDownloadService;

    move-result-object v0

    return-object v0
.end method
