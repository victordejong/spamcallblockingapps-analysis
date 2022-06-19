.class public final Le/a/c/a/b/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

.field public final synthetic b:Le/a/c/a/b/a/r;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/widget/TypeSelectorView;Le/a/c/a/b/a/r;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/u;->a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    iput-object p2, p0, Le/a/c/a/b/a/u;->b:Le/a/c/a/b/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/b/a/u;->b:Le/a/c/a/b/a/r;

    .line 2
    sget-object v0, Le/a/c/a/b/a/r;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/b/a/r;->OA()Le/a/c/a/g/s;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/c/a/g/s;->e:Landroid/widget/Button;

    const-string v0, "binding.confirmBtn"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Le/a/c/a/b/a/u;->b:Le/a/c/a/b/a/r;

    .line 6
    iget-object p1, p1, Le/a/c/a/b/a/r;->g:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/c/a/b/a/u;->b:Le/a/c/a/b/a/r;

    iget-object v1, p0, Le/a/c/a/b/a/u;->a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    .line 9
    iput-object v1, p1, Le/a/c/a/b/a/r;->g:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    const-string p1, "selectorView"

    .line 10
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/c/a/b/a/u;->a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method
