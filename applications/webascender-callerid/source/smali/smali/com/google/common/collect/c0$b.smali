.class Lcom/google/common/collect/c0$b;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c0;->v()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/c0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$b;->f:Lcom/google/common/collect/c0;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$g;

    iget-object v1, p0, Lcom/google/common/collect/c0$b;->f:Lcom/google/common/collect/c0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/c0$g;-><init>(Lcom/google/common/collect/c0;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$b;->f:Lcom/google/common/collect/c0;

    invoke-static {v0}, Lcom/google/common/collect/c0;->r(Lcom/google/common/collect/c0;)I

    move-result v0

    return v0
.end method
