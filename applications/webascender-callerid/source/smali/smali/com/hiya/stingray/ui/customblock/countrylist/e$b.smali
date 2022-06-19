.class final Lcom/hiya/stingray/ui/customblock/countrylist/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/countrylist/e;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/customblock/countrylist/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/countrylist/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e$b;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e$b;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/customblock/countrylist/f;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/hiya/stingray/ui/customblock/countrylist/f;->G(Ljava/util/List;Lcom/hiya/stingray/t/l0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/e$b;->a(Ljava/util/List;)V

    return-void
.end method
