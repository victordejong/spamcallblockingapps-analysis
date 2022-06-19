.class final Lcom/google/android/gms/internal/firebase-auth-api/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/internal/firebase-auth-api/jl;

.field final synthetic g:Lcom/google/android/gms/internal/firebase-auth-api/il;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Lcom/google/android/gms/internal/firebase-auth-api/jl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hl;->g:Lcom/google/android/gms/internal/firebase-auth-api/il;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/hl;->f:Lcom/google/android/gms/internal/firebase-auth-api/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/hl;->g:Lcom/google/android/gms/internal/firebase-auth-api/il;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hl;->g:Lcom/google/android/gms/internal/firebase-auth-api/il;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hl;->f:Lcom/google/android/gms/internal/firebase-auth-api/jl;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/hl;->g:Lcom/google/android/gms/internal/firebase-auth-api/il;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    const/4 v3, 0x0

    .line 3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/s$b;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/jl;->a(Lcom/google/firebase/auth/s$b;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
