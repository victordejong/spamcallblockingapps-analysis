.class public final Lu3/p0/i/b$c;
.super Lu3/p0/i/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public d:J

.field public e:Z

.field public final f:Lu3/a0;

.field public final synthetic g:Lu3/p0/i/b;


# direct methods
.method public constructor <init>(Lu3/p0/i/b;Lu3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a0;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 2
    invoke-direct {p0, p1}, Lu3/p0/i/b$a;-><init>(Lu3/p0/i/b;)V

    iput-object p2, p0, Lu3/p0/i/b$c;->f:Lu3/a0;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lu3/p0/i/b$c;->d:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lu3/p0/i/b$c;->e:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lu3/p0/i/b$c;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lu3/p0/c;->h(Lv3/b0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

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
    .locals 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_e

    .line 1
    iget-boolean v2, p0, Lu3/p0/i/b$a;->b:Z

    xor-int/2addr v2, v4

    if-eqz v2, :cond_d

    .line 2
    iget-boolean v2, p0, Lu3/p0/i/b$c;->e:Z

    const-wide/16 v5, -0x1

    if-nez v2, :cond_1

    return-wide v5

    .line 3
    :cond_1
    iget-wide v7, p0, Lu3/p0/i/b$c;->d:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_2

    cmp-long v2, v7, v5

    if-nez v2, :cond_9

    :cond_2
    cmp-long v2, v7, v5

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 5
    iget-object v2, v2, Lu3/p0/i/b;->f:Lv3/h;

    .line 6
    invoke-interface {v2}, Lv3/h;->o1()Ljava/lang/String;

    .line 7
    :cond_3
    :try_start_0
    iget-object v2, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 8
    iget-object v2, v2, Lu3/p0/i/b;->f:Lv3/h;

    .line 9
    invoke-interface {v2}, Lv3/h;->O0()J

    move-result-wide v7

    iput-wide v7, p0, Lu3/p0/i/b$c;->d:J

    .line 10
    iget-object v2, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 11
    iget-object v2, v2, Lu3/p0/i/b;->f:Lv3/h;

    .line 12
    invoke-interface {v2}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-wide v7, p0, Lu3/p0/i/b$c;->d:J

    cmp-long v7, v7, v0

    if-ltz v7, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    const-string v4, ";"

    const/4 v7, 0x2

    invoke-static {v2, v4, v3, v7}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_b

    .line 14
    :cond_5
    iget-wide v7, p0, Lu3/p0/i/b$c;->d:J

    cmp-long v0, v7, v0

    if-nez v0, :cond_8

    .line 15
    iput-boolean v3, p0, Lu3/p0/i/b$c;->e:Z

    .line 16
    iget-object v0, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 17
    iget-object v1, v0, Lu3/p0/i/b;->b:Lu3/p0/i/a;

    .line 18
    invoke-virtual {v1}, Lu3/p0/i/a;->a()Lu3/z;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lu3/p0/i/b;->c:Lu3/z;

    .line 20
    iget-object v0, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 21
    iget-object v1, v0, Lu3/p0/i/b;->d:Lu3/e0;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 22
    iget-object v1, v1, Lu3/e0;->j:Lu3/q;

    .line 23
    iget-object v3, p0, Lu3/p0/i/b$c;->f:Lu3/a0;

    .line 24
    iget-object v0, v0, Lu3/p0/i/b;->c:Lu3/z;

    if-eqz v0, :cond_6

    .line 25
    invoke-static {v1, v3, v0}, Lu3/p0/h/e;->d(Lu3/q;Lu3/a0;Lu3/z;)V

    .line 26
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    goto :goto_2

    .line 27
    :cond_6
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2

    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v2

    .line 28
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lu3/p0/i/b$c;->e:Z

    if-nez v0, :cond_9

    return-wide v5

    .line 29
    :cond_9
    iget-wide v0, p0, Lu3/p0/i/b$c;->d:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lu3/p0/i/b$a;->d2(Lv3/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_a

    .line 30
    iget-wide v0, p0, Lu3/p0/i/b$c;->d:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lu3/p0/i/b$c;->d:J

    return-wide p1

    .line 31
    :cond_a
    iget-object p1, p0, Lu3/p0/i/b$c;->g:Lu3/p0/i/b;

    .line 32
    iget-object p1, p1, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 33
    invoke-virtual {p1}, Lu3/p0/g/i;->l()V

    .line 34
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lu3/p0/i/b$a;->b()V

    .line 36
    throw p1

    .line 37
    :cond_b
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected chunk size and optional extensions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " but was \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v0, p0, Lu3/p0/i/b$c;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_c
    new-instance p1, Ls1/p;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string p1, "byteCount < 0: "

    .line 43
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
