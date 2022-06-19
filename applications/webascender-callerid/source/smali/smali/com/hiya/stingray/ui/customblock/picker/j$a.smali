.class Lcom/hiya/stingray/ui/customblock/picker/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/picker/j;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/t/d0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/customblock/picker/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/picker/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/picker/j$a;->f:Lcom/hiya/stingray/ui/customblock/picker/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/picker/j$a;->f:Lcom/hiya/stingray/ui/customblock/picker/j;

    invoke-static {v0}, Lcom/hiya/stingray/ui/customblock/picker/j;->t(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/t/i1/c0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/t/i1/c0;->a(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)Lcom/hiya/stingray/t/p0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/picker/j$a;->f:Lcom/hiya/stingray/ui/customblock/picker/j;

    invoke-static {v1}, Lcom/hiya/stingray/ui/customblock/picker/j;->u(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/t/i1/t0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/i1/t0;->a(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/z0;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/picker/j$a;->f:Lcom/hiya/stingray/ui/customblock/picker/j;

    invoke-static {v2}, Lcom/hiya/stingray/ui/customblock/picker/j;->w(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/t/i1/t;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/picker/j$a;->f:Lcom/hiya/stingray/ui/customblock/picker/j;

    invoke-static {v3}, Lcom/hiya/stingray/ui/customblock/picker/j;->v(Lcom/hiya/stingray/ui/customblock/picker/j;)Lcom/hiya/stingray/manager/u3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hiya/stingray/t/i1/t;->a(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/customblock/picker/e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/customblock/picker/e;-><init>(Lcom/hiya/stingray/ui/customblock/picker/j$a;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/picker/j$a;->f:Lcom/hiya/stingray/ui/customblock/picker/j;

    iget-object v1, v1, Lcom/hiya/stingray/ui/common/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/ui/customblock/picker/k;

    invoke-interface {v1, p1, v0}, Lcom/hiya/stingray/ui/customblock/picker/k;->z(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/customblock/picker/j$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/b;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/picker/j$a;->b(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/b;

    move-result-object p1

    return-object p1
.end method
