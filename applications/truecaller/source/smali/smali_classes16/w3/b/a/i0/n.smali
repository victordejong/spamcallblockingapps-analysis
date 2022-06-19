.class public Lw3/b/a/i0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/i0/n$a;,
        Lw3/b/a/i0/n$g;,
        Lw3/b/a/i0/n$e;,
        Lw3/b/a/i0/n$c;,
        Lw3/b/a/i0/n$b;,
        Lw3/b/a/i0/n$h;,
        Lw3/b/a/i0/n$d;,
        Lw3/b/a/i0/n$f;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:[Lw3/b/a/i0/n$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lw3/b/a/i0/n;->a:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lw3/b/a/i0/n;->b:I

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lw3/b/a/i0/n;->c:I

    .line 5
    iget-object v1, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lw3/b/a/i0/n;->e:Z

    .line 9
    iput-boolean v1, p0, Lw3/b/a/i0/n;->f:Z

    new-array v0, v0, [Lw3/b/a/i0/n$c;

    .line 10
    iput-object v0, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    return-void
.end method

.method public static f(Ljava/util/List;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/i0/n$a;

    invoke-direct {v0, p0}, Lw3/b/a/i0/n$a;-><init>(Ljava/util/List;)V

    new-array p0, v1, [Ljava/lang/Object;

    aput-object v0, p0, v2

    aput-object v0, p0, v3

    return-object p0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v3

    return-object v0

    :cond_1
    new-array p0, v1, [Ljava/lang/Object;

    .line 4
    sget-object v0, Lw3/b/a/i0/n$e;->b:Lw3/b/a/i0/n$e;

    aput-object v0, p0, v2

    aput-object v0, p0, v3

    return-object p0
.end method

.method public static h(Ljava/util/List;ZZ)Lw3/b/a/i0/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lw3/b/a/i0/m;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Builder has created neither a printer nor a parser"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lw3/b/a/i0/n$g;

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/b/a/i0/n$g;

    .line 5
    iget-object v4, v3, Lw3/b/a/i0/n$g;->i:Lw3/b/a/i0/o;

    if-nez v4, :cond_2

    .line 6
    iget-object v4, v3, Lw3/b/a/i0/n$g;->g:Lw3/b/a/i0/p;

    if-nez v4, :cond_2

    .line 7
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lw3/b/a/i0/n;->h(Ljava/util/List;ZZ)Lw3/b/a/i0/m;

    move-result-object p0

    .line 8
    iget-object p1, p0, Lw3/b/a/i0/m;->a:Lw3/b/a/i0/p;

    .line 9
    iget-object p0, p0, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    .line 10
    iput-object p1, v3, Lw3/b/a/i0/n$g;->g:Lw3/b/a/i0/p;

    .line 11
    iput-object p0, v3, Lw3/b/a/i0/n$g;->i:Lw3/b/a/i0/o;

    .line 12
    new-instance p0, Lw3/b/a/i0/m;

    invoke-direct {p0, v3, v3}, Lw3/b/a/i0/m;-><init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)V

    return-object p0

    .line 13
    :cond_2
    invoke-static {p0}, Lw3/b/a/i0/n;->f(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Lw3/b/a/i0/m;

    aget-object p0, p0, v0

    check-cast p0, Lw3/b/a/i0/o;

    invoke-direct {p1, v1, p0}, Lw3/b/a/i0/m;-><init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)V

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 15
    new-instance p1, Lw3/b/a/i0/m;

    aget-object p0, p0, v2

    check-cast p0, Lw3/b/a/i0/p;

    invoke-direct {p1, p0, v1}, Lw3/b/a/i0/m;-><init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)V

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Lw3/b/a/i0/m;

    aget-object p2, p0, v2

    check-cast p2, Lw3/b/a/i0/p;

    aget-object p0, p0, v0

    check-cast p0, Lw3/b/a/i0/o;

    invoke-direct {p1, p2, p0}, Lw3/b/a/i0/m;-><init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)Lw3/b/a/i0/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean p1, p0, Lw3/b/a/i0/n;->e:Z

    const/4 p2, 0x0

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lw3/b/a/i0/n;->e:Z

    .line 4
    iget-boolean p1, p0, Lw3/b/a/i0/n;->f:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lw3/b/a/i0/n;->f:Z

    return-object p0
.end method

.method public final b(I)V
    .locals 10

    .line 1
    iget v1, p0, Lw3/b/a/i0/n;->a:I

    .line 2
    new-instance v9, Lw3/b/a/i0/n$c;

    iget v2, p0, Lw3/b/a/i0/n;->b:I

    iget v3, p0, Lw3/b/a/i0/n;->c:I

    iget-object v6, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lw3/b/a/i0/n$c;-><init>(IIIZI[Lw3/b/a/i0/n$c;Lw3/b/a/i0/n$f;Lw3/b/a/i0/n$f;)V

    .line 3
    invoke-virtual {p0, v9, v9}, Lw3/b/a/i0/n;->a(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)Lw3/b/a/i0/n;

    .line 4
    iget-object v0, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    aput-object v9, v0, p1

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lw3/b/a/i0/n;
    .locals 11

    move-object v0, p0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/n;->e()V

    .line 2
    iget-object v1, v0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz p5, :cond_0

    if-nez p4, :cond_0

    .line 4
    new-instance v9, Lw3/b/a/i0/n$g;

    sget-object v6, Lw3/b/a/i0/n$e;->b:Lw3/b/a/i0/n$e;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lw3/b/a/i0/n$g;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lw3/b/a/i0/p;Lw3/b/a/i0/o;ZZ)V

    .line 5
    invoke-virtual {p0, v9, v9}, Lw3/b/a/i0/n;->a(Lw3/b/a/i0/p;Lw3/b/a/i0/o;)Lw3/b/a/i0/n;

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-ltz v3, :cond_3

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lw3/b/a/i0/n$g;

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/b/a/i0/n$g;

    add-int/2addr v3, v4

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v9, v1

    if-eqz v2, :cond_5

    .line 10
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot have two adjacent separators"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    :goto_2
    invoke-static {v9}, Lw3/b/a/i0/n;->f(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 14
    new-instance v10, Lw3/b/a/i0/n$g;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    move-object v5, v2

    check-cast v5, Lw3/b/a/i0/p;

    aget-object v1, v1, v4

    move-object v6, v1

    check-cast v6, Lw3/b/a/i0/o;

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lw3/b/a/i0/n$g;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lw3/b/a/i0/p;Lw3/b/a/i0/o;ZZ)V

    .line 15
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 17
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public d(Ljava/lang/String;)Lw3/b/a/i0/n;
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/i0/n$h;

    invoke-direct {v0, p1}, Lw3/b/a/i0/n$h;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-object p1, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-ne v1, p1, :cond_1

    .line 5
    instance-of p1, v1, Lw3/b/a/i0/n$c;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lw3/b/a/i0/n;->e()V

    .line 7
    new-instance p1, Lw3/b/a/i0/n$c;

    check-cast v1, Lw3/b/a/i0/n$c;

    invoke-direct {p1, v1, v0}, Lw3/b/a/i0/n$c;-><init>(Lw3/b/a/i0/n$c;Lw3/b/a/i0/n$f;)V

    .line 8
    iget-object v0, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    .line 11
    iget v1, p1, Lw3/b/a/i0/n$c;->e:I

    .line 12
    aput-object p1, v0, v1

    return-object p0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No field to apply suffix to"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method public g()Lw3/b/a/i0/m;
    .locals 13

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/n;->d:Ljava/util/List;

    iget-boolean v1, p0, Lw3/b/a/i0/n;->e:Z

    iget-boolean v2, p0, Lw3/b/a/i0/n;->f:Z

    invoke-static {v0, v1, v2}, Lw3/b/a/i0/n;->h(Ljava/util/List;ZZ)Lw3/b/a/i0/m;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    if-eqz v5, :cond_3

    .line 3
    iget-object v6, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    .line 4
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 6
    array-length v9, v6

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v6, v10

    if-eqz v11, :cond_0

    .line 7
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 8
    iget-object v12, v11, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v11, v11, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v6, v5, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    if-eqz v6, :cond_2

    .line 11
    invoke-interface {v6, v7}, Lw3/b/a/i0/n$f;->f(Ljava/util/Set;)V

    .line 12
    :cond_2
    iget-object v5, v5, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    if-eqz v5, :cond_3

    .line 13
    invoke-interface {v5, v8}, Lw3/b/a/i0/n$f;->f(Ljava/util/Set;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    invoke-virtual {v1}, [Lw3/b/a/i0/n$c;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lw3/b/a/i0/n$c;

    iput-object v1, p0, Lw3/b/a/i0/n;->g:[Lw3/b/a/i0/n$c;

    return-object v0
.end method
