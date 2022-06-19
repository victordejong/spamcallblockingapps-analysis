.class final Lcom/google/android/gms/measurement/internal/e8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/d3;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/i8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/i8;Lcom/google/android/gms/measurement/internal/d3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e8;->g:Lcom/google/android/gms/measurement/internal/i8;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e8;->f:Lcom/google/android/gms/measurement/internal/d3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e8;->g:Lcom/google/android/gms/measurement/internal/i8;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e8;->g:Lcom/google/android/gms/measurement/internal/i8;

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/i8;->d(Lcom/google/android/gms/measurement/internal/i8;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e8;->g:Lcom/google/android/gms/measurement/internal/i8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i8;->c:Lcom/google/android/gms/measurement/internal/j8;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j8;->H()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e8;->g:Lcom/google/android/gms/measurement/internal/i8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i8;->c:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n3;->v()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v1

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e8;->g:Lcom/google/android/gms/measurement/internal/i8;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i8;->c:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e8;->f:Lcom/google/android/gms/measurement/internal/d3;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/j8;->s(Lcom/google/android/gms/measurement/internal/d3;)V

    .line 6
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
