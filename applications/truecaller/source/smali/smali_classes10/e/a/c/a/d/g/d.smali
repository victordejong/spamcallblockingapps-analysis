.class public final Le/a/c/a/d/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/d;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Le/a/c/a/d/g/d;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 2
    sget v1, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->g:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.emptyState"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/a;->j:Landroidx/viewpager2/widget/ViewPager2;

    const-string v2, "binding.viewPager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/a;->i:Lcom/truecaller/common/ui/tablayout/TabLayoutX;

    const-string v2, "binding.tabs"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/a;->e:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const-string v1, "binding.filterFab"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
