.class public Lcom/truecaller/ui/components/NewComboBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/NewComboBase$a;
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

.field public d:Lcom/truecaller/ui/components/NewComboBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00e7

    invoke-static {v1, v2}, Le/a/o5/j0;->k(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080432

    const v3, 0x7f04068f

    invoke-static {v1, v2, v3}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0a065d

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    sget-object v1, Lcom/truecaller/R$styleable;->NewComboBase:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/e/c2/i0;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/truecaller/ui/components/NewComboBase;->setTitle(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSelection()Le/a/e/c2/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/NewComboBase;->b:Le/a/e/c2/i0;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/truecaller/ui/components/NewComboBase;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 3
    new-instance v0, Le/a/e/c2/w;

    iget-object v1, p0, Lcom/truecaller/ui/components/NewComboBase;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Le/a/e/c2/w;-><init>(Ljava/util/List;)V

    new-instance v1, Le/a/e/c2/p;

    invoke-direct {v1, p0}, Le/a/e/c2/p;-><init>(Lcom/truecaller/ui/components/NewComboBase;)V

    .line 4
    iget-object v2, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 5
    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    invoke-virtual {p1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

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
    iput-object p1, p0, Lcom/truecaller/ui/components/NewComboBase;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/ui/components/NewComboBase;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    invoke-virtual {p0, p1}, Lcom/truecaller/ui/components/NewComboBase;->setSelection(Le/a/e/c2/i0;)V

    :cond_0
    return-void
.end method

.method public setObserver(Lcom/truecaller/ui/components/NewComboBase$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/NewComboBase;->d:Lcom/truecaller/ui/components/NewComboBase$a;

    return-void
.end method

.method public setSelection(Le/a/e/c2/i0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/NewComboBase;->b:Le/a/e/c2/i0;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const v0, 0x7f0a0b1e

    .line 3
    sget v1, Le/a/o5/j0;->b:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p1}, Le/a/e/c2/i0;->c(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/components/NewComboBase;->a:Ljava/lang/String;

    return-void
.end method
