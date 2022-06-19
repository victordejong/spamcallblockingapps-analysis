.class public final Lcom/google/android/gms/common/api/internal/zah;
.super Le/m/a/f/e/a/a/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/f/e/a/a/n0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Le/m/a/f/e/a/a/n0;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zah;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zah;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zacc;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->b:[Lcom/google/android/gms/common/Feature;

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/zabl;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zah;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zacc;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 4
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/zabl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zah;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacc;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacc;->b:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    iget-object v2, p0, Le/m/a/f/e/a/a/n0;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;->a(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->a()V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Le/m/a/f/e/a/a/n0;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    return-void
.end method
