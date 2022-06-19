.class public final Lzendesk/support/request/RequestModule_ProvidesStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lt/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field private final asyncMiddlewareProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/request/AsyncMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field private final reducersProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;>;"
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
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;>;",
            "Lj/a/a<",
            "Lzendesk/support/request/AsyncMiddleware;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->reducersProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->asyncMiddlewareProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesStoreFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;>;",
            "Lj/a/a<",
            "Lzendesk/support/request/AsyncMiddleware;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesStoreFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static providesStore(Ljava/util/List;Ljava/lang/Object;)Lt/a/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lt/a/q;"
        }
    .end annotation

    .line 1
    check-cast p1, Lzendesk/support/request/AsyncMiddleware;

    invoke-static {p0, p1}, Lzendesk/support/request/RequestModule;->providesStore(Ljava/util/List;Lzendesk/support/request/AsyncMiddleware;)Lt/a/q;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lt/a/q;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->get()Lt/a/q;

    move-result-object v0

    return-object v0
.end method

.method public get()Lt/a/q;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->reducersProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->asyncMiddlewareProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->providesStore(Ljava/util/List;Ljava/lang/Object;)Lt/a/q;

    move-result-object v0

    return-object v0
.end method
