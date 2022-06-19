.class public Lcom/truecaller/ui/details/DetailsActionBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/details/DetailsActionBar$a;,
        Lcom/truecaller/ui/details/DetailsActionBar$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/View;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/LayoutInflater;

.field public e:Lcom/truecaller/ui/details/DetailsActionBar$b;

.field public f:Le/a/e/c/r1;

.field public final g:I

.field public final h:Le/a/l/p2/v0;

.field public final i:Le/a/y/c/b;

.field public final j:Le/a/d/c0/s1;

.field public k:Ljava/lang/Runnable;

.field public l:Z

.field public m:Z

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:Z

.field public q:Lcom/truecaller/ui/details/DetailsActionBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->k:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Le/a/w1;

    invoke-interface {p2}, Le/a/w1;->s()Le/a/j2;

    move-result-object p2

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0d04b6

    .line 6
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0468

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->a:Landroid/view/View;

    const v0, 0x7f0a0896

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->b:Landroid/view/View;

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f040722

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->g:I

    .line 12
    invoke-interface {p2}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->h:Le/a/l/p2/v0;

    .line 13
    invoke-interface {p2}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->i:Le/a/y/c/b;

    .line 14
    invoke-interface {p2}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->j:Le/a/d/c0/s1;

    return-void
.end method


# virtual methods
.method public final a(III)Landroid/widget/TextView;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->f:Le/a/e/c/r1;

    .line 2
    iget v4, v0, Le/a/e/c/r1;->a:I

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/ui/details/DetailsActionBar;->d()Z

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/truecaller/ui/details/DetailsActionBar;->b(IIIIZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public final b(IIIIZ)Landroid/widget/TextView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0d04b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    if-nez p5, :cond_0

    .line 5
    invoke-virtual {v0, p3}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->l()V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    sget-object p4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p5, :cond_1

    .line 11
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    const/4 p2, 0x0

    .line 12
    invoke-virtual {v0, p2, p1, p2, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->o:Z

    if-nez v0, :cond_0

    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    .line 2
    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    instance-of v0, v0, Le/a/i5/d$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->q:Lcom/truecaller/ui/details/DetailsActionBar$a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/e/c/l0;

    .line 2
    iget-object v0, v0, Le/a/e/c/l0;->a:Le/a/e/c/s1;

    .line 3
    iget-object v0, v0, Le/a/e/c/s1;->k:Le/a/e/c/a;

    .line 4
    invoke-virtual {v0}, Le/a/e/c/a;->c()Le/a/p5/u0/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/p5/u0/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Le/a/e/c/j;

    invoke-direct {v0, p0, p1, p2}, Le/a/e/c/j;-><init>(Lcom/truecaller/ui/details/DetailsActionBar;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->k:Ljava/lang/Runnable;

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    iget-object p2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/ui/details/DetailsActionBar;->d()Z

    move-result v6

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    const v1, 0x7f1207b1

    if-eqz v6, :cond_2

    const v2, 0x7f0806ac

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/truecaller/ui/details/DetailsActionBar;->a(III)Landroid/widget/TextView;

    move-result-object v1

    goto/16 :goto_6

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported button "

    invoke-static {p2, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const v1, 0x7f120012

    .line 14
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/truecaller/ui/details/DetailsActionBar;->a(III)Landroid/widget/TextView;

    move-result-object v1

    goto/16 :goto_6

    :cond_5
    const v2, 0x7f120016

    .line 15
    iget-object v1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/truecaller/ui/details/DetailsActionBar;->g:I

    move-object v1, p0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/truecaller/ui/details/DetailsActionBar;->b(IIIIZ)Landroid/widget/TextView;

    move-result-object v1

    goto/16 :goto_6

    :cond_6
    const v1, 0x7f120011

    if-eqz v6, :cond_7

    const v2, 0x7f08068f

    goto :goto_2

    .line 16
    :cond_7
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 17
    :goto_2
    invoke-virtual {p0, v1, v2, v0}, Lcom/truecaller/ui/details/DetailsActionBar;->a(III)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_6

    :cond_8
    const v1, 0x7f120b2e

    if-eqz v6, :cond_9

    const v2, 0x7f08069d

    goto :goto_3

    .line 18
    :cond_9
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 19
    :goto_3
    invoke-virtual {p0, v1, v2, v0}, Lcom/truecaller/ui/details/DetailsActionBar;->a(III)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_6

    :cond_a
    const v1, 0x7f1209db

    if-eqz v6, :cond_b

    const v2, 0x7f0806a2

    goto :goto_4

    .line 20
    :cond_b
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_4
    invoke-virtual {p0, v1, v2, v0}, Lcom/truecaller/ui/details/DetailsActionBar;->a(III)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_6

    :cond_c
    const v1, 0x7f12014b

    if-eqz v6, :cond_d

    const v2, 0x7f080692

    goto :goto_5

    .line 21
    :cond_d
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 22
    :goto_5
    invoke-virtual {p0, v1, v2, v0}, Lcom/truecaller/ui/details/DetailsActionBar;->a(III)Landroid/widget/TextView;

    move-result-object v1

    .line 23
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lcom/truecaller/ui/details/DetailsActionBar;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {p0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->e:Lcom/truecaller/ui/details/DetailsActionBar$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0468

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->e:Lcom/truecaller/ui/details/DetailsActionBar$b;

    const/16 v0, 0x8

    check-cast p1, Le/a/e/c/s1;

    invoke-virtual {p1, v0}, Le/a/e/c/s1;->tB(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0896

    if-ne v0, v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->e:Lcom/truecaller/ui/details/DetailsActionBar$b;

    const/4 v0, 0x7

    check-cast p1, Le/a/e/c/s1;

    invoke-virtual {p1, v0}, Le/a/e/c/s1;->tB(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/truecaller/ui/details/DetailsActionBar;->e:Lcom/truecaller/ui/details/DetailsActionBar$b;

    check-cast v0, Le/a/e/c/s1;

    invoke-virtual {v0, p1}, Le/a/e/c/s1;->tB(I)V

    :goto_0
    return-void
.end method

.method public setDetailsActionbarCallback(Lcom/truecaller/ui/details/DetailsActionBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->q:Lcom/truecaller/ui/details/DetailsActionBar$a;

    return-void
.end method

.method public setEventListener(Lcom/truecaller/ui/details/DetailsActionBar$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/details/DetailsActionBar;->e:Lcom/truecaller/ui/details/DetailsActionBar$b;

    return-void
.end method
