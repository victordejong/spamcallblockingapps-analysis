.class Lcom/google/common/collect/c0$c;
.super Lcom/google/common/collect/t0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c0;->f()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t0$a<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/c0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$c;->f:Lcom/google/common/collect/c0;

    invoke-direct {p0}, Lcom/google/common/collect/t0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$c;->f:Lcom/google/common/collect/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$d;

    iget-object v1, p0, Lcom/google/common/collect/c0$c;->f:Lcom/google/common/collect/c0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c0$d;-><init>(Lcom/google/common/collect/c0;Lcom/google/common/collect/c0$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$c;->f:Lcom/google/common/collect/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c0;->A(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$c;->f:Lcom/google/common/collect/c0;

    invoke-static {v0}, Lcom/google/common/collect/c0;->p(Lcom/google/common/collect/c0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
