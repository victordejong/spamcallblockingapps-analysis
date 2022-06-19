.class public final Lcom/google/android/libraries/places/internal/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzco;

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "*>;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzco;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcr;->zza:Lcom/google/android/libraries/places/internal/zzco;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcr;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationToken;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    move-object p2, v0

    .line 9
    :goto_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/libraries/places/internal/zzcr;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z

    .line 10
    new-instance p3, Lcom/google/android/libraries/places/internal/zzct;

    invoke-direct {p3, p0, p2}, Lcom/google/android/libraries/places/internal/zzct;-><init>(Lcom/google/android/libraries/places/internal/zzcr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 11
    iget-object p1, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 12
    new-instance p3, Lcom/google/android/libraries/places/internal/zzcs;

    invoke-direct {p3, p0, p2}, Lcom/google/android/libraries/places/internal/zzcs;-><init>(Lcom/google/android/libraries/places/internal/zzcr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, p3}, Le/m/a/f/q/b0;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 13
    iget-object p1, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzcr;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "*>;)Z"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcr;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/HandlerThread;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TT;>;J",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcr;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "timeoutHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcr;->zzb:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/zzcq;

    invoke-direct {v0, p1, p4}, Lcom/google/android/libraries/places/internal/zzcq;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method
