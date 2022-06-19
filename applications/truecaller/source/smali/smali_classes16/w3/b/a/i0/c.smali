.class public Lw3/b/a/i0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/i0/c$e;,
        Lw3/b/a/i0/c$b;,
        Lw3/b/a/i0/c$j;,
        Lw3/b/a/i0/c$k;,
        Lw3/b/a/i0/c$l;,
        Lw3/b/a/i0/c$d;,
        Lw3/b/a/i0/c$i;,
        Lw3/b/a/i0/c$m;,
        Lw3/b/a/i0/c$c;,
        Lw3/b/a/i0/c$g;,
        Lw3/b/a/i0/c$n;,
        Lw3/b/a/i0/c$f;,
        Lw3/b/a/i0/c$h;,
        Lw3/b/a/i0/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static q(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    const v0, 0xfffd

    .line 1
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static t(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p1, v1

    .line 3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static u(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p1, v1

    .line 3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 5
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 6
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 7
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Lw3/b/a/i0/b;)Lw3/b/a/i0/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    .line 2
    iget-object p1, p1, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    .line 3
    invoke-virtual {p0, v0, p1}, Lw3/b/a/i0/c;->d(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)Lw3/b/a/i0/c;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No formatter supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lw3/b/a/i0/d;)Lw3/b/a/i0/c;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {p1}, Lw3/b/a/i0/f;->b(Lw3/b/a/i0/d;)Lw3/b/a/i0/j;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lw3/b/a/i0/c;->d(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)Lw3/b/a/i0/c;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No parser supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lw3/b/a/i0/g;[Lw3/b/a/i0/d;)Lw3/b/a/i0/c;
    .locals 4

    .line 1
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2
    aget-object p1, p2, v0

    if-eqz p1, :cond_0

    .line 3
    aget-object p1, p2, v0

    invoke-static {p1}, Lw3/b/a/i0/f;->b(Lw3/b/a/i0/d;)Lw3/b/a/i0/j;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lw3/b/a/i0/c;->d(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)Lw3/b/a/i0/c;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parser supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-array v2, p1, [Lw3/b/a/i0/j;

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v0, v3, :cond_3

    .line 6
    aget-object v3, p2, v0

    invoke-static {v3}, Lw3/b/a/i0/f;->b(Lw3/b/a/i0/d;)Lw3/b/a/i0/j;

    move-result-object v3

    aput-object v3, v2, v0

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incomplete parser array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    aget-object p1, p2, v0

    invoke-static {p1}, Lw3/b/a/i0/f;->b(Lw3/b/a/i0/d;)Lw3/b/a/i0/j;

    move-result-object p1

    aput-object p1, v2, v0

    .line 9
    new-instance p1, Lw3/b/a/i0/c$e;

    invoke-direct {p1, v2}, Lw3/b/a/i0/c$e;-><init>([Lw3/b/a/i0/j;)V

    invoke-virtual {p0, v1, p1}, Lw3/b/a/i0/c;->d(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)Lw3/b/a/i0/c;

    return-object p0
.end method

.method public final d(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)Lw3/b/a/i0/c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(Lw3/b/a/d;II)Lw3/b/a/i0/c;
    .locals 3

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gt p2, v0, :cond_1

    .line 1
    new-instance p2, Lw3/b/a/i0/c$n;

    invoke-direct {p2, p1, p3, v2}, Lw3/b/a/i0/c$n;-><init>(Lw3/b/a/d;IZ)V

    .line 2
    iput-object v1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lw3/b/a/i0/c$g;

    invoke-direct {v0, p1, p3, v2, p2}, Lw3/b/a/i0/c$g;-><init>(Lw3/b/a/d;IZI)V

    .line 6
    iput-object v1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public f(Lw3/b/a/d;I)Lw3/b/a/i0/c;
    .locals 2

    if-lez p2, :cond_0

    .line 1
    new-instance v0, Lw3/b/a/i0/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lw3/b/a/i0/c$c;-><init>(Lw3/b/a/d;IZ)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal number of digits: "

    invoke-static {v0, p2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lw3/b/a/d;II)Lw3/b/a/i0/c;
    .locals 1

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_1

    if-lez p3, :cond_1

    .line 1
    new-instance v0, Lw3/b/a/i0/c$d;

    invoke-direct {v0, p1, p2, p3}, Lw3/b/a/i0/c$d;-><init>(Lw3/b/a/d;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public h(II)Lw3/b/a/i0/c;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->u:Lw3/b/a/d;

    invoke-virtual {p0, v0, p1, p2}, Lw3/b/a/i0/c;->g(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    return-object p0
.end method

.method public i(C)Lw3/b/a/i0/c;
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/i0/c$a;

    invoke-direct {v0, p1}, Lw3/b/a/i0/c$a;-><init>(C)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lw3/b/a/i0/c;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/i0/c$h;

    invoke-direct {v0, p1}, Lw3/b/a/i0/c$h;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object v2, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lw3/b/a/i0/c$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lw3/b/a/i0/c$a;-><init>(C)V

    .line 7
    iput-object v2, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public k(Lw3/b/a/i0/d;)Lw3/b/a/i0/c;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lw3/b/a/i0/j;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1}, Lw3/b/a/i0/f;->b(Lw3/b/a/i0/d;)Lw3/b/a/i0/j;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 2
    new-instance p1, Lw3/b/a/i0/c$e;

    invoke-direct {p1, v0}, Lw3/b/a/i0/c$e;-><init>([Lw3/b/a/i0/j;)V

    invoke-virtual {p0, v1, p1}, Lw3/b/a/i0/c;->d(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)Lw3/b/a/i0/c;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No parser supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Lw3/b/a/d;)Lw3/b/a/i0/c;
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/i0/c$i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lw3/b/a/i0/c$i;-><init>(Lw3/b/a/d;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public m(Lw3/b/a/d;II)Lw3/b/a/i0/c;
    .locals 3

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_1

    .line 1
    new-instance p2, Lw3/b/a/i0/c$n;

    invoke-direct {p2, p1, p3, v1}, Lw3/b/a/i0/c$n;-><init>(Lw3/b/a/d;IZ)V

    .line 2
    iput-object v0, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_1
    new-instance v2, Lw3/b/a/i0/c$g;

    invoke-direct {v2, p1, p3, v1, p2}, Lw3/b/a/i0/c$g;-><init>(Lw3/b/a/d;IZI)V

    .line 6
    iput-object v0, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public n(Lw3/b/a/d;)Lw3/b/a/i0/c;
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/i0/c$i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lw3/b/a/i0/c$i;-><init>(Lw3/b/a/d;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;ZII)Lw3/b/a/i0/c;
    .locals 6

    .line 1
    new-instance p1, Lw3/b/a/i0/c$l;

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lw3/b/a/i0/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public p(Ljava/lang/String;ZII)Lw3/b/a/i0/c;
    .locals 7

    .line 1
    new-instance v6, Lw3/b/a/i0/c$l;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lw3/b/a/i0/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public r(II)Lw3/b/a/i0/c;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->k:Lw3/b/a/d;

    invoke-virtual {p0, v0, p1, p2}, Lw3/b/a/i0/c;->m(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    move-result-object p1

    return-object p1
.end method

.method public s(II)Lw3/b/a/i0/c;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->f:Lw3/b/a/d;

    invoke-virtual {p0, v0, p1, p2}, Lw3/b/a/i0/c;->m(Lw3/b/a/d;II)Lw3/b/a/i0/c;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3
    iget-object v1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 5
    new-instance v0, Lw3/b/a/i0/c$b;

    iget-object v1, p0, Lw3/b/a/i0/c;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lw3/b/a/i0/c$b;-><init>(Ljava/util/List;)V

    .line 6
    :cond_3
    iput-object v0, p0, Lw3/b/a/i0/c;->b:Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public final w(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lw3/b/a/i0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lw3/b/a/i0/c$b;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lw3/b/a/i0/c$b;

    .line 4
    iget-object p1, p1, Lw3/b/a/i0/c$b;->b:[Lw3/b/a/i0/j;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public x()Lw3/b/a/i0/b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/c;->v()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lw3/b/a/i0/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, v0, Lw3/b/a/i0/c$b;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Lw3/b/a/i0/c$b;

    .line 5
    iget-object v1, v1, Lw3/b/a/i0/c$b;->a:[Lw3/b/a/i0/l;

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    .line 6
    move-object v2, v0

    check-cast v2, Lw3/b/a/i0/l;

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lw3/b/a/i0/c;->w(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    move-object v1, v0

    check-cast v1, Lw3/b/a/i0/j;

    :cond_3
    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    :goto_1
    new-instance v0, Lw3/b/a/i0/b;

    invoke-direct {v0, v2, v1}, Lw3/b/a/i0/b;-><init>(Lw3/b/a/i0/l;Lw3/b/a/i0/j;)V

    return-object v0
.end method

.method public y()Lw3/b/a/i0/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/c;->v()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lw3/b/a/i0/c;->w(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lw3/b/a/i0/j;

    .line 4
    invoke-static {v0}, Lw3/b/a/i0/k;->d(Lw3/b/a/i0/j;)Lw3/b/a/i0/d;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
