.class public final Ln/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d0;


# instance fields
.field private f:I

.field private g:Z

.field private final h:Ln/h;

.field private final i:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ln/h;Ljava/util/zip/Inflater;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/p;->h:Ln/h;

    iput-object p2, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    iget v0, p0, Ln/p;->f:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget v1, p0, Ln/p;->f:I

    sub-int/2addr v1, v0

    iput v1, p0, Ln/p;->f:I

    .line 4
    iget-object v1, p0, Ln/p;->h:Ln/h;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ln/h;->H0(J)V

    return-void
.end method


# virtual methods
.method public final a(Ln/f;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    .line 1
    iget-boolean v4, p0, Ln/p;->g:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_4

    if-nez v3, :cond_1

    return-wide v1

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Ln/f;->y0(I)Ln/y;

    move-result-object v0

    .line 3
    iget v3, v0, Ln/y;->c:I

    rsub-int v3, v3, 0x2000

    int-to-long v3, v3

    .line 4
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 5
    invoke-virtual {p0}, Ln/p;->b()Z

    .line 6
    iget-object p2, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    iget-object v3, v0, Ln/y;->a:[B

    iget v4, v0, Ln/y;->c:I

    invoke-virtual {p2, v3, v4, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p2

    .line 7
    invoke-direct {p0}, Ln/p;->c()V

    if-lez p2, :cond_2

    .line 8
    iget p3, v0, Ln/y;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Ln/y;->c:I

    .line 9
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ln/f;->l0(J)V

    return-wide p2

    .line 10
    :cond_2
    iget p2, v0, Ln/y;->b:I

    iget p3, v0, Ln/y;->c:I

    if-ne p2, p3, :cond_3

    .line 11
    invoke-virtual {v0}, Ln/y;->b()Ln/y;

    move-result-object p2

    iput-object p2, p1, Ln/f;->f:Ln/y;

    .line 12
    invoke-static {v0}, Ln/z;->b(Ln/y;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-wide v1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ln/p;->h:Ln/h;

    invoke-interface {v0}, Ln/h;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Ln/p;->h:Ln/h;

    invoke-interface {v0}, Ln/h;->m()Ln/f;

    move-result-object v0

    iget-object v0, v0, Ln/f;->f:Ln/y;

    if-eqz v0, :cond_2

    .line 4
    iget v2, v0, Ln/y;->c:I

    iget v3, v0, Ln/y;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Ln/p;->f:I

    .line 5
    iget-object v4, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    iget-object v0, v0, Ln/y;->a:[B

    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

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
    iget-boolean v0, p0, Ln/p;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln/p;->g:Z

    .line 4
    iget-object v0, p0, Ln/p;->h:Ln/h;

    invoke-interface {v0}, Ln/d0;->close()V

    return-void
.end method

.method public read(Ln/f;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Ln/p;->a(Ln/f;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln/p;->i:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Ln/p;->h:Ln/h;

    invoke-interface {v0}, Ln/h;->S()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/p;->h:Ln/h;

    invoke-interface {v0}, Ln/d0;->timeout()Ln/e0;

    move-result-object v0

    return-object v0
.end method
