.class final Lcom/google/android/gms/measurement/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/n5;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m;Lcom/google/android/gms/measurement/internal/n5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l;->g:Lcom/google/android/gms/measurement/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n5;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/n5;->f()Lcom/google/android/gms/measurement/internal/ka;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/ka;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n5;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/n5;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/o4;->r(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->g:Lcom/google/android/gms/measurement/internal/m;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l;->g:Lcom/google/android/gms/measurement/internal/m;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->e(Lcom/google/android/gms/measurement/internal/m;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->g:Lcom/google/android/gms/measurement/internal/m;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->a()V

    :cond_1
    return-void
.end method
