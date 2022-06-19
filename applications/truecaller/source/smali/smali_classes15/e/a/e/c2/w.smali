.class public Le/a/e/c2/w;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c2/w$a;,
        Le/a/e/c2/w$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Le/a/e/c2/i0;

.field public final c:Le/a/e/c2/w$b;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/c2/w;->d:Ljava/util/List;

    const p1, 0x7f0d039c

    .line 3
    iput p1, p0, Le/a/e/c2/w;->a:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/a/e/c2/w;->b:Le/a/e/c2/i0;

    .line 5
    iput-object p1, p0, Le/a/e/c2/w;->c:Le/a/e/c2/w$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILe/a/e/c2/i0;Le/a/e/c2/w$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/e/c2/i0;",
            ">;I",
            "Le/a/e/c2/i0;",
            "Le/a/e/c2/w$b;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    iput-object p1, p0, Le/a/e/c2/w;->d:Ljava/util/List;

    if-nez p2, :cond_0

    const p2, 0x7f0d039c

    .line 8
    :cond_0
    iput p2, p0, Le/a/e/c2/w;->a:I

    .line 9
    iput-object p3, p0, Le/a/e/c2/w;->b:Le/a/e/c2/i0;

    .line 10
    iput-object p4, p0, Le/a/e/c2/w;->c:Le/a/e/c2/w$b;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c2/w;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/e/c2/i0;

    iput-object p1, p0, Le/a/e/c2/w;->b:Le/a/e/c2/i0;

    .line 3
    iget-object v0, p0, Le/a/e/c2/w;->c:Le/a/e/c2/w$b;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Le/a/e/c2/c;

    .line 5
    iget-object v0, v0, Le/a/e/c2/c;->a:Lcom/truecaller/ui/components/ComboBase;

    .line 6
    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/ui/components/ComboBase;->b()V

    .line 8
    iget-object p1, v0, Lcom/truecaller/ui/components/ComboBase;->f:Ln3/b/a/g;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c2/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c2/w;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/e/c2/w$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v2, p0, Le/a/e/c2/w;->a:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Le/a/e/c2/w$a;

    invoke-direct {p3, p2}, Le/a/e/c2/w$a;-><init>(Landroid/view/View;)V

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/e/c2/w;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Le/a/e/c2/i0;

    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v2, v0}, Le/a/e/c2/i0;->g(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 8
    iget-object v5, p3, Le/a/e/c2/w$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v5, p3, Le/a/e/c2/w$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2, v0}, Le/a/e/c2/i0;->f(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v5, p3, Le/a/e/c2/w$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v5, p3, Le/a/e/c2/w$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v3, p3, Le/a/e/c2/w$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object v3, p3, Le/a/e/c2/w$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Le/a/e/c2/i0;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v3, p3, Le/a/e/c2/w$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Le/a/e/c2/i0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v3, p3, Le/a/e/c2/w$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Le/a/e/c2/i0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p3, Le/a/e/c2/w$a;->d:Landroid/widget/RadioButton;

    if-eqz v0, :cond_5

    iget-object v3, p0, Le/a/e/c2/w;->b:Le/a/e/c2/i0;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    iget-object v0, p3, Le/a/e/c2/w$a;->d:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Le/a/e/c2/w;->b:Le/a/e/c2/i0;

    invoke-virtual {v3}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 20
    iget-object v0, p3, Le/a/e/c2/w$a;->e:Landroid/view/View;

    new-instance v1, Le/a/e/c2/f;

    invoke-direct {v1, p0, p1}, Le/a/e/c2/f;-><init>(Le/a/e/c2/w;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p3, p3, Le/a/e/c2/w$a;->d:Landroid/widget/RadioButton;

    new-instance v0, Le/a/e/c2/e;

    invoke-direct {v0, p0, p1}, Le/a/e/c2/e;-><init>(Le/a/e/c2/w;I)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-object p2
.end method
