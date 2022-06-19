.class public Le/p/a/y/k/d$d;
.super Le/p/a/y/k/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public d:J

.field public e:Z

.field public final f:Le/p/a/y/k/g;

.field public final synthetic g:Le/p/a/y/k/d;


# direct methods
.method public constructor <init>(Le/p/a/y/k/d;Le/p/a/y/k/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d$d;->g:Le/p/a/y/k/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/p/a/y/k/d$b;-><init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/p/a/y/k/d$d;->d:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/p/a/y/k/d$d;->e:Z

    .line 4
    iput-object p2, p0, Le/p/a/y/k/d$d;->f:Le/p/a/y/k/g;

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
    iget-boolean v0, p0, Le/p/a/y/k/d$b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/p/a/y/k/d$d;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Le/p/a/y/i;->e(Lv3/b0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->d()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/p/a/y/k/d$b;->b:Z

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9

    .line 1
    iget-boolean v2, p0, Le/p/a/y/k/d$b;->b:Z

    if-nez v2, :cond_8

    .line 2
    iget-boolean v2, p0, Le/p/a/y/k/d$d;->e:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 3
    :cond_0
    iget-wide v5, p0, Le/p/a/y/k/d$d;->d:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1

    cmp-long v2, v5, v3

    if-nez v2, :cond_5

    :cond_1
    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Le/p/a/y/k/d$d;->g:Le/p/a/y/k/d;

    .line 5
    iget-object v2, v2, Le/p/a/y/k/d;->b:Lv3/h;

    .line 6
    invoke-interface {v2}, Lv3/h;->o1()Ljava/lang/String;

    .line 7
    :cond_2
    :try_start_0
    iget-object v2, p0, Le/p/a/y/k/d$d;->g:Le/p/a/y/k/d;

    .line 8
    iget-object v2, v2, Le/p/a/y/k/d;->b:Lv3/h;

    .line 9
    invoke-interface {v2}, Lv3/h;->O0()J

    move-result-wide v5

    iput-wide v5, p0, Le/p/a/y/k/d$d;->d:J

    .line 10
    iget-object v2, p0, Le/p/a/y/k/d$d;->g:Le/p/a/y/k/d;

    .line 11
    iget-object v2, v2, Le/p/a/y/k/d;->b:Lv3/h;

    .line 12
    invoke-interface {v2}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-wide v5, p0, Le/p/a/y/k/d$d;->d:J

    cmp-long v5, v5, v0

    if-ltz v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_7

    .line 14
    :cond_3
    iget-wide v5, p0, Le/p/a/y/k/d$d;->d:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Le/p/a/y/k/d$d;->e:Z

    .line 16
    iget-object v0, p0, Le/p/a/y/k/d$d;->f:Le/p/a/y/k/g;

    iget-object v1, p0, Le/p/a/y/k/d$d;->g:Le/p/a/y/k/d;

    invoke-virtual {v1}, Le/p/a/y/k/d;->j()Le/p/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/p/a/y/k/g;->f(Le/p/a/m;)V

    .line 17
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->b()V

    .line 18
    :cond_4
    iget-boolean v0, p0, Le/p/a/y/k/d$d;->e:Z

    if-nez v0, :cond_5

    return-wide v3

    .line 19
    :cond_5
    iget-object v0, p0, Le/p/a/y/k/d$d;->g:Le/p/a/y/k/d;

    .line 20
    iget-object v0, v0, Le/p/a/y/k/d;->b:Lv3/h;

    .line 21
    iget-wide v1, p0, Le/p/a/y/k/d$d;->d:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_6

    .line 22
    iget-wide v0, p0, Le/p/a/y/k/d$d;->d:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Le/p/a/y/k/d$d;->d:J

    return-wide p1

    .line 23
    :cond_6
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->d()V

    .line 24
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_7
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Le/p/a/y/k/d$d;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
