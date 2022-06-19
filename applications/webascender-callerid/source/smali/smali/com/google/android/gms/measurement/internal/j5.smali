.class final Lcom/google/android/gms/measurement/internal/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:J

.field final synthetic j:Lcom/google/android/gms/measurement/internal/k5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->j:Lcom/google/android/gms/measurement/internal/k5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/j5;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/j5;->h:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/j5;->i:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->j:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->w()Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->Q()Lcom/google/android/gms/measurement/internal/j7;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->g:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/j7;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b7;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/b7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j5;->h:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/j5;->i:J

    .line 4
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/b7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->j:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/k5;->I2(Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/m9;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m9;->w()Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->Q()Lcom/google/android/gms/measurement/internal/j7;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j5;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/j7;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b7;)V

    return-void
.end method
