.class public final Lu/i/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, p1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    const-string v0, "EOF"

    .line 3
    :cond_1
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/nio/BufferUnderflowException;

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Malformed"

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s reading %s from TBinary"

    .line 4
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static b(Lu/i/t$a;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lu/i/t$a;->a(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c(Lu/i/h;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lu/i/p;

    invoke-direct {v0}, Lu/i/p;-><init>()V

    invoke-virtual {v0, p0}, Lu/i/p;->a(Lu/i/h;)Lu/j/c;

    move-result-object p0

    .line 3
    invoke-static {}, Lu/j/d;->c()Lu/j/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lu/j/d;->b(Lu/j/c;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Span"

    .line 4
    invoke-static {p1, p0}, Lu/i/j;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lu/i/h;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lu/i/j;->e(Lu/i/h;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    new-instance v2, Lu/i/p;

    invoke-direct {v2}, Lu/i/p;-><init>()V

    .line 4
    invoke-static {}, Lu/j/d;->c()Lu/j/d;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {v2, p0}, Lu/i/p;->a(Lu/i/h;)Lu/j/c;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4, p1}, Lu/j/d;->b(Lu/j/c;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "List<Span>"

    .line 7
    invoke-static {p1, p0}, Lu/i/j;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    const/4 p0, 0x0

    throw p0
.end method

.method static e(Lu/i/h;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    .line 2
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result p0

    return p0
.end method

.method public static f(Lu/i/h;)Lu/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/i/h;->available()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lu/i/p;

    invoke-direct {v0}, Lu/i/p;-><init>()V

    invoke-virtual {v0, p0}, Lu/i/p;->a(Lu/i/h;)Lu/j/c;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-static {}, Lu/j/d;->c()Lu/j/d;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lu/j/d;->b(Lu/j/c;Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Span"

    .line 6
    invoke-static {v0, p0}, Lu/i/j;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method static g(Lu/i/h;B)V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, p1, v0}, Lu/i/j;->h(Lu/i/h;BI)V

    return-void
.end method

.method static h(Lu/i/h;BI)V
    .locals 4

    if-lez p2, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 1
    :pswitch_1
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result p1

    .line 2
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v2, p2, -0x1

    .line 3
    invoke-static {p0, p1, v2}, Lu/i/j;->h(Lu/i/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result p1

    .line 5
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v1

    .line 6
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 7
    invoke-static {p0, p1, v3}, Lu/i/j;->h(Lu/i/h;BI)V

    .line 8
    invoke-static {p0, v1, v3}, Lu/i/j;->h(Lu/i/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :goto_2
    :pswitch_3
    invoke-static {p0}, Lu/i/l;->b(Lu/i/h;)Lu/i/l;

    move-result-object p1

    .line 10
    iget-byte p1, p1, Lu/i/l;->a:B

    if-nez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 11
    invoke-static {p0, p1, v0}, Lu/i/j;->h(Lu/i/h;BI)V

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lu/i/h;->skip(J)J

    goto :goto_3

    :pswitch_5
    const-wide/16 p1, 0x4

    .line 13
    invoke-virtual {p0, p1, p2}, Lu/i/h;->skip(J)J

    goto :goto_3

    :pswitch_6
    const-wide/16 p1, 0x2

    .line 14
    invoke-virtual {p0, p1, p2}, Lu/i/h;->skip(J)J

    goto :goto_3

    :pswitch_7
    const-wide/16 p1, 0x8

    .line 15
    invoke-virtual {p0, p1, p2}, Lu/i/h;->skip(J)J

    goto :goto_3

    :pswitch_8
    const-wide/16 p1, 0x1

    .line 16
    invoke-virtual {p0, p1, p2}, Lu/i/h;->skip(J)J

    :cond_1
    :goto_3
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static i(Lu/i/t;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lu/i/t;->l(I)V

    return-void
.end method

.method static j(Lu/i/t;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0, v0}, Lu/i/j;->i(Lu/i/t;I)V

    .line 2
    invoke-virtual {p0, p1}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static k(Lu/i/t$a;Ljava/util/List;Lu/i/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/i/t$a<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lu/i/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-static {p2, v0}, Lu/i/j;->l(Lu/i/t;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lu/i/t$a;->b(Ljava/lang/Object;Lu/i/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static l(Lu/i/t;I)V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    .line 2
    invoke-static {p0, p1}, Lu/i/j;->i(Lu/i/t;I)V

    return-void
.end method

.method static m(Lu/i/t;J)V
    .locals 4

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    and-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lu/i/t;->l(I)V

    return-void
.end method
