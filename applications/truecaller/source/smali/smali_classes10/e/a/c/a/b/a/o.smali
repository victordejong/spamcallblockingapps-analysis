.class public final Le/a/c/a/b/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

.field public final synthetic b:Le/a/c/a/g/p;

.field public final synthetic c:Le/a/c/a/b/a/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/widget/TypeSelectorView;Le/a/c/a/g/p;Le/a/c/a/b/a/l;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/o;->a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    iput-object p2, p0, Le/a/c/a/b/a/o;->b:Le/a/c/a/g/p;

    iput-object p3, p0, Le/a/c/a/b/a/o;->c:Le/a/c/a/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/b/a/o;->b:Le/a/c/a/g/p;

    iget-object p1, p1, Le/a/c/a/g/p;->d:Landroid/widget/Button;

    const-string v0, "confirmBtn"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Le/a/c/a/b/a/o;->c:Le/a/c/a/b/a/l;

    .line 3
    iget-object p1, p1, Le/a/c/a/b/a/l;->g:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/c/a/b/a/o;->c:Le/a/c/a/b/a/l;

    iget-object v1, p0, Le/a/c/a/b/a/o;->a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    .line 6
    iput-object v1, p1, Le/a/c/a/b/a/l;->g:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    const-string p1, "selectorView"

    .line 7
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/c/a/b/a/o;->a:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method
