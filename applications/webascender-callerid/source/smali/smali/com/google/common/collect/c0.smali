.class public Lcom/google/common/collect/c0;
.super Lcom/google/common/collect/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/h0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/c0$h;,
        Lcom/google/common/collect/c0$d;,
        Lcom/google/common/collect/c0$g;,
        Lcom/google/common/collect/c0$e;,
        Lcom/google/common/collect/c0$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f<",
        "TK;TV;>;",
        "Ljava/lang/Object<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient i:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient j:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/c0$e<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient l:I

.field private transient m:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/c0;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/f;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/o0;->c(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    return-void
.end method

.method private B(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/c0$h;-><init>(Lcom/google/common/collect/c0;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/b0;->c(Ljava/util/Iterator;)V

    return-void
.end method

.method private C(Lcom/google/common/collect/c0$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    iput-object v1, v0, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    iput-object v1, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    .line 4
    :goto_0
    iget-object v1, p1, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    if-eqz v1, :cond_1

    .line 5
    iput-object v0, v1, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    goto :goto_1

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/google/common/collect/c0;->j:Lcom/google/common/collect/c0$f;

    .line 7
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/common/collect/c0$f;->f:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/c0$e;

    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lcom/google/common/collect/c0$e;->c:I

    .line 10
    iget p1, p0, Lcom/google/common/collect/c0;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/c0;->m:I

    goto :goto_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/c0$f;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c0$e;

    .line 12
    iget v1, v0, Lcom/google/common/collect/c0$e;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/c0$e;->c:I

    .line 13
    iget-object v1, p1, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    if-nez v1, :cond_3

    .line 14
    iget-object v2, p1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    iput-object v2, v0, Lcom/google/common/collect/c0$e;->a:Lcom/google/common/collect/c0$f;

    goto :goto_2

    .line 15
    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    iput-object v2, v1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    .line 16
    :goto_2
    iget-object p1, p1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    if-nez p1, :cond_4

    .line 17
    iput-object v1, v0, Lcom/google/common/collect/c0$e;->b:Lcom/google/common/collect/c0$f;

    goto :goto_3

    .line 18
    :cond_4
    iput-object v1, p1, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    .line 19
    :goto_3
    iget p1, p0, Lcom/google/common/collect/c0;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/c0;->l:I

    return-void
.end method

.method static synthetic j(Lcom/google/common/collect/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/c0;->m:I

    return p0
.end method

.method static synthetic k(Lcom/google/common/collect/c0;)Lcom/google/common/collect/c0$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/c0;->j:Lcom/google/common/collect/c0$f;

    return-object p0
.end method

.method static synthetic l(Lcom/google/common/collect/c0;)Lcom/google/common/collect/c0$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    return-object p0
.end method

.method static synthetic m(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/c0;->t(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic n(Lcom/google/common/collect/c0;Lcom/google/common/collect/c0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0;->C(Lcom/google/common/collect/c0$f;)V

    return-void
.end method

.method static synthetic o(Lcom/google/common/collect/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0;->B(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic p(Lcom/google/common/collect/c0;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q(Lcom/google/common/collect/c0;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/c0$f;)Lcom/google/common/collect/c0$f;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/c0;->s(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/c0$f;)Lcom/google/common/collect/c0$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/google/common/collect/c0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/c0;->l:I

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/n;->K()Lcom/google/common/collect/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/c0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/c0$f;)Lcom/google/common/collect/c0$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$f;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/c0$f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    if-nez p2, :cond_0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/c0;->j:Lcom/google/common/collect/c0$f;

    iput-object v0, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    .line 4
    iget-object p2, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/c0$e;

    invoke-direct {p3, v0}, Lcom/google/common/collect/c0$e;-><init>(Lcom/google/common/collect/c0$f;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p1, p0, Lcom/google/common/collect/c0;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/c0;->m:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    .line 6
    iget-object p2, p0, Lcom/google/common/collect/c0;->j:Lcom/google/common/collect/c0$f;

    iput-object v0, p2, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    .line 7
    iput-object p2, v0, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    .line 8
    iput-object v0, p0, Lcom/google/common/collect/c0;->j:Lcom/google/common/collect/c0$f;

    .line 9
    iget-object p2, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/c0$e;

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/c0$e;

    invoke-direct {p3, v0}, Lcom/google/common/collect/c0$e;-><init>(Lcom/google/common/collect/c0$f;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget p1, p0, Lcom/google/common/collect/c0;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/c0;->m:I

    goto :goto_2

    .line 12
    :cond_1
    iget p1, p2, Lcom/google/common/collect/c0$e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/google/common/collect/c0$e;->c:I

    .line 13
    iget-object p1, p2, Lcom/google/common/collect/c0$e;->b:Lcom/google/common/collect/c0$f;

    .line 14
    iput-object v0, p1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    .line 15
    iput-object p1, v0, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    .line 16
    iput-object v0, p2, Lcom/google/common/collect/c0$e;->b:Lcom/google/common/collect/c0$f;

    goto :goto_2

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/c0$e;

    .line 18
    iget v1, p2, Lcom/google/common/collect/c0$e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/google/common/collect/c0$e;->c:I

    .line 19
    iget-object p2, p3, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    iput-object p2, v0, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    .line 20
    iget-object p2, p3, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    iput-object p2, v0, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    .line 21
    iput-object p3, v0, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    .line 22
    iput-object p3, v0, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    .line 23
    iget-object p2, p3, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    if-nez p2, :cond_3

    .line 24
    iget-object p2, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/c0$e;

    iput-object v0, p1, Lcom/google/common/collect/c0$e;->a:Lcom/google/common/collect/c0$f;

    goto :goto_0

    .line 25
    :cond_3
    iput-object v0, p2, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    .line 26
    :goto_0
    iget-object p1, p3, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    if-nez p1, :cond_4

    .line 27
    iput-object v0, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    goto :goto_1

    .line 28
    :cond_4
    iput-object v0, p1, Lcom/google/common/collect/c0$f;->h:Lcom/google/common/collect/c0$f;

    .line 29
    :goto_1
    iput-object v0, p3, Lcom/google/common/collect/c0$f;->i:Lcom/google/common/collect/c0$f;

    .line 30
    iput-object v0, p3, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    .line 31
    :goto_2
    iget p1, p0, Lcom/google/common/collect/c0;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/c0;->l:I

    return-object v0
.end method

.method private static t(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static u()Lcom/google/common/collect/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/c0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0;

    invoke-direct {v0}, Lcom/google/common/collect/c0;-><init>()V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/c0;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/c0;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/c0$h;-><init>(Lcom/google/common/collect/c0;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->i(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/c0;->B(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c0;->A(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/c0;->j:Lcom/google/common/collect/c0$f;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/common/collect/c0;->l:I

    .line 5
    iget v0, p0, Lcom/google/common/collect/c0;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/c0;->m:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/i0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i0$a;-><init>(Lcom/google/common/collect/h0;)V

    return-object v0
.end method

.method bridge synthetic e()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c0;->v()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c0$c;-><init>(Lcom/google/common/collect/c0;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c0;->x(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0;->i:Lcom/google/common/collect/c0$f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/c0;->l:I

    return v0
.end method

.method v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c0$b;-><init>(Lcom/google/common/collect/c0;)V

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/f;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public x(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/c0$a;-><init>(Lcom/google/common/collect/c0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public z(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/c0;->s(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/c0$f;)Lcom/google/common/collect/c0$f;

    const/4 p1, 0x1

    return p1
.end method
