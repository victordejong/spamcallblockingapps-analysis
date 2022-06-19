.class public abstract Le/m/a/f/l/a/w;
.super Le/m/a/f/l/a/m;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/m;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget v0, p1, Lcom/google/android/gms/measurement/internal/zzfr;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/measurement/internal/zzfr;->E:I

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/f/l/a/w;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/f/l/a/w;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/m/a/f/l/a/w;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/m/a/f/l/a/w;->b:Z

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract g()Z
.end method
