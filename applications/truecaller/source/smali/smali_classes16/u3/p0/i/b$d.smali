.class public final Lu3/p0/i/b$d;
.super Lu3/p0/i/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public d:J

.field public final synthetic e:Lu3/p0/i/b;


# direct methods
.method public constructor <init>(Lu3/p0/i/b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/i/b$d;->e:Lu3/p0/i/b;

    .line 2
    invoke-direct {p0, p1}, Lu3/p0/i/b$a;-><init>(Lu3/p0/i/b;)V

    iput-wide p2, p0, Lu3/p0/i/b$d;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lu3/p0/i/b$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lu3/p0/c;->h(Lv3/b0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lu3/p0/i/b$d;->e:Lu3/p0/i/b;

    .line 4
    iget-object v0, v0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 5
    invoke-virtual {v0}, Lu3/p0/g/i;->l()V

    .line 6
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lu3/p0/i/b$a;->b:Z

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 1
    iget-boolean v2, p0, Lu3/p0/i/b$a;->b:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 2
    iget-wide v2, p0, Lu3/p0/i/b$d;->d:J

    cmp-long v4, v2, v0

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1

    return-wide v5

    .line 3
    :cond_1
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lu3/p0/i/b$a;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_3

    .line 4
    iget-wide v2, p0, Lu3/p0/i/b$d;->d:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lu3/p0/i/b$d;->d:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_2

    .line 5
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    :cond_2
    return-wide p1

    .line 6
    :cond_3
    iget-object p1, p0, Lu3/p0/i/b$d;->e:Lu3/p0/i/b;

    .line 7
    iget-object p1, p1, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 8
    invoke-virtual {p1}, Lu3/p0/g/i;->l()V

    .line 9
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    .line 11
    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "byteCount < 0: "

    .line 13
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
