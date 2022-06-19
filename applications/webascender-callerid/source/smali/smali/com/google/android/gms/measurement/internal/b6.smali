.class final Lcom/google/android/gms/measurement/internal/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/Object;

.field final synthetic i:J

.field final synthetic j:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->j:Lcom/google/android/gms/measurement/internal/u6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b6;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b6;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/b6;->h:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/b6;->i:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->j:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b6;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b6;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b6;->h:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/b6;->i:J

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/u6;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
