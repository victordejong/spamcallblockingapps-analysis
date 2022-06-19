.class public final synthetic Le/a/e/c2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/NewComboBase;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/NewComboBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/p;->a:Lcom/truecaller/ui/components/NewComboBase;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Le/a/e/c2/p;->a:Lcom/truecaller/ui/components/NewComboBase;

    .line 1
    iget-object v0, p1, Lcom/truecaller/ui/components/NewComboBase;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/e/c2/i0;

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/NewComboBase;->setSelection(Le/a/e/c2/i0;)V

    .line 2
    iget-object p2, p1, Lcom/truecaller/ui/components/NewComboBase;->d:Lcom/truecaller/ui/components/NewComboBase$a;

    if-eqz p2, :cond_1

    .line 3
    check-cast p2, Le/a/e/n;

    .line 4
    iget-object v0, p2, Le/a/e/n;->a:Le/a/e/v0;

    iget v1, p2, Le/a/e/n;->b:I

    iget p2, p2, Le/a/e/n;->c:I

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget v2, Le/a/o5/j0;->b:I

    const v2, 0x7f0a0b1e

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 8
    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, v0, Le/a/e/v0;->x:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/e/c2/i0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v5

    invoke-virtual {v3, v5}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/truecaller/ui/components/NewComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v5

    invoke-virtual {p1, v5}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, v0, Le/a/e/v0;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v4}, Le/a/e/v0;->aB(Landroid/widget/TextView;Z)V

    :cond_1
    :goto_0
    return-void
.end method
