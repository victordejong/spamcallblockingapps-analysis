.class public Lcom/truecaller/ui/components/ComboBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/ComboBase$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le/a/e/c2/i0;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ui/components/ComboBase$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ln3/b/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/ui/components/ComboBase;->e:I

    .line 3
    sget-object v1, Lcom/truecaller/R$styleable;->ComboBase:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const v1, 0x7f0d00e4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    if-ne v3, p2, :cond_1

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Le/a/o5/j0;->k(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz v2, :cond_4

    .line 14
    invoke-static {p2, v2}, Le/a/e/c2/i0;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/truecaller/ui/components/ComboBase;->setTitle(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/ui/components/ComboBase$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/truecaller/ui/components/ComboBase;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/ui/components/ComboBase$a;

    invoke-interface {v1, p0}, Lcom/truecaller/ui/components/ComboBase$a;->a(Lcom/truecaller/ui/components/ComboBase;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    return-object v0
.end method

.method public getSelection()Le/a/e/c2/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->b:Le/a/e/c2/i0;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    const v1, 0x7f1301f7

    invoke-direct {p1, v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->b:Le/a/e/c2/i0;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/ui/components/ComboBase;->e:I

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Le/a/e/c2/w;

    iget-object v1, p0, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    iget v2, p0, Lcom/truecaller/ui/components/ComboBase;->e:I

    iget-object v3, p0, Lcom/truecaller/ui/components/ComboBase;->b:Le/a/e/c2/i0;

    new-instance v4, Le/a/e/c2/c;

    invoke-direct {v4, p0}, Le/a/e/c2/c;-><init>(Lcom/truecaller/ui/components/ComboBase;)V

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/e/c2/w;-><init>(Ljava/util/List;ILe/a/e/c2/i0;Le/a/e/c2/w$b;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Le/a/e/c2/w;

    iget-object v1, p0, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Le/a/e/c2/w;-><init>(Ljava/util/List;)V

    :goto_0
    new-instance v1, Le/a/e/c2/d;

    invoke-direct {v1, p0}, Le/a/e/c2/d;-><init>(Lcom/truecaller/ui/components/ComboBase;)V

    .line 7
    iget-object v2, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 8
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    invoke-virtual {p1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/components/ComboBase;->f:Ln3/b/a/g;

    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    invoke-virtual {p0, p1}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    :cond_0
    return-void
.end method

.method public setListItemLayoutRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/components/ComboBase;->e:I

    return-void
.end method

.method public setSelection(Le/a/e/c2/i0;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/ComboBase;->b:Le/a/e/c2/i0;

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ui/components/ComboBase;->b:Le/a/e/c2/i0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/e/c2/i0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v2, 0x7f0a0b1f

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 4
    :cond_2
    iget p1, p1, Le/a/e/c2/i0;->a:I

    .line 5
    :goto_2
    sget v3, Le/a/o5/j0;->b:I

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7
    check-cast v2, Landroid/widget/ImageView;

    .line 8
    invoke-static {v2, p1}, Le/a/o5/j0;->o(Landroid/widget/ImageView;I)V

    const p1, 0x7f0a0b22

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    invoke-static {p1, v1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0b1e

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    invoke-static {p1, v0}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p1}, Le/a/e/c2/i0;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/components/ComboBase;->a:Ljava/lang/String;

    .line 2
    sget v0, Le/a/o5/j0;->b:I

    const v0, 0x7f0a0429

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    check-cast v0, Landroid/widget/TextView;

    .line 5
    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method
