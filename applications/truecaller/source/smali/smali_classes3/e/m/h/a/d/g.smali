.class public Le/m/h/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/h/a/d/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/m/d/m/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Le/m/h/a/d/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    .line 3
    new-instance v1, Le/m/d/m/q$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/m/d/m/q$b;-><init>(Ljava/lang/Class;Le/m/d/m/q$a;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Le/m/d/m/q$b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-static {v2}, Le/m/d/m/q;->a(Ljava/lang/String;)Le/m/d/m/s;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Le/m/d/m/b0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Le/m/d/m/t;

    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Le/m/d/m/o;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 9
    invoke-static {p1, v4, v6}, Le/m/d/m/o;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Le/m/d/m/o;

    move-result-object p1

    aput-object p1, v3, v5

    const-class p1, Le/m/h/a/d/g;

    new-array v4, v5, [Ljava/lang/Class;

    .line 10
    invoke-static {p0, p1, v4}, Le/m/d/m/o;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Le/m/d/m/o;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/d/m/s;

    .line 13
    new-instance v6, Le/m/d/m/e;

    invoke-direct {v6, v5}, Le/m/d/m/e;-><init>(Le/m/d/m/s;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Le/m/d/m/t;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15
    iput-object v1, p0, Le/m/h/a/d/g;->a:Le/m/d/m/t;

    .line 16
    invoke-virtual {v1, v4}, Le/m/d/m/t;->g(Z)V

    return-void
.end method

.method public static c()Le/m/h/a/d/g;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Le/m/h/a/d/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/h/a/d/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Le/m/h/a/d/g;
    .locals 2

    .line 1
    new-instance v0, Le/m/h/a/d/g;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p0, v1

    .line 3
    :cond_0
    invoke-direct {v0, p0}, Le/m/h/a/d/g;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object p0, Le/m/h/a/d/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/h/a/d/g;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "MlKitContext is already initialized"

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/h/a/d/g;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->m(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/m/h/a/d/g;->a:Le/m/d/m/t;

    invoke-virtual {v0, p1}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Le/m/h/a/d/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
