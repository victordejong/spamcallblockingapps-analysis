.class public abstract Ls1/a/a/a/v0/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/h/c$b;,
        Ls1/a/a/a/v0/h/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/h/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ls1/a/a/a/v0/h/c;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/h/o;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/o;-><init>([B)V

    sput-object v0, Ls1/a/a/a/v0/h/c;->a:Ls1/a/a/a/v0/h/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Iterator;I)Ls1/a/a/a/v0/h/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ls1/a/a/a/v0/h/c;",
            ">;I)",
            "Ls1/a/a/a/v0/h/c;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/h/c;

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 2
    invoke-static {p0, v0}, Ls1/a/a/a/v0/h/c;->a(Ljava/util/Iterator;I)Ls1/a/a/a/v0/h/c;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 3
    invoke-static {p0, p1}, Ls1/a/a/a/v0/h/c;->a(Ljava/util/Iterator;I)Ls1/a/a/a/v0/h/c;

    move-result-object p0

    .line 4
    invoke-virtual {v1, p0}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ls1/a/a/a/v0/h/c;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ls1/a/a/a/v0/h/o;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/h/o;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static j()Ls1/a/a/a/v0/h/c$b;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/c$b;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/c$b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 3
    sget-object v0, Ls1/a/a/a/v0/h/s;->h:[I

    .line 4
    instance-of v0, p0, Ls1/a/a/a/v0/h/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ls1/a/a/a/v0/h/s;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object p1, p0

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v2

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x80

    if-ge v3, v2, :cond_3

    .line 8
    invoke-static {p0, p1}, Ls1/a/a/a/v0/h/s;->q(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/o;

    move-result-object p1

    goto/16 :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    iget-object v4, v0, Ls1/a/a/a/v0/h/s;->d:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v4}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v4

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v5, v2, :cond_4

    .line 10
    iget-object v1, v0, Ls1/a/a/a/v0/h/s;->d:Ls1/a/a/a/v0/h/c;

    invoke-static {v1, p1}, Ls1/a/a/a/v0/h/s;->q(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/o;

    move-result-object p1

    .line 11
    new-instance v1, Ls1/a/a/a/v0/h/s;

    iget-object v0, v0, Ls1/a/a/a/v0/h/s;->c:Ls1/a/a/a/v0/h/c;

    invoke-direct {v1, v0, p1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    move-object p1, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 12
    iget-object v2, v0, Ls1/a/a/a/v0/h/s;->c:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v2}, Ls1/a/a/a/v0/h/c;->f()I

    move-result v2

    iget-object v4, v0, Ls1/a/a/a/v0/h/s;->d:Ls1/a/a/a/v0/h/c;

    invoke-virtual {v4}, Ls1/a/a/a/v0/h/c;->f()I

    move-result v4

    if-le v2, v4, :cond_5

    .line 13
    iget v2, v0, Ls1/a/a/a/v0/h/s;->f:I

    .line 14
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->f()I

    move-result v4

    if-le v2, v4, :cond_5

    .line 15
    new-instance v1, Ls1/a/a/a/v0/h/s;

    iget-object v2, v0, Ls1/a/a/a/v0/h/s;->d:Ls1/a/a/a/v0/h/c;

    invoke-direct {v1, v2, p1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    .line 16
    new-instance p1, Ls1/a/a/a/v0/h/s;

    iget-object v0, v0, Ls1/a/a/a/v0/h/s;->c:Ls1/a/a/a/v0/h/c;

    invoke-direct {p1, v0, v1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->f()I

    move-result v0

    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->f()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 18
    sget-object v2, Ls1/a/a/a/v0/h/s;->h:[I

    aget v0, v2, v0

    if-lt v3, v0, :cond_6

    .line 19
    new-instance v0, Ls1/a/a/a/v0/h/s;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    move-object p1, v0

    goto :goto_2

    .line 20
    :cond_6
    new-instance v0, Ls1/a/a/a/v0/h/s$b;

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/s$b;-><init>(Ls1/a/a/a/v0/h/s$a;)V

    .line 21
    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/h/s$b;->a(Ls1/a/a/a/v0/h/c;)V

    .line 22
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/s$b;->a(Ls1/a/a/a/v0/h/c;)V

    .line 23
    iget-object p1, v0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/h/c;

    .line 24
    :goto_1
    iget-object v1, v0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 25
    iget-object v1, v0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/c;

    .line 26
    new-instance v2, Ls1/a/a/a/v0/h/s;

    .line 27
    invoke-direct {v2, v1, p1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    move-object p1, v2

    goto :goto_1

    :cond_7
    :goto_2
    return-object p1

    .line 28
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x35

    const-string v3, "ByteString would be too long: "

    const-string v4, "+"

    invoke-static {v2, v3, v0, v4, v1}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([BIII)V
    .locals 3

    const/16 v0, 0x1e

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    if-ltz p4, :cond_3

    add-int v0, p2, p4

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    const/16 v2, 0x22

    if-gt v0, v1, :cond_2

    add-int v0, p3, p4

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-lez p4, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Ls1/a/a/a/v0/h/c;->e([BIII)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Target end offset < 0: "

    invoke-static {v2, p2, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Source end offset < 0: "

    invoke-static {v2, p2, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x17

    const-string p3, "Length < 0: "

    invoke-static {p2, p3, p4}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Target offset < 0: "

    invoke-static {v0, p2, p3}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "Source offset < 0: "

    invoke-static {v0, p3, p2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract e([BIII)V
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method

.method public abstract i()Ls1/a/a/a/v0/h/c$a;
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->i()Ls1/a/a/a/v0/h/c$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract k(III)I
.end method

.method public abstract l(III)I
.end method

.method public abstract m()I
.end method

.method public abstract n(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public o()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/h/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract p(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
