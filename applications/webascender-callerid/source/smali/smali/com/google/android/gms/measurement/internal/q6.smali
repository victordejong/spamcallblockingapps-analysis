.class final Lcom/google/android/gms/measurement/internal/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/g;

.field final synthetic g:I

.field final synthetic h:J

.field final synthetic i:Z

.field final synthetic j:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/g;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q6;->j:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q6;->f:Lcom/google/android/gms/measurement/internal/g;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/q6;->g:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/q6;->h:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/q6;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q6;->j:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q6;->f:Lcom/google/android/gms/measurement/internal/g;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->W(Lcom/google/android/gms/measurement/internal/g;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q6;->j:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/q6;->f:Lcom/google/android/gms/measurement/internal/g;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/q6;->g:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/q6;->h:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/q6;->i:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/u6;->J(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/g;IJZZ)V

    return-void
.end method
