.class public final Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/UploadService;",
        ">;"
    }
.end annotation


# instance fields
.field private final restServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->restServiceProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;)Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)",
            "Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;

    invoke-direct {v0, p0}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;
    .locals 1

    .line 1
    invoke-static {p0}, Lzendesk/support/ServiceModule;->providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/UploadService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->get()Lzendesk/support/UploadService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/UploadService;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->restServiceProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/RestServiceProvider;

    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;

    move-result-object v0

    return-object v0
.end method
