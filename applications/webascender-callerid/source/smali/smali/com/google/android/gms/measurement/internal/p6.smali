.class final Lcom/google/android/gms/measurement/internal/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/g;

.field final synthetic g:J

.field final synthetic h:I

.field final synthetic i:J

.field final synthetic j:Z

.field final synthetic k:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/g;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p6;->k:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/g;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/p6;->g:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/p6;->h:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/p6;->i:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/p6;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p6;->k:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/g;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->W(Lcom/google/android/gms/measurement/internal/g;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p6;->k:Lcom/google/android/gms/measurement/internal/u6;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/p6;->g:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/u6;->t(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/p6;->k:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/p6;->f:Lcom/google/android/gms/measurement/internal/g;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/p6;->h:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/p6;->i:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/p6;->j:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/u6;->J(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/g;IJZZ)V

    return-void
.end method
