.class public final Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/CellFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionFactoryProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/ActionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deepLinkHelperProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lt/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/request/RequestModule;

.field private final picassoProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/i/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/request/RequestModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/RequestModule;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/i/a/d;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/ActionFactory;",
            ">;",
            "Lj/a/a<",
            "Lt/a/f;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkHelper;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->module:Lzendesk/support/request/RequestModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->contextProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->picassoProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->actionFactoryProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->dispatcherProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->deepLinkHelperProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/request/RequestModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/RequestModule;",
            "Lj/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lj/a/a<",
            "Lg/i/a/d;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/request/ActionFactory;",
            ">;",
            "Lj/a/a<",
            "Lt/a/f;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskDeepLinkHelper;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;"
        }
    .end annotation

    .line 1
    new-instance v7, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;-><init>(Lzendesk/support/request/RequestModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v7
.end method

.method public static providesMessageFactory(Lzendesk/support/request/RequestModule;Landroid/content/Context;Lg/i/a/d;Ljava/lang/Object;Lt/a/f;Lzendesk/support/ZendeskDeepLinkHelper;)Lzendesk/support/request/CellFactory;
    .locals 6

    .line 1
    move-object v3, p3

    check-cast v3, Lzendesk/support/request/ActionFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzendesk/support/request/RequestModule;->providesMessageFactory(Landroid/content/Context;Lg/i/a/d;Lzendesk/support/request/ActionFactory;Lt/a/f;Lzendesk/support/ZendeskDeepLinkHelper;)Lzendesk/support/request/CellFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/support/request/CellFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->get()Lzendesk/support/request/CellFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/CellFactory;
    .locals 6

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->module:Lzendesk/support/request/RequestModule;

    iget-object v1, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->contextProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->picassoProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/i/a/d;

    iget-object v3, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->actionFactoryProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->dispatcherProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/a/f;

    iget-object v5, p0, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->deepLinkHelperProvider:Lj/a/a;

    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/support/ZendeskDeepLinkHelper;

    invoke-static/range {v0 .. v5}, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->providesMessageFactory(Lzendesk/support/request/RequestModule;Landroid/content/Context;Lg/i/a/d;Ljava/lang/Object;Lt/a/f;Lzendesk/support/ZendeskDeepLinkHelper;)Lzendesk/support/request/CellFactory;

    move-result-object v0

    return-object v0
.end method
