.class Lcom/google/common/collect/l$b;
.super Lcom/google/common/collect/l$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l;->t()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic j:Lcom/google/common/collect/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l$b;->j:Lcom/google/common/collect/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/l$e;-><init>(Lcom/google/common/collect/l;Lcom/google/common/collect/l$a;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$b;->e(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method e(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l$g;

    iget-object v1, p0, Lcom/google/common/collect/l$b;->j:Lcom/google/common/collect/l;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/l$g;-><init>(Lcom/google/common/collect/l;I)V

    return-object v0
.end method
