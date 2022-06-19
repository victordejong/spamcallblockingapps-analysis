.class public abstract Ls1/a/a/a/v0/h/h$d;
.super Ls1/a/a/a/v0/h/h;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/h/h$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ls1/a/a/a/v0/h/h$d<",
        "TMessageType;>;>",
        "Ls1/a/a/a/v0/h/h;",
        "Ljava/lang/Object<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/h/g<",
            "Ls1/a/a/a/v0/h/h$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/h/g;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/g;-><init>()V

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/h/h$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/h/h$c<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h;-><init>()V

    .line 5
    iget-object v0, p1, Ls1/a/a/a/v0/h/h$c;->b:Ls1/a/a/a/v0/h/g;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/g;->i()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Ls1/a/a/a/v0/h/h$c;->c:Z

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$c;->b:Ls1/a/a/a/v0/h/g;

    .line 8
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v3}, Ls1/a/a/a/v0/h/u;->h()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v3, v2}, Ls1/a/a/a/v0/h/u;->g(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/h/g;->h(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v2}, Ls1/a/a/a/v0/h/u;->i()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/h/g;->h(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public e()I
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v3}, Ls1/a/a/a/v0/h/u;->h()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3
    iget-object v3, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v3, v1}, Ls1/a/a/a/v0/h/u;->g(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/h/g$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ls1/a/a/a/v0/h/g;->e(Ls1/a/a/a/v0/h/g$a;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/u;->i()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/g$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ls1/a/a/a/v0/h/g;->e(Ls1/a/a/a/v0/h/g$a;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final f(Ls1/a/a/a/v0/h/h$f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/h/h$f<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$d;->k(Ls1/a/a/a/v0/h/h$f;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    iget-object v1, p1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/h/g;->f(Ls1/a/a/a/v0/h/g$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$f;->b:Ljava/lang/Object;

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 5
    iget-boolean v2, v1, Ls1/a/a/a/v0/h/h$e;->d:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 7
    iget-object v1, v1, Ls1/a/a/a/v0/h/y;->a:Ls1/a/a/a/v0/h/z;

    .line 8
    sget-object v2, Ls1/a/a/a/v0/h/z;->i:Ls1/a/a/a/v0/h/z;

    if-ne v1, v2, :cond_3

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v2}, Ls1/a/a/a/v0/h/h$f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/h/h$f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final g(Ls1/a/a/a/v0/h/h$f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/h/h$f<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$d;->k(Ls1/a/a/a/v0/h/h$f;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    iget-object p1, p1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/h$e;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/h/g;->a:Ls1/a/a/a/v0/h/u;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/g;->i()V

    return-void
.end method

.method public i()Ls1/a/a/a/v0/h/h$d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/v0/h/h$d<",
            "TMessageType;>.a;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/h$d$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ls1/a/a/a/v0/h/h$d$a;-><init>(Ls1/a/a/a/v0/h/h$d;ZLs1/a/a/a/v0/h/h$a;)V

    return-object v0
.end method

.method public j(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/e;Ls1/a/a/a/v0/h/f;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$d;->a:Ls1/a/a/a/v0/h/g;

    invoke-interface {p0}, Ls1/a/a/a/v0/h/q;->getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;

    move-result-object v1

    and-int/lit8 v2, p4, 0x7

    ushr-int/lit8 v3, p4, 0x3

    .line 2
    iget-object v4, p3, Ls1/a/a/a/v0/h/f;->a:Ljava/util/Map;

    new-instance v5, Ls1/a/a/a/v0/h/f$a;

    invoke-direct {v5, v1, v3}, Ls1/a/a/a/v0/h/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/h$f;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 4
    iget-object v5, v5, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 5
    invoke-static {v5, v3}, Ls1/a/a/a/v0/h/g;->g(Ls1/a/a/a/v0/h/y;Z)I

    move-result v5

    if-ne v2, v5, :cond_1

    move v2, v3

    move v5, v2

    goto :goto_1

    .line 6
    :cond_1
    iget-object v5, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    iget-boolean v6, v5, Ls1/a/a/a/v0/h/h$e;->d:Z

    if-eqz v6, :cond_2

    iget-object v5, v5, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    invoke-virtual {v5}, Ls1/a/a/a/v0/h/y;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 7
    iget-object v5, v5, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 8
    invoke-static {v5, v4}, Ls1/a/a/a/v0/h/g;->g(Ls1/a/a/a/v0/h/y;Z)I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v3

    move v5, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v3

    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p1, p4, p2}, Ls1/a/a/a/v0/h/d;->r(ILs1/a/a/a/v0/h/e;)Z

    move-result v4

    goto/16 :goto_6

    :cond_3
    if-eqz v5, :cond_7

    .line 10
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result p2

    .line 11
    invoke-virtual {p1, p2}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result p2

    .line 12
    iget-object p3, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 13
    iget-object p3, p3, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 14
    sget-object p4, Ls1/a/a/a/v0/h/y;->p:Ls1/a/a/a/v0/h/y;

    if-ne p3, p4, :cond_5

    .line 15
    :goto_2
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result p3

    if-lez p3, :cond_6

    .line 16
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result p3

    .line 17
    iget-object p4, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 18
    iget-object p4, p4, Ls1/a/a/a/v0/h/h$e;->a:Ls1/a/a/a/v0/h/i$b;

    .line 19
    invoke-interface {p4, p3}, Ls1/a/a/a/v0/h/i$b;->findValueByNumber(I)Ls1/a/a/a/v0/h/i$a;

    move-result-object p3

    if-nez p3, :cond_4

    goto/16 :goto_6

    .line 20
    :cond_4
    iget-object p4, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    invoke-virtual {v1, p3}, Ls1/a/a/a/v0/h/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Ls1/a/a/a/v0/h/g;->a(Ls1/a/a/a/v0/h/g$a;Ljava/lang/Object;)V

    goto :goto_2

    .line 21
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->b()I

    move-result p3

    if-lez p3, :cond_6

    .line 22
    iget-object p3, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 23
    iget-object p3, p3, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 24
    invoke-static {p1, p3, v3}, Ls1/a/a/a/v0/h/g;->k(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/y;Z)Ljava/lang/Object;

    move-result-object p3

    .line 25
    iget-object p4, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    invoke-virtual {v0, p4, p3}, Ls1/a/a/a/v0/h/g;->a(Ls1/a/a/a/v0/h/g$a;Ljava/lang/Object;)V

    goto :goto_3

    .line 26
    :cond_6
    iput p2, p1, Ls1/a/a/a/v0/h/d;->i:I

    .line 27
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->p()V

    goto/16 :goto_6

    .line 28
    :cond_7
    iget-object v2, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 29
    iget-object v2, v2, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 30
    iget-object v2, v2, Ls1/a/a/a/v0/h/y;->a:Ls1/a/a/a/v0/h/z;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_e

    const/16 p2, 0x8

    if-eq v2, p2, :cond_8

    .line 32
    iget-object p2, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 33
    iget-object p2, p2, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 34
    invoke-static {p1, p2, v3}, Ls1/a/a/a/v0/h/g;->k(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/y;Z)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_5

    :cond_8
    const/4 p2, 0x0

    .line 35
    iget-object p4, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 36
    iget-boolean v2, p4, Ls1/a/a/a/v0/h/h$e;->d:Z

    if-nez v2, :cond_9

    .line 37
    invoke-virtual {v0, p4}, Ls1/a/a/a/v0/h/g;->f(Ls1/a/a/a/v0/h/g$a;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ls1/a/a/a/v0/h/p;

    if-eqz p4, :cond_9

    .line 38
    invoke-interface {p4}, Ls1/a/a/a/v0/h/p;->toBuilder()Ls1/a/a/a/v0/h/p$a;

    move-result-object p2

    :cond_9
    if-nez p2, :cond_a

    .line 39
    iget-object p2, v1, Ls1/a/a/a/v0/h/h$f;->c:Ls1/a/a/a/v0/h/p;

    .line 40
    invoke-interface {p2}, Ls1/a/a/a/v0/h/p;->newBuilderForType()Ls1/a/a/a/v0/h/p$a;

    move-result-object p2

    .line 41
    :cond_a
    iget-object p4, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 42
    iget-object v2, p4, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 43
    sget-object v5, Ls1/a/a/a/v0/h/y;->l:Ls1/a/a/a/v0/h/y;

    const/16 v6, 0x40

    if-ne v2, v5, :cond_c

    .line 44
    iget p4, p4, Ls1/a/a/a/v0/h/h$e;->b:I

    .line 45
    iget v2, p1, Ls1/a/a/a/v0/h/d;->j:I

    if-ge v2, v6, :cond_b

    add-int/2addr v2, v4

    .line 46
    iput v2, p1, Ls1/a/a/a/v0/h/d;->j:I

    .line 47
    invoke-interface {p2, p1, p3}, Ls1/a/a/a/v0/h/p$a;->I(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p$a;

    shl-int/lit8 p3, p4, 0x3

    or-int/lit8 p3, p3, 0x4

    .line 48
    invoke-virtual {p1, p3}, Ls1/a/a/a/v0/h/d;->a(I)V

    .line 49
    iget p3, p1, Ls1/a/a/a/v0/h/d;->j:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Ls1/a/a/a/v0/h/d;->j:I

    goto :goto_4

    .line 50
    :cond_b
    invoke-static {}, Ls1/a/a/a/v0/h/j;->b()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 51
    :cond_c
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result p4

    .line 52
    iget v2, p1, Ls1/a/a/a/v0/h/d;->j:I

    if-ge v2, v6, :cond_d

    .line 53
    invoke-virtual {p1, p4}, Ls1/a/a/a/v0/h/d;->d(I)I

    move-result p4

    .line 54
    iget v2, p1, Ls1/a/a/a/v0/h/d;->j:I

    add-int/2addr v2, v4

    iput v2, p1, Ls1/a/a/a/v0/h/d;->j:I

    .line 55
    invoke-interface {p2, p1, p3}, Ls1/a/a/a/v0/h/p$a;->I(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p$a;

    .line 56
    invoke-virtual {p1, v3}, Ls1/a/a/a/v0/h/d;->a(I)V

    .line 57
    iget p3, p1, Ls1/a/a/a/v0/h/d;->j:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Ls1/a/a/a/v0/h/d;->j:I

    .line 58
    iput p4, p1, Ls1/a/a/a/v0/h/d;->i:I

    .line 59
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->p()V

    .line 60
    :goto_4
    invoke-interface {p2}, Ls1/a/a/a/v0/h/p$a;->build()Ls1/a/a/a/v0/h/p;

    move-result-object p1

    goto :goto_5

    .line 61
    :cond_d
    invoke-static {}, Ls1/a/a/a/v0/h/j;->b()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 62
    :cond_e
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/d;->l()I

    move-result p1

    .line 63
    iget-object p3, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 64
    iget-object p3, p3, Ls1/a/a/a/v0/h/h$e;->a:Ls1/a/a/a/v0/h/i$b;

    .line 65
    invoke-interface {p3, p1}, Ls1/a/a/a/v0/h/i$b;->findValueByNumber(I)Ls1/a/a/a/v0/h/i$a;

    move-result-object p3

    if-nez p3, :cond_f

    .line 66
    invoke-virtual {p2, p4}, Ls1/a/a/a/v0/h/e;->y(I)V

    .line 67
    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/h/e;->y(I)V

    goto :goto_6

    :cond_f
    move-object p1, p3

    .line 68
    :goto_5
    iget-object p2, v1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 69
    iget-boolean p3, p2, Ls1/a/a/a/v0/h/h$e;->d:Z

    if-eqz p3, :cond_10

    .line 70
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/h/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ls1/a/a/a/v0/h/g;->a(Ls1/a/a/a/v0/h/g$a;Ljava/lang/Object;)V

    goto :goto_6

    .line 71
    :cond_10
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/h/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ls1/a/a/a/v0/h/g;->l(Ls1/a/a/a/v0/h/g$a;Ljava/lang/Object;)V

    :goto_6
    return v4
.end method

.method public final k(Ls1/a/a/a/v0/h/h$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/h/h$f<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Ls1/a/a/a/v0/h/h$f;->a:Ls1/a/a/a/v0/h/p;

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/h/q;->getDefaultInstanceForType()Ls1/a/a/a/v0/h/p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
