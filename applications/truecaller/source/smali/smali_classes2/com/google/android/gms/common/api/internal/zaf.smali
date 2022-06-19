.class public final Lcom/google/android/gms/common/api/internal/zaf;
.super Le/m/a/f/e/a/a/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/f/e/a/a/n0<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/zacc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zacc;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Le/m/a/f/e/a/a/n0;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->c:Lcom/google/android/gms/common/api/internal/zacc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->c:Lcom/google/android/gms/common/api/internal/zacc;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->b:[Lcom/google/android/gms/common/Feature;

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/zabl;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->c:Lcom/google/android/gms/common/api/internal/zacc;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->c:Z

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

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->c:Lcom/google/android/gms/common/api/internal/zacc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    iget-object v2, p0, Le/m/a/f/e/a/a/n0;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->a(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->c:Lcom/google/android/gms/common/api/internal/zacc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabl;->f:Ljava/util/Map;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaf;->c:Lcom/google/android/gms/common/api/internal/zacc;

    .line 8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
