.class final Lcom/google/android/gms/measurement/internal/f7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:J

.field final synthetic g:Lcom/google/android/gms/measurement/internal/j7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j7;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f7;->g:Lcom/google/android/gms/measurement/internal/j7;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/f7;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f7;->g:Lcom/google/android/gms/measurement/internal/j7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->g()Lcom/google/android/gms/measurement/internal/d2;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/f7;->f:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d2;->k(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f7;->g:Lcom/google/android/gms/measurement/internal/j7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/b7;

    return-void
.end method
