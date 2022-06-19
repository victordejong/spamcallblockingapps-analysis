.class Lcom/google/common/collect/l;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l$h;,
        Lcom/google/common/collect/l$g;,
        Lcom/google/common/collect/l$d;,
        Lcom/google/common/collect/l$f;,
        Lcom/google/common/collect/l$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/Object;


# instance fields
.field private transient f:Ljava/lang/Object;

.field transient g:[I

.field transient h:[Ljava/lang/Object;

.field transient i:[Ljava/lang/Object;

.field private transient j:I

.field private transient k:I

.field private transient l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/l;->o:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->z(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l;->z(I)V

    return-void
.end method

.method private E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/common/collect/l;->o:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/l;->w()I

    move-result v7

    const/4 v1, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/l;->g:[I

    iget-object v5, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/m;->f(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 6
    sget-object p1, Lcom/google/common/collect/l;->o:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 8
    invoke-virtual {p0, p1, v7}, Lcom/google/common/collect/l;->C(II)V

    .line 9
    iget p1, p0, Lcom/google/common/collect/l;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/l;->k:I

    .line 10
    invoke-virtual {p0}, Lcom/google/common/collect/l;->x()V

    return-object v0
.end method

.method private G(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->g:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    const p1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    or-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l;->F(I)V

    :cond_0
    return-void
.end method

.method private H(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/m;->a(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 2
    invoke-static {v0, p3, p4}, Lcom/google/common/collect/m;->i(Ljava/lang/Object;II)V

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    .line 4
    iget-object p4, p0, Lcom/google/common/collect/l;->g:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 5
    invoke-static {p3, v1}, Lcom/google/common/collect/m;->h(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget v4, p4, v3

    .line 7
    invoke-static {v4, p1}, Lcom/google/common/collect/m;->b(II)I

    move-result v5

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 8
    invoke-static {v0, v6}, Lcom/google/common/collect/m;->h(Ljava/lang/Object;I)I

    move-result v7

    .line 9
    invoke-static {v0, v6, v2}, Lcom/google/common/collect/m;->i(Ljava/lang/Object;II)V

    .line 10
    invoke-static {v5, v7, p2}, Lcom/google/common/collect/m;->d(III)I

    move-result v2

    aput v2, p4, v3

    .line 11
    invoke-static {v4, p1}, Lcom/google/common/collect/m;->c(II)I

    move-result v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p2}, Lcom/google/common/collect/l;->I(I)V

    return p2
.end method

.method private I(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 2
    iget v0, p0, Lcom/google/common/collect/l;->j:I

    const/16 v1, 0x1f

    .line 3
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/m;->d(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/l;->j:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/l;->j:I

    return p0
.end method

.method static synthetic b(Lcom/google/common/collect/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/l;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/common/collect/l;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;->y(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/common/collect/l;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/l;->w()I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/google/common/collect/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/google/common/collect/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->k:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/l;->k:I

    return v0
.end method

.method public static m()Lcom/google/common/collect/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/l<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l;

    invoke-direct {v0}, Lcom/google/common/collect/l;-><init>()V

    return-object v0
.end method

.method public static r(I)Lcom/google/common/collect/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/l<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l;-><init>(I)V

    return-object v0
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
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->z(I)V

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
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private w()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->j:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
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
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/l;->t()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y(Ljava/lang/Object;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->D()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/u;->c(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/l;->w()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/m;->h(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-static {v0, v2}, Lcom/google/common/collect/m;->b(II)I

    move-result v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 6
    iget-object v4, p0, Lcom/google/common/collect/l;->g:[I

    aget v4, v4, v3

    .line 7
    invoke-static {v4, v2}, Lcom/google/common/collect/m;->b(II)I

    move-result v5

    if-ne v5, v0, :cond_3

    iget-object v5, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    aget-object v5, v5, v3

    .line 8
    invoke-static {p1, v5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    .line 9
    :cond_3
    invoke-static {v4, v2}, Lcom/google/common/collect/m;->c(II)I

    move-result v3

    if-nez v3, :cond_2

    return v1
.end method


# virtual methods
.method A(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->g:[I

    const/4 v1, 0x0

    invoke-static {p4, v1, p5}, Lcom/google/common/collect/m;->d(III)I

    move-result p4

    aput p4, v0, p1

    .line 2
    iget-object p4, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    aput-object p2, p4, p1

    .line 3
    iget-object p2, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return-void
.end method

.method B()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/l$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$a;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method C(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 3
    aput-object v4, v3, p1

    .line 4
    iget-object v5, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 5
    aput-object v2, v3, v0

    .line 6
    aput-object v2, v5, v0

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/l;->g:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 8
    aput v1, v2, v0

    .line 9
    invoke-static {v4}, Lcom/google/common/collect/u;->c(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 10
    iget-object v2, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/common/collect/m;->h(Ljava/lang/Object;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_0

    .line 11
    iget-object p2, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lcom/google/common/collect/m;->i(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 12
    iget-object v1, p0, Lcom/google/common/collect/l;->g:[I

    aget v1, v1, v2

    .line 13
    invoke-static {v1, p2}, Lcom/google/common/collect/m;->c(II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/common/collect/l;->g:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1, p2}, Lcom/google/common/collect/m;->d(III)I

    move-result p1

    aput p1, v0, v2

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 16
    iget-object p2, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 17
    iget-object p2, p0, Lcom/google/common/collect/l;->g:[I

    aput v1, p2, p1

    :goto_1
    return-void
.end method

.method D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method F(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->g:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->g:[I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    return-void
.end method

.method J()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/l$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$c;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method public clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/l;->x()V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lg/f/b/b/a;->a(III)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/l;->j:I

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iput-object v1, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    .line 7
    iput v2, p0, Lcom/google/common/collect/l;->k:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/l;->k:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/l;->k:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/m;->g(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/common/collect/l;->g:[I

    iget v1, p0, Lcom/google/common/collect/l;->k:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 12
    iput v2, p0, Lcom/google/common/collect/l;->k:I

    :goto_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;->y(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/common/collect/l;->k:I

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/l;->n()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->m:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;->y(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l;->i(I)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method i(I)V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method k()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->D()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/google/common/collect/l;->j:I

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/m;->j(I)I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/m;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/common/collect/l;->I(I)V

    .line 6
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/l;->g:[I

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/l;->p()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->l:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method l()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/l;->w()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->o(I)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/l;->u()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/common/collect/l;->v(I)I

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/google/common/collect/l;->g:[I

    .line 7
    iput-object v1, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/l;->x()V

    return-object v0
.end method

.method n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$d;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method o(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method

.method p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$f;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/l;->k()I

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l;->g:[I

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/l;->h:[Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    .line 8
    iget v4, p0, Lcom/google/common/collect/l;->k:I

    add-int/lit8 v9, v4, 0x1

    .line 9
    invoke-static {p1}, Lcom/google/common/collect/u;->c(Ljava/lang/Object;)I

    move-result v7

    .line 10
    invoke-direct {p0}, Lcom/google/common/collect/l;->w()I

    move-result v3

    and-int v5, v7, v3

    .line 11
    iget-object v6, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    invoke-static {v6, v5}, Lcom/google/common/collect/m;->h(Ljava/lang/Object;I)I

    move-result v6

    if-nez v6, :cond_3

    if-le v9, v3, :cond_2

    .line 12
    invoke-static {v3}, Lcom/google/common/collect/m;->e(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v7, v4}, Lcom/google/common/collect/l;->H(IIII)I

    move-result v0

    :goto_0
    move v8, v0

    goto :goto_3

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    invoke-static {v0, v5, v9}, Lcom/google/common/collect/m;->i(Ljava/lang/Object;II)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {v7, v3}, Lcom/google/common/collect/m;->b(II)I

    move-result v5

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 15
    aget v10, v0, v6

    .line 16
    invoke-static {v10, v3}, Lcom/google/common/collect/m;->b(II)I

    move-result v11

    if-ne v11, v5, :cond_4

    aget-object v11, v1, v6

    .line 17
    invoke-static {p1, v11}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 18
    aget-object p1, v2, v6

    .line 19
    aput-object p2, v2, v6

    .line 20
    invoke-virtual {p0, v6}, Lcom/google/common/collect/l;->i(I)V

    return-object p1

    .line 21
    :cond_4
    invoke-static {v10, v3}, Lcom/google/common/collect/m;->c(II)I

    move-result v11

    add-int/lit8 v8, v8, 0x1

    if-nez v11, :cond_7

    const/16 v1, 0x9

    if-lt v8, v1, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/google/common/collect/l;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    if-le v9, v3, :cond_6

    .line 23
    invoke-static {v3}, Lcom/google/common/collect/m;->e(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v7, v4}, Lcom/google/common/collect/l;->H(IIII)I

    move-result v0

    goto :goto_0

    .line 24
    :cond_6
    invoke-static {v10, v9, v3}, Lcom/google/common/collect/m;->d(III)I

    move-result v1

    aput v1, v0, v6

    :goto_2
    move v8, v3

    .line 25
    :goto_3
    invoke-direct {p0, v9}, Lcom/google/common/collect/l;->G(I)V

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    .line 26
    invoke-virtual/range {v3 .. v8}, Lcom/google/common/collect/l;->A(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 27
    iput v9, p0, Lcom/google/common/collect/l;->k:I

    .line 28
    invoke-virtual {p0}, Lcom/google/common/collect/l;->x()V

    const/4 p1, 0x0

    return-object p1

    :cond_7
    move v6, v11

    goto :goto_1
.end method

.method q()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$h;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/common/collect/l;->o:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method s()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/l;->k:I

    :goto_0
    return v0
.end method

.method t()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/l$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$b;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method u()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method v(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->k:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->n:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/l;->q()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->n:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method x()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->j:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/l;->j:I

    return-void
.end method

.method z(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    .line 1
    invoke-static {v1, v2}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 2
    invoke-static {p1, v0, v1}, Lg/f/b/b/a;->a(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/l;->j:I

    return-void
.end method
