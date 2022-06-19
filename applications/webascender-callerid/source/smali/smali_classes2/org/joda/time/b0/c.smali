.class public Lorg/joda/time/b0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/b0/c$e;,
        Lorg/joda/time/b0/c$b;,
        Lorg/joda/time/b0/c$j;,
        Lorg/joda/time/b0/c$k;,
        Lorg/joda/time/b0/c$l;,
        Lorg/joda/time/b0/c$d;,
        Lorg/joda/time/b0/c$i;,
        Lorg/joda/time/b0/c$m;,
        Lorg/joda/time/b0/c$c;,
        Lorg/joda/time/b0/c$g;,
        Lorg/joda/time/b0/c$n;,
        Lorg/joda/time/b0/c$f;,
        Lorg/joda/time/b0/c$h;,
        Lorg/joda/time/b0/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static P(Ljava/lang/Appendable;I)V
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

.method private U(Lorg/joda/time/b0/d;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No parser supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private V(Lorg/joda/time/b0/g;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No printer supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static W(Ljava/lang/CharSequence;ILjava/lang/String;)Z
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
    const/4 v1, 0x0

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

.method static X(Ljava/lang/CharSequence;ILjava/lang/String;)Z
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
    const/4 v1, 0x0

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

.method private Y()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 2
    iget-object v1, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3
    iget-object v1, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

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
    new-instance v0, Lorg/joda/time/b0/c$b;

    iget-object v1, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/joda/time/b0/c$b;-><init>(Ljava/util/List;)V

    .line 6
    :cond_3
    iput-object v0, p0, Lorg/joda/time/b0/c;->b:Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method private Z(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/joda/time/b0/l;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lorg/joda/time/b0/c$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/joda/time/b0/c$b;

    invoke-virtual {p1}, Lorg/joda/time/b0/c$b;->c()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a0(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/joda/time/b0/n;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lorg/joda/time/b0/c$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/joda/time/b0/c$b;

    invoke-virtual {p1}, Lorg/joda/time/b0/c$b;->d()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private d(Ljava/lang/Object;)Lorg/joda/time/b0/c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/joda/time/b0/c;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/joda/time/b0/c;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lorg/joda/time/b0/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public A(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public B()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/c;->F(Lorg/joda/time/d;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public C()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/c;->H(Lorg/joda/time/d;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public D(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/b0/c;->U(Lorg/joda/time/b0/d;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/b0/l;

    .line 2
    invoke-static {p1}, Lorg/joda/time/b0/f;->b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/l;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 3
    new-instance p1, Lorg/joda/time/b0/c$e;

    invoke-direct {p1, v0}, Lorg/joda/time/b0/c$e;-><init>([Lorg/joda/time/b0/l;)V

    invoke-direct {p0, v1, p1}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public E(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->Q()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public F(Lorg/joda/time/d;)Lorg/joda/time/b0/c;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/b0/c$i;-><init>(Lorg/joda/time/d;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;
    .locals 2

    if-eqz p1, :cond_3

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    .line 1
    new-instance p2, Lorg/joda/time/b0/c$n;

    invoke-direct {p2, p1, p3, v0}, Lorg/joda/time/b0/c$n;-><init>(Lorg/joda/time/d;IZ)V

    invoke-direct {p0, p2}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_1
    new-instance v1, Lorg/joda/time/b0/c$g;

    invoke-direct {v1, p1, p3, v0, p2}, Lorg/joda/time/b0/c$g;-><init>(Lorg/joda/time/d;IZI)V

    invoke-direct {p0, v1}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Lorg/joda/time/d;)Lorg/joda/time/b0/c;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/joda/time/b0/c$i;-><init>(Lorg/joda/time/d;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/b0/c$j;->INSTANCE:Lorg/joda/time/b0/c$j;

    invoke-direct {p0, v0, v0}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public J()Lorg/joda/time/b0/c;
    .locals 3

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/b0/c$k;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/b0/c;
    .locals 7

    .line 1
    new-instance v6, Lorg/joda/time/b0/c$l;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b0/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v6}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public L(Ljava/lang/String;ZII)Lorg/joda/time/b0/c;
    .locals 7

    .line 1
    new-instance v6, Lorg/joda/time/b0/c$l;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b0/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v6}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public M(Ljava/util/Map;)Lorg/joda/time/b0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/f;",
            ">;)",
            "Lorg/joda/time/b0/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/b0/c$k;-><init>(ILjava/util/Map;)V

    .line 2
    invoke-direct {p0, v0, v0}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public N(IZ)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$m;

    invoke-static {}, Lorg/joda/time/d;->S()Lorg/joda/time/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/b0/c$m;-><init>(Lorg/joda/time/d;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public O(IZ)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$m;

    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/b0/c$m;-><init>(Lorg/joda/time/d;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public Q(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->R()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public R(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->S()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->G(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public S(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->G(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public T(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->W()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public a(Lorg/joda/time/b0/b;)Lorg/joda/time/b0/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/b0/b;->c()Lorg/joda/time/b0/n;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/b0/b;->b()Lorg/joda/time/b0/l;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No formatter supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/b0/c;->U(Lorg/joda/time/b0/d;)V

    .line 2
    invoke-static {p1}, Lorg/joda/time/b0/f;->b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/l;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public b0()Lorg/joda/time/b0/b;
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/joda/time/b0/c;->Y()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->a0(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lorg/joda/time/b0/n;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->Z(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    move-object v2, v0

    check-cast v2, Lorg/joda/time/b0/l;

    :cond_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Lorg/joda/time/b0/b;

    invoke-direct {v0, v1, v2}, Lorg/joda/time/b0/b;-><init>(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)V

    return-object v0
.end method

.method public c(Lorg/joda/time/b0/g;[Lorg/joda/time/b0/d;)Lorg/joda/time/b0/c;
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/b0/c;->V(Lorg/joda/time/b0/g;)V

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    aget-object v0, p2, v1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lorg/joda/time/b0/h;->a(Lorg/joda/time/b0/g;)Lorg/joda/time/b0/n;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/joda/time/b0/f;->b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/l;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parser supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-array v3, v0, [Lorg/joda/time/b0/l;

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_4

    .line 7
    aget-object v4, p2, v1

    invoke-static {v4}, Lorg/joda/time/b0/f;->b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/l;

    move-result-object v4

    aput-object v4, v3, v1

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Incomplete parser array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/joda/time/b0/f;->b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/l;

    move-result-object p2

    aput-object p2, v3, v1

    .line 10
    invoke-static {p1}, Lorg/joda/time/b0/h;->a(Lorg/joda/time/b0/g;)Lorg/joda/time/b0/n;

    move-result-object p1

    new-instance p2, Lorg/joda/time/b0/c$e;

    invoke-direct {p2, v3}, Lorg/joda/time/b0/c$e;-><init>([Lorg/joda/time/b0/l;)V

    invoke-direct {p0, p1, p2}, Lorg/joda/time/b0/c;->e(Lorg/joda/time/b0/n;Lorg/joda/time/b0/l;)Lorg/joda/time/b0/c;

    return-object p0

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parsers supplied"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c0()Lorg/joda/time/b0/d;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/joda/time/b0/c;->Y()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->Z(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lorg/joda/time/b0/l;

    .line 4
    invoke-static {v0}, Lorg/joda/time/b0/m;->b(Lorg/joda/time/b0/l;)Lorg/joda/time/b0/d;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->G(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public g(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->y()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public h(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->z()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public i(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->A()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public j(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->B()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public k()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->B()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/c;->F(Lorg/joda/time/d;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public l()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->B()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/c;->H(Lorg/joda/time/d;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public m(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->C()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;
    .locals 2

    if-eqz p1, :cond_3

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v0, :cond_1

    .line 1
    new-instance p2, Lorg/joda/time/b0/c$n;

    invoke-direct {p2, p1, p3, v1}, Lorg/joda/time/b0/c$n;-><init>(Lorg/joda/time/d;IZ)V

    invoke-direct {p0, p2}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Lorg/joda/time/b0/c$g;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/b0/c$g;-><init>(Lorg/joda/time/d;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->D()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/c;->H(Lorg/joda/time/d;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public p(Lorg/joda/time/d;I)Lorg/joda/time/b0/c;
    .locals 2

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/b0/c$c;-><init>(Lorg/joda/time/d;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal number of digits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;
    .locals 1

    if-eqz p1, :cond_2

    if-ge p3, p2, :cond_0

    move p3, p2

    :cond_0
    if-ltz p2, :cond_1

    if-lez p3, :cond_1

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$d;

    invoke-direct {v0, p1, p2, p3}, Lorg/joda/time/b0/c$d;-><init>(Lorg/joda/time/d;II)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->I()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->q(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public s(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->M()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->q(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public t(II)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->P()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b0/c;->q(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public u()Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/d;->H()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b0/c;->H(Lorg/joda/time/d;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public v(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->I()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public w(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->J()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public x(C)Lorg/joda/time/b0/c;
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/b0/c$a;

    invoke-direct {v0, p1}, Lorg/joda/time/b0/c$a;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lorg/joda/time/b0/c;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/b0/c$h;

    invoke-direct {v0, p1}, Lorg/joda/time/b0/c$h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/joda/time/b0/c$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lorg/joda/time/b0/c$a;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/b0/c;->d(Ljava/lang/Object;)Lorg/joda/time/b0/c;

    :cond_1
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Literal must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)Lorg/joda/time/b0/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->N()Lorg/joda/time/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b0/c;->n(Lorg/joda/time/d;II)Lorg/joda/time/b0/c;

    return-object p0
.end method
