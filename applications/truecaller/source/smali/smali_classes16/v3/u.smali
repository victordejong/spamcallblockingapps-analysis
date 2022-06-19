.class public final Lv3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/g;


# instance fields
.field public final a:Lv3/f;

.field public b:Z

.field public final c:Lv3/z;


# direct methods
.method public constructor <init>(Lv3/z;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/u;->c:Lv3/z;

    .line 2
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Lv3/u;->a:Lv3/f;

    return-void
.end method


# virtual methods
.method public B(I)Lv3/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1}, Lv3/f;->G0(I)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public E0(Lv3/i;)Lv3/g;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1}, Lv3/f;->p0(Lv3/i;)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public H1(I)Lv3/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1}, Lv3/f;->J0(I)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public Z0()Lv3/g;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0}, Lv3/f;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Lv3/u;->c:Lv3/z;

    .line 5
    iget-object v3, p0, Lv3/u;->a:Lv3/f;

    .line 6
    invoke-interface {v2, v3, v0, v1}, Lv3/z;->h1(Lv3/f;J)V

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

.method public b(I)Lv3/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->a3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lv3/f;->G0(I)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public close()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv3/u;->a:Lv3/f;

    .line 3
    iget-wide v2, v1, Lv3/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 4
    iget-object v4, p0, Lv3/u;->c:Lv3/z;

    invoke-interface {v4, v1, v2, v3}, Lv3/z;->h1(Lv3/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lv3/u;->c:Lv3/z;

    invoke-interface {v1}, Lv3/z;->close()V
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

    .line 6
    iput-boolean v1, p0, Lv3/u;->b:Z

    if-nez v0, :cond_3

    :goto_2
    return-void

    .line 7
    :cond_3
    throw v0
.end method

.method public d0(J)Lv3/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Lv3/f;->D0(J)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public d1(Ljava/lang/String;)Lv3/g;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    iget-wide v1, v0, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 4
    iget-object v3, p0, Lv3/u;->c:Lv3/z;

    invoke-interface {v3, v0, v1, v2}, Lv3/z;->h1(Lv3/f;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lv3/u;->c:Lv3/z;

    invoke-interface {v0}, Lv3/z;->flush()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Lv3/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    return-object v0
.end method

.method public h1(Lv3/f;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lv3/f;->h1(Lv3/f;J)V

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/u;->c:Lv3/z;

    invoke-interface {v0}, Lv3/z;->i()Lv3/c0;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j0(I)Lv3/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1}, Lv3/f;->B0(I)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public j2()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lv3/u$a;

    invoke-direct {v0, p0}, Lv3/u$a;-><init>(Lv3/u;)V

    return-object v0
.end method

.method public k1(Lv3/b0;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lv3/u;->a:Lv3/f;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 2
    invoke-interface {p1, v2, v3, v4}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

    goto :goto_0
.end method

.method public m()Lv3/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "buffer("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv3/u;->c:Lv3/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0(J)Lv3/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1, p2}, Lv3/f;->F0(J)Lv3/f;

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 3
    invoke-virtual {v0, p1}, Lv3/f;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

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

.method public write([B)Lv3/g;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 8
    invoke-virtual {v0, p1}, Lv3/f;->t0([B)Lv3/f;

    .line 9
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lv3/g;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lv3/u;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lv3/u;->a:Lv3/f;

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lv3/f;->z0([BII)Lv3/f;

    .line 14
    invoke-virtual {p0}, Lv3/u;->Z0()Lv3/g;

    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
