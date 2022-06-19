.class final Li/a/d/e/c;
.super Li/a/d/e/a;
.source "SourceFile"


# instance fields
.field private volatile transient e:I

.field private volatile transient f:Z


# direct methods
.method constructor <init>(Li/a/a/c/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/a/d/e/a;-><init>(Li/a/a/c/j;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li/a/d/e/c;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Li/a/d/e/c;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1}, Li/a/d/e/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/a/d/e/c;->f:Z

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Li/a/d/e/c;->f:Z

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Li/a/d/e/a;->hashCode()I

    move-result v0

    iput v0, p0, Li/a/d/e/c;->e:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Li/a/d/e/c;->f:Z

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Li/a/d/e/c;->e:I

    return v0
.end method
