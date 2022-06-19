.class public Lp3/a/n1/w;
.super Lp3/a/n1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/w$f;,
        Lp3/a/n1/w$g;
    }
.end annotation


# static fields
.field public static final c:Lp3/a/n1/w$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/w$f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lp3/a/n1/w$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/w$f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lp3/a/n1/w$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/w$f<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final f:Lp3/a/n1/w$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/w$f<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lp3/a/n1/w$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/w$g<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lp3/a/n1/e2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/w$a;

    invoke-direct {v0}, Lp3/a/n1/w$a;-><init>()V

    sput-object v0, Lp3/a/n1/w;->c:Lp3/a/n1/w$f;

    .line 2
    new-instance v0, Lp3/a/n1/w$b;

    invoke-direct {v0}, Lp3/a/n1/w$b;-><init>()V

    sput-object v0, Lp3/a/n1/w;->d:Lp3/a/n1/w$f;

    .line 3
    new-instance v0, Lp3/a/n1/w$c;

    invoke-direct {v0}, Lp3/a/n1/w$c;-><init>()V

    sput-object v0, Lp3/a/n1/w;->e:Lp3/a/n1/w$f;

    .line 4
    new-instance v0, Lp3/a/n1/w$d;

    invoke-direct {v0}, Lp3/a/n1/w$d;-><init>()V

    sput-object v0, Lp3/a/n1/w;->f:Lp3/a/n1/w$f;

    .line 5
    new-instance v0, Lp3/a/n1/w$e;

    invoke-direct {v0}, Lp3/a/n1/w$e;-><init>()V

    sput-object v0, Lp3/a/n1/w;->g:Lp3/a/n1/w$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lp3/a/n1/c;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/n1/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public D(I)Lp3/a/n1/e2;
    .locals 6

    if-gtz p1, :cond_0

    .line 1
    sget-object p1, Lp3/a/n1/f2;->a:Lp3/a/n1/e2;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp3/a/n1/w;->f()I

    move-result v0

    if-lt v0, p1, :cond_6

    .line 3
    iget v0, p0, Lp3/a/n1/w;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lp3/a/n1/w;->a:I

    const/4 v0, 0x0

    move-object v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/n1/e2;

    .line 5
    invoke-interface {v2}, Lp3/a/n1/e2;->f()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 6
    invoke-interface {v2, p1}, Lp3/a/n1/e2;->D(I)Lp3/a/n1/e2;

    move-result-object p1

    const/4 v2, 0x0

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/n1/e2;

    sub-int/2addr p1, v3

    move-object v5, v2

    move v2, p1

    move-object p1, v5

    :goto_1
    if-nez v0, :cond_2

    move-object v0, p1

    goto :goto_3

    :cond_2
    if-nez v1, :cond_4

    .line 8
    new-instance v1, Lp3/a/n1/w;

    const/4 v3, 0x2

    if-nez v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v4, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v3, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    invoke-direct {v1, v3}, Lp3/a/n1/w;-><init>(I)V

    .line 10
    invoke-virtual {v1, v0}, Lp3/a/n1/w;->d(Lp3/a/n1/e2;)V

    move-object v0, v1

    .line 11
    :cond_4
    invoke-virtual {v1, p1}, Lp3/a/n1/w;->d(Lp3/a/n1/e2;)V

    :goto_3
    if-gtz v2, :cond_5

    return-object v0

    :cond_5
    move p1, v2

    goto :goto_0

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public c0(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    sget-object v0, Lp3/a/n1/w;->f:Lp3/a/n1/w$f;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lp3/a/n1/w;->l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I

    return-void
.end method

.method public c2(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lp3/a/n1/w;->g:Lp3/a/n1/w$g;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p1, v1}, Lp3/a/n1/w;->k(Lp3/a/n1/w$g;ILjava/lang/Object;I)I

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/e2;

    invoke-interface {v0}, Lp3/a/n1/e2;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lp3/a/n1/e2;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lp3/a/n1/w;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lp3/a/n1/w;->a:I

    invoke-interface {p1}, Lp3/a/n1/e2;->f()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lp3/a/n1/w;->a:I

    return-void

    .line 4
    :cond_0
    check-cast p1, Lp3/a/n1/w;

    .line 5
    :goto_0
    iget-object v0, p1, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/e2;

    .line 7
    iget-object v1, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lp3/a/n1/w;->a:I

    iget v1, p1, Lp3/a/n1/w;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lp3/a/n1/w;->a:I

    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lp3/a/n1/w;->a:I

    .line 10
    invoke-virtual {p1}, Lp3/a/n1/w;->close()V

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lp3/a/n1/w;->a:I

    return v0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/e2;

    .line 2
    invoke-interface {v0}, Lp3/a/n1/e2;->f()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/e2;

    invoke-interface {v0}, Lp3/a/n1/e2;->close()V

    :cond_0
    return-void
.end method

.method public final k(Lp3/a/n1/w$g;ILjava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/n1/w$g<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/n1/w;->f()I

    move-result v0

    if-lt v0, p2, :cond_3

    .line 2
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lp3/a/n1/w;->j()V

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 4
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lp3/a/n1/w;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/n1/e2;

    .line 6
    invoke-interface {v0}, Lp3/a/n1/e2;->f()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7
    invoke-interface {p1, v0, v1, p3, p4}, Lp3/a/n1/w$g;->a(Lp3/a/n1/e2;ILjava/lang/Object;I)I

    move-result p4

    sub-int/2addr p2, v1

    .line 8
    iget v0, p0, Lp3/a/n1/w;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lp3/a/n1/w;->a:I

    .line 9
    invoke-virtual {p0}, Lp3/a/n1/w;->j()V

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    return p4

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/n1/w$f<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lp3/a/n1/w;->k(Lp3/a/n1/w$g;ILjava/lang/Object;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public r0([BII)V
    .locals 1

    .line 1
    sget-object v0, Lp3/a/n1/w;->e:Lp3/a/n1/w$f;

    invoke-virtual {p0, v0, p3, p1, p2}, Lp3/a/n1/w;->l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I

    return-void
.end method

.method public readUnsignedByte()I
    .locals 4

    .line 1
    sget-object v0, Lp3/a/n1/w;->c:Lp3/a/n1/w$f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lp3/a/n1/w;->l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public skipBytes(I)V
    .locals 3

    .line 1
    sget-object v0, Lp3/a/n1/w;->d:Lp3/a/n1/w$f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lp3/a/n1/w;->l(Lp3/a/n1/w$f;ILjava/lang/Object;I)I

    return-void
.end method
