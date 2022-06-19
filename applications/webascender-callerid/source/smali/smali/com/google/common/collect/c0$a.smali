.class Lcom/google/common/collect/c0$a;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c0;->x(Ljava/lang/Object;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/google/common/collect/c0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$a;->g:Lcom/google/common/collect/c0;

    iput-object p2, p0, Lcom/google/common/collect/c0$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$h;

    iget-object v1, p0, Lcom/google/common/collect/c0$a;->g:Lcom/google/common/collect/c0;

    iget-object v2, p0, Lcom/google/common/collect/c0$a;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/c0$h;-><init>(Lcom/google/common/collect/c0;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->g:Lcom/google/common/collect/c0;

    invoke-static {v0}, Lcom/google/common/collect/c0;->p(Lcom/google/common/collect/c0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/c0$a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/c0$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Lcom/google/common/collect/c0$e;->c:I

    :goto_0
    return v0
.end method
