.class public Le/p/a/y/k/d$f;
.super Le/p/a/y/k/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public d:J

.field public final synthetic e:Le/p/a/y/k/d;


# direct methods
.method public constructor <init>(Le/p/a/y/k/d;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d$f;->e:Le/p/a/y/k/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/p/a/y/k/d$b;-><init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V

    .line 2
    iput-wide p2, p0, Le/p/a/y/k/d$f;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
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
    iget-wide v0, p0, Le/p/a/y/k/d$f;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

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

    if-ltz v2, :cond_4

    .line 1
    iget-boolean v2, p0, Le/p/a/y/k/d$b;->b:Z

    if-nez v2, :cond_3

    .line 2
    iget-wide v2, p0, Le/p/a/y/k/d$f;->d:J

    cmp-long v4, v2, v0

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    return-wide v5

    .line 3
    :cond_0
    iget-object v4, p0, Le/p/a/y/k/d$f;->e:Le/p/a/y/k/d;

    .line 4
    iget-object v4, v4, Le/p/a/y/k/d;->b:Lv3/h;

    .line 5
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v4, p1, p2, p3}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_2

    .line 6
    iget-wide v2, p0, Le/p/a/y/k/d$f;->d:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Le/p/a/y/k/d$f;->d:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    .line 7
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->b()V

    :cond_1
    return-wide p1

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/p/a/y/k/d$b;->d()V

    .line 9
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {v0, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
