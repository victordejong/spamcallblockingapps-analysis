.class final Lcom/hiya/stingray/ui/premium/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/l;->w()V
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
        "Lkotlin/l<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/m;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/m;->A(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/m;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/premium/m;->C0(I)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/m;

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-static {v0}, Lcom/hiya/stingray/ui/premium/l;->t(Lcom/hiya/stingray/ui/premium/l;)Lcom/hiya/stingray/manager/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/y2;->j()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/premium/m;->I0(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/l;->z()V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/l$b;->f:Lcom/hiya/stingray/ui/premium/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/m;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/premium/m;->b(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/l$b;->a(Lkotlin/l;)V

    return-void
.end method
