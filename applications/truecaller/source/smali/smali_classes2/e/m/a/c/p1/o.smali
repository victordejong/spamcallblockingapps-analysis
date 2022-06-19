.class public final Le/m/a/c/p1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/d;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[Le/m/a/c/p1/c;

.field public d:I

.field public e:I

.field public f:I

.field public g:[Le/m/a/c/p1/c;


# direct methods
.method public constructor <init>(ZI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    invoke-static {v2}, Ln3/g0/y;->r(Z)V

    .line 3
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 4
    iput-boolean p1, p0, Le/m/a/c/p1/o;->a:Z

    .line 5
    iput p2, p0, Le/m/a/c/p1/o;->b:I

    .line 6
    iput v1, p0, Le/m/a/c/p1/o;->f:I

    const/16 p1, 0x64

    new-array p1, p1, [Le/m/a/c/p1/c;

    .line 7
    iput-object p1, p0, Le/m/a/c/p1/o;->g:[Le/m/a/c/p1/c;

    new-array p1, v0, [Le/m/a/c/p1/c;

    .line 8
    iput-object p1, p0, Le/m/a/c/p1/o;->c:[Le/m/a/c/p1/c;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([Le/m/a/c/p1/c;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Le/m/a/c/p1/o;->f:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Le/m/a/c/p1/o;->g:[Le/m/a/c/p1/c;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 2
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/a/c/p1/c;

    iput-object v0, p0, Le/m/a/c/p1/o;->g:[Le/m/a/c/p1/c;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Le/m/a/c/p1/o;->g:[Le/m/a/c/p1/c;

    iget v4, p0, Le/m/a/c/p1/o;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/m/a/c/p1/o;->f:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Le/m/a/c/p1/o;->e:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Le/m/a/c/p1/o;->e:I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Le/m/a/c/p1/o;->d:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Le/m/a/c/p1/o;->d:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/m/a/c/p1/o;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Le/m/a/c/p1/o;->d:I

    iget v1, p0, Le/m/a/c/p1/o;->b:I

    invoke-static {v0, v1}, Le/m/a/c/q1/d0;->d(II)I

    move-result v0

    .line 2
    iget v1, p0, Le/m/a/c/p1/o;->e:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v1, p0, Le/m/a/c/p1/o;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Le/m/a/c/p1/o;->g:[Le/m/a/c/p1/c;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 6
    iput v0, p0, Le/m/a/c/p1/o;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
