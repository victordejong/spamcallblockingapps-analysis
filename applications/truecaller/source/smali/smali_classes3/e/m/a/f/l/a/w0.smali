.class public abstract Le/m/a/f/l/a/w0;
.super Le/m/a/f/l/a/v0;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/v0;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget v0, p1, Lcom/google/android/gms/measurement/internal/zzfr;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/measurement/internal/zzfr;->E:I

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f()Z
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/w0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/f/l/a/w0;->b:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/m/a/f/l/a/w0;->b:Z

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/f/l/a/w0;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/f/l/a/w0;->e()V

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/m/a/f/l/a/w0;->b:Z

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Le/m/a/f/l/a/w0;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
