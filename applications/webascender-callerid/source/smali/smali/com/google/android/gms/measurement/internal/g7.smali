.class final Lcom/google/android/gms/measurement/internal/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/b7;

.field final synthetic g:J

.field final synthetic h:Lcom/google/android/gms/measurement/internal/j7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j7;Lcom/google/android/gms/measurement/internal/b7;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g7;->h:Lcom/google/android/gms/measurement/internal/j7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g7;->f:Lcom/google/android/gms/measurement/internal/b7;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/g7;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g7;->h:Lcom/google/android/gms/measurement/internal/j7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g7;->f:Lcom/google/android/gms/measurement/internal/b7;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/g7;->g:J

    const/4 v4, 0x0

    .line 1
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/j7;->H(Lcom/google/android/gms/measurement/internal/j7;Lcom/google/android/gms/measurement/internal/b7;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g7;->h:Lcom/google/android/gms/measurement/internal/j7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/j7;->e:Lcom/google/android/gms/measurement/internal/b7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->R()Lcom/google/android/gms/measurement/internal/j8;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/j8;->W(Lcom/google/android/gms/measurement/internal/b7;)V

    return-void
.end method
