.class public final Lv3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# instance fields
.field public a:I

.field public b:Z

.field public final c:Lv3/h;

.field public final d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Lv3/b0;Ljava/util/zip/Inflater;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inflater"

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$buffer"

    .line 1
    invoke-static {p1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lv3/v;

    invoke-direct {v2, p1}, Lv3/v;-><init>(Lv3/b0;)V

    .line 3
    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lv3/p;->c:Lv3/h;

    iput-object p2, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lv3/h;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/p;->c:Lv3/h;

    iput-object p2, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lv3/p;->c:Lv3/h;

    invoke-interface {v0}, Lv3/h;->N1()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lv3/p;->c:Lv3/h;

    invoke-interface {v0}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object v0

    iget-object v0, v0, Lv3/f;->a:Lv3/w;

    if-eqz v0, :cond_2

    .line 4
    iget v2, v0, Lv3/w;->c:I

    iget v3, v0, Lv3/w;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Lv3/p;->a:I

    .line 5
    iget-object v4, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    iget-object v0, v0, Lv3/w;->a:[B

    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    .line 6
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv3/p;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lv3/p;->b:Z

    .line 4
    iget-object v0, p0, Lv3/p;->c:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method

.method public d2(Lv3/f;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_a

    .line 2
    iget-boolean v5, p0, Lv3/p;->b:Z

    xor-int/2addr v5, v4

    if-eqz v5, :cond_9

    if-nez v3, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1, v4}, Lv3/f;->n0(I)Lv3/w;

    move-result-object v3

    .line 4
    iget v4, v3, Lv3/w;->c:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    .line 5
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 6
    invoke-virtual {p0}, Lv3/p;->b()Z

    .line 7
    iget-object v5, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    iget-object v6, v3, Lv3/w;->a:[B

    iget v7, v3, Lv3/w;->c:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    .line 8
    iget v5, p0, Lv3/p;->a:I

    if-nez v5, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    iget-object v6, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v6

    sub-int/2addr v5, v6

    .line 10
    iget v6, p0, Lv3/p;->a:I

    sub-int/2addr v6, v5

    iput v6, p0, Lv3/p;->a:I

    .line 11
    iget-object v6, p0, Lv3/p;->c:Lv3/h;

    int-to-long v7, v5

    invoke-interface {v6, v7, v8}, Lv3/h;->skip(J)V

    :goto_2
    if-lez v4, :cond_3

    .line 12
    iget v5, v3, Lv3/w;->c:I

    add-int/2addr v5, v4

    iput v5, v3, Lv3/w;->c:I

    .line 13
    iget-wide v5, p1, Lv3/f;->b:J

    int-to-long v3, v4

    add-long/2addr v5, v3

    .line 14
    iput-wide v5, p1, Lv3/f;->b:J

    goto :goto_4

    .line 15
    :cond_3
    iget v4, v3, Lv3/w;->b:I

    iget v5, v3, Lv3/w;->c:I

    if-ne v4, v5, :cond_4

    .line 16
    invoke-virtual {v3}, Lv3/w;->a()Lv3/w;

    move-result-object v4

    iput-object v4, p1, Lv3/f;->a:Lv3/w;

    .line 17
    invoke-static {v3}, Lv3/x;->a(Lv3/w;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    move-wide v3, v1

    :goto_4
    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    return-wide v3

    .line 18
    :cond_5
    iget-object v1, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lv3/p;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    iget-object v1, p0, Lv3/p;->c:Lv3/h;

    invoke-interface {v1}, Lv3/h;->N1()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 21
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p1, "byteCount < 0: "

    .line 22
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/p;->c:Lv3/h;

    invoke-interface {v0}, Lv3/b0;->i()Lv3/c0;

    move-result-object v0

    return-object v0
.end method
