.class public final Le/a/a/c/p7;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/q7;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a03c8

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/p7;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final N4()Lcom/truecaller/common/ui/chip/SimpleChipXView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/p7;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/chip/SimpleChipXView;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/c/p7;->N4()Lcom/truecaller/common/ui/chip/SimpleChipXView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->f1(Lcom/truecaller/common/ui/chip/SimpleChipXView;III)V

    return-void
.end method

.method public setOnClickListener(Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/p7;->N4()Lcom/truecaller/common/ui/chip/SimpleChipXView;

    move-result-object v0

    new-instance v1, Le/a/a/c/p7$a;

    invoke-direct {v1, p1}, Le/a/a/c/p7$a;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/p7;->N4()Lcom/truecaller/common/ui/chip/SimpleChipXView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->setTitle(I)V

    return-void
.end method
