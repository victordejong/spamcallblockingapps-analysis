.class Lcom/google/common/collect/q0$a;
.super Lcom/google/common/collect/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/z<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient h:Lcom/google/common/collect/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient i:[Ljava/lang/Object;

.field private final transient j:I

.field private final transient k:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/y;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/y<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/z;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/q0$a;->h:Lcom/google/common/collect/y;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/q0$a;->i:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/common/collect/q0$a;->j:I

    .line 5
    iput p4, p0, Lcom/google/common/collect/q0$a;->k:I

    return-void
.end method

.method static synthetic F(Lcom/google/common/collect/q0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/q0$a;->k:I

    return p0
.end method

.method static synthetic G(Lcom/google/common/collect/q0$a;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/q0$a;->i:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic H(Lcom/google/common/collect/q0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/collect/q0$a;->j:I

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/q0$a;->h:Lcom/google/common/collect/y;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z;->c()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q0$a;->k()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/google/common/collect/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z;->c()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x;->k()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/q0$a;->k:I

    return v0
.end method

.method w()Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/q0$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q0$a$a;-><init>(Lcom/google/common/collect/q0$a;)V

    return-object v0
.end method
