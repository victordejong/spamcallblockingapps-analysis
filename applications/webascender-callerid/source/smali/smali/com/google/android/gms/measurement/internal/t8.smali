.class final Lcom/google/android/gms/measurement/internal/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final f:J

.field final g:J

.field final synthetic h:Lcom/google/android/gms/measurement/internal/u8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u8;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t8;->h:Lcom/google/android/gms/measurement/internal/u8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/t8;->f:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/t8;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t8;->h:Lcom/google/android/gms/measurement/internal/u8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/u8;->b:Lcom/google/android/gms/measurement/internal/y8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/s8;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/s8;-><init>(Lcom/google/android/gms/measurement/internal/t8;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/o4;->r(Ljava/lang/Runnable;)V

    return-void
.end method
