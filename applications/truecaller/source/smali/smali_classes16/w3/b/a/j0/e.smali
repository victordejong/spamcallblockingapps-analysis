.class public final Lw3/b/a/j0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw3/b/a/j0/c;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Lw3/b/a/j0/c;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/j0/e;->a:Lw3/b/a/j0/c;

    .line 3
    iput-object p2, p0, Lw3/b/a/j0/e;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lw3/b/a/j0/e;->c:I

    return-void
.end method

.method public static c(Ljava/io/DataInput;)Lw3/b/a/j0/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lw3/b/a/j0/e;

    .line 2
    new-instance v8, Lw3/b/a/j0/c;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    int-to-char v2, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v6

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->N2(Ljava/io/DataInput;)J

    move-result-wide v9

    long-to-int v7, v9

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lw3/b/a/j0/c;-><init>(CIIIZI)V

    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->N2(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int p0, v2

    invoke-direct {v0, v8, v1, p0}, Lw3/b/a/j0/e;-><init>(Lw3/b/a/j0/c;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public a(JII)J
    .locals 6

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/e;->a:Lw3/b/a/j0/c;

    .line 2
    iget-char v1, v0, Lw3/b/a/j0/c;->a:C

    const/4 v2, 0x0

    const/16 v3, 0x77

    if-ne v1, v3, :cond_0

    add-int/2addr p3, p4

    goto :goto_0

    :cond_0
    const/16 p4, 0x73

    if-ne v1, p4, :cond_1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    int-to-long p3, p3

    add-long/2addr p1, p3

    .line 3
    sget-object v1, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 4
    iget-object v3, v1, Lw3/b/a/f0/a;->J:Lw3/b/a/c;

    .line 5
    iget v4, v0, Lw3/b/a/j0/c;->b:I

    invoke-virtual {v3, p1, p2, v4}, Lw3/b/a/c;->C(JI)J

    move-result-wide v3

    .line 6
    iget-object v5, v1, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 7
    invoke-virtual {v5, v3, v4, v2}, Lw3/b/a/c;->C(JI)J

    move-result-wide v2

    .line 8
    iget-object v4, v1, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 9
    iget v5, v0, Lw3/b/a/j0/c;->f:I

    invoke-virtual {v4, v2, v3, v5}, Lw3/b/a/c;->a(JI)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lw3/b/a/j0/c;->b(Lw3/b/a/a;J)J

    move-result-wide v2

    .line 11
    iget v4, v0, Lw3/b/a/j0/c;->d:I

    const/4 v5, 0x1

    if-nez v4, :cond_2

    cmp-long p1, v2, p1

    if-gtz p1, :cond_3

    .line 12
    iget-object p1, v1, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 13
    invoke-virtual {p1, v2, v3, v5}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/j0/c;->b(Lw3/b/a/a;J)J

    move-result-wide v2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0, v1, v2, v3}, Lw3/b/a/j0/c;->d(Lw3/b/a/a;J)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-gtz p1, :cond_3

    .line 16
    iget-object p1, v1, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 17
    invoke-virtual {p1, v2, v3, v5}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 18
    iget-object v2, v1, Lw3/b/a/f0/a;->J:Lw3/b/a/c;

    .line 19
    iget v3, v0, Lw3/b/a/j0/c;->b:I

    invoke-virtual {v2, p1, p2, v3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/j0/c;->b(Lw3/b/a/a;J)J

    move-result-wide p1

    .line 21
    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/j0/c;->d(Lw3/b/a/a;J)J

    move-result-wide v2

    :cond_3
    :goto_1
    sub-long/2addr v2, p3

    return-wide v2
.end method

.method public b(JII)J
    .locals 6

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/e;->a:Lw3/b/a/j0/c;

    .line 2
    iget-char v1, v0, Lw3/b/a/j0/c;->a:C

    const/4 v2, 0x0

    const/16 v3, 0x77

    if-ne v1, v3, :cond_0

    add-int/2addr p3, p4

    goto :goto_0

    :cond_0
    const/16 p4, 0x73

    if-ne v1, p4, :cond_1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    int-to-long p3, p3

    add-long/2addr p1, p3

    .line 3
    sget-object v1, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 4
    iget-object v3, v1, Lw3/b/a/f0/a;->J:Lw3/b/a/c;

    .line 5
    iget v4, v0, Lw3/b/a/j0/c;->b:I

    invoke-virtual {v3, p1, p2, v4}, Lw3/b/a/c;->C(JI)J

    move-result-wide v3

    .line 6
    iget-object v5, v1, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 7
    invoke-virtual {v5, v3, v4, v2}, Lw3/b/a/c;->C(JI)J

    move-result-wide v2

    .line 8
    iget-object v4, v1, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 9
    iget v5, v0, Lw3/b/a/j0/c;->f:I

    invoke-virtual {v4, v2, v3, v5}, Lw3/b/a/c;->a(JI)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lw3/b/a/j0/c;->c(Lw3/b/a/a;J)J

    move-result-wide v2

    .line 11
    iget v4, v0, Lw3/b/a/j0/c;->d:I

    const/4 v5, -0x1

    if-nez v4, :cond_2

    cmp-long p1, v2, p1

    if-ltz p1, :cond_3

    .line 12
    iget-object p1, v1, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 13
    invoke-virtual {p1, v2, v3, v5}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/j0/c;->c(Lw3/b/a/a;J)J

    move-result-wide v2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0, v1, v2, v3}, Lw3/b/a/j0/c;->d(Lw3/b/a/a;J)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-ltz p1, :cond_3

    .line 16
    iget-object p1, v1, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 17
    invoke-virtual {p1, v2, v3, v5}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    .line 18
    iget-object v2, v1, Lw3/b/a/f0/a;->J:Lw3/b/a/c;

    .line 19
    iget v3, v0, Lw3/b/a/j0/c;->b:I

    invoke-virtual {v2, p1, p2, v3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/j0/c;->c(Lw3/b/a/a;J)J

    move-result-wide p1

    .line 21
    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/j0/c;->d(Lw3/b/a/a;J)J

    move-result-wide v2

    :cond_3
    :goto_1
    sub-long/2addr v2, p3

    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/j0/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lw3/b/a/j0/e;

    .line 3
    iget v1, p0, Lw3/b/a/j0/e;->c:I

    iget v3, p1, Lw3/b/a/j0/e;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lw3/b/a/j0/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lw3/b/a/j0/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/b/a/j0/e;->a:Lw3/b/a/j0/c;

    iget-object p1, p1, Lw3/b/a/j0/e;->a:Lw3/b/a/j0/c;

    invoke-virtual {v1, p1}, Lw3/b/a/j0/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw3/b/a/j0/e;->a:Lw3/b/a/j0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/b/a/j0/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lw3/b/a/j0/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
