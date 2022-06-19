.class public final Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lt/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final storeProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lt/a/q;",
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
            "Lt/a/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;->storeProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lt/a/q;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;

    invoke-direct {v0, p0}, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static providesDispatcher(Lt/a/q;)Lt/a/f;
    .locals 1

    .line 1
    invoke-static {p0}, Lzendesk/support/request/RequestModule;->providesDispatcher(Lt/a/q;)Lt/a/f;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lt/a/f;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;->get()Lt/a/f;

    move-result-object v0

    return-object v0
.end method

.method public get()Lt/a/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;->storeProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/a/q;

    invoke-static {v0}, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;->providesDispatcher(Lt/a/q;)Lt/a/f;

    move-result-object v0

    return-object v0
.end method
