.class public Le/p/a/y/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# instance fields
.field public a:Z

.field public final synthetic b:Lv3/h;

.field public final synthetic c:Le/p/a/y/k/b;

.field public final synthetic d:Lv3/g;


# direct methods
.method public constructor <init>(Le/p/a/y/k/g;Lv3/h;Le/p/a/y/k/b;Lv3/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/p/a/y/k/h;->b:Lv3/h;

    iput-object p3, p0, Le/p/a/y/k/h;->c:Le/p/a/y/k/b;

    iput-object p4, p0, Le/p/a/y/k/h;->d:Lv3/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/h;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Le/p/a/y/i;->e(Lv3/b0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/p/a/y/k/h;->a:Z

    .line 3
    iget-object v0, p0, Le/p/a/y/k/h;->c:Le/p/a/y/k/b;

    invoke-interface {v0}, Le/p/a/y/k/b;->abort()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/h;->b:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Le/p/a/y/k/h;->b:Lv3/h;

    invoke-interface {v1, p1, p2, p3}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Le/p/a/y/k/h;->a:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Le/p/a/y/k/h;->a:Z

    .line 4
    iget-object p1, p0, Le/p/a/y/k/h;->d:Lv3/g;

    invoke-interface {p1}, Lv3/z;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Le/p/a/y/k/h;->d:Lv3/g;

    invoke-interface {v0}, Lv3/g;->m()Lv3/f;

    move-result-object v3

    .line 6
    iget-wide v0, p1, Lv3/f;->b:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    .line 7
    invoke-virtual/range {v2 .. v7}, Lv3/f;->k(Lv3/f;JJ)Lv3/f;

    .line 8
    iget-object p1, p0, Le/p/a/y/k/h;->d:Lv3/g;

    invoke-interface {p1}, Lv3/g;->Z0()Lv3/g;

    return-wide p2

    :catch_0
    move-exception p1

    .line 9
    iget-boolean p2, p0, Le/p/a/y/k/h;->a:Z

    if-nez p2, :cond_2

    .line 10
    iput-boolean v0, p0, Le/p/a/y/k/h;->a:Z

    .line 11
    iget-object p2, p0, Le/p/a/y/k/h;->c:Le/p/a/y/k/b;

    invoke-interface {p2}, Le/p/a/y/k/b;->abort()V

    .line 12
    :cond_2
    throw p1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/h;->b:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->i()Lv3/c0;

    move-result-object v0

    return-object v0
.end method
