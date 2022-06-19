.class public final Ln/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/g;


# instance fields
.field public final f:Ln/f;

.field public g:Z

.field public final h:Ln/b0;


# direct methods
.method public constructor <init>(Ln/b0;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/w;->h:Ln/b0;

    .line 2
    new-instance p1, Ln/f;

    invoke-direct {p1}, Ln/f;-><init>()V

    iput-object p1, p0, Ln/w;->f:Ln/f;

    return-void
.end method


# virtual methods
.method public B(I)Ln/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->b1(I)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B0(Ln/f;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ln/f;->B0(Ln/f;J)V

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C0(Ln/d0;)J
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Ln/w;->f:Ln/f;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 2
    invoke-interface {p1, v2, v3, v4}, Ln/d0;->read(Ln/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    goto :goto_0
.end method

.method public D0(J)Ln/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln/f;->U0(J)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(I)Ln/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->X0(I)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T(I)Ln/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->O0(I)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W0([B)Ln/g;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->J0([B)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Y0(Ln/i;)Ln/g;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->G0(Ln/i;)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Ln/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->Z0(I)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln/w;->f:Ln/f;

    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 3
    iget-object v1, p0, Ln/w;->h:Ln/b0;

    .line 4
    iget-object v2, p0, Ln/w;->f:Ln/f;

    .line 5
    invoke-virtual {v2}, Ln/f;->p0()J

    move-result-wide v3

    .line 6
    invoke-interface {v1, v2, v3, v4}, Ln/b0;->B0(Ln/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Ln/w;->h:Ln/b0;

    invoke-interface {v1}, Ln/b0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ln/w;->g:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 9
    :cond_3
    throw v0
.end method

.method public d0()Ln/g;
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0}, Ln/f;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v2, p0, Ln/w;->h:Ln/b0;

    .line 5
    iget-object v3, p0, Ln/w;->f:Ln/f;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Ln/b0;->B0(Ln/f;J)V

    :cond_0
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v0, p0, Ln/w;->h:Ln/b0;

    .line 4
    iget-object v1, p0, Ln/w;->f:Ln/f;

    .line 5
    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide v2

    .line 6
    invoke-interface {v0, v1, v2, v3}, Ln/b0;->B0(Ln/f;J)V

    .line 7
    :cond_0
    iget-object v0, p0, Ln/w;->h:Ln/b0;

    invoke-interface {v0}, Ln/b0;->flush()V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m()Ln/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/w;->f:Ln/f;

    return-object v0
.end method

.method public n([BII)Ln/g;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ln/f;->K0([BII)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n0(Ljava/lang/String;)Ln/g;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->s1(Ljava/lang/String;)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p1(J)Ln/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Ln/f;->T0(J)Ln/f;

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r1()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Ln/w$a;

    invoke-direct {v0, p0}, Ln/w$a;-><init>(Ln/w;)V

    return-object v0
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/w;->h:Ln/b0;

    invoke-interface {v0}, Ln/b0;->timeout()Ln/e0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln/w;->h:Ln/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Ln/w;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln/w;->f:Ln/f;

    .line 3
    invoke-virtual {v0, p1}, Ln/f;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Ln/w;->d0()Ln/g;

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
