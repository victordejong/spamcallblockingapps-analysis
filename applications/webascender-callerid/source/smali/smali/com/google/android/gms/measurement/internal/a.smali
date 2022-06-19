.class final Lcom/google/android/gms/measurement/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Lcom/google/android/gms/measurement/internal/d2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/d2;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->h:Lcom/google/android/gms/measurement/internal/d2;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a;->f:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/a;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->h:Lcom/google/android/gms/measurement/internal/d2;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->g:J

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/d2;->l(Lcom/google/android/gms/measurement/internal/d2;Ljava/lang/String;J)V

    return-void
.end method
