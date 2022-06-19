.class public final Lzendesk/support/requestlist/RequestListModule_ModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/requestlist/RequestListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final blipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private final requestInfoDataSourceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->requestInfoDataSourceProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->memoryCacheProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->blipsProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->settingsProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_ModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/MemoryCache;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;)",
            "Lzendesk/support/requestlist/RequestListModule_ModelFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static model(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lzendesk/support/requestlist/RequestListModule;->model(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/requestlist/RequestListModel;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->get()Lzendesk/support/requestlist/RequestListModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/requestlist/RequestListModel;
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->requestInfoDataSourceProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->memoryCacheProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/MemoryCache;

    iget-object v2, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->blipsProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/SupportBlipsProvider;

    iget-object v3, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->settingsProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/SupportSettingsProvider;

    invoke-static {v0, v1, v2, v3}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->model(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;

    move-result-object v0

    return-object v0
.end method
