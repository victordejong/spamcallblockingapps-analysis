.class public Le/a/e/c/s1$p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Le/a/k3/l/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Le/a/e/c/s1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/a/k3/l/d;I)Le/a/e/c2/u;
    .locals 3

    .line 1
    new-instance v0, Le/a/e/c2/u;

    iget-object v1, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 2
    iget-object v2, v1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    .line 3
    iget-boolean v1, v1, Le/a/e/c/s1;->l:Z

    .line 4
    invoke-direct {v0, v2, v1}, Le/a/e/c2/u;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Le/a/e/c2/u;->setShowFullDivider(Z)V

    .line 6
    iget-object v1, p1, Le/a/k3/l/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/e/c2/u;->setHeadingText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Le/a/e/c2/u;->setDetailsText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p1, Le/a/k3/l/d;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Le/a/e/c2/u;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {v0}, Le/a/e/c2/u;->getLeftImage()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    invoke-virtual {v0}, Le/a/e/c2/u;->getLeftImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 11
    new-instance p2, Le/a/e/c/h0;

    invoke-direct {p2, p0, p1}, Le/a/e/c/h0;-><init>(Le/a/e/c/s1$p;Le/a/k3/l/d;)V

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 13
    iget-object p1, p1, Le/a/e/c/s1;->B:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 3
    iget-object v0, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    .line 4
    iget-object p1, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Le/a/o5/i0;->a:Ljava/util/List;

    .line 6
    invoke-static {v0, p1, v1}, Le/a/o5/t;->c(Landroid/content/Context;Ljava/lang/Long;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k3/l/d;

    .line 11
    iget-object v2, v1, Le/a/k3/l/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v3, v1, Le/a/k3/l/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    iget-object v0, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 3
    iget-object v1, v0, Le/a/e/c/s1;->B:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 4
    iget-object v0, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v0, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 7
    iget-object v0, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    const/high16 v1, 0x40c00000    # 6.0f

    .line 8
    invoke-static {v0, v1}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v0

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k3/l/d;

    .line 12
    invoke-virtual {p0, v1, v0}, Le/a/e/c/s1$p;->a(Le/a/k3/l/d;I)Le/a/e/c2/u;

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/k3/l/d;

    invoke-virtual {p0, v2, v0}, Le/a/e/c/s1$p;->a(Le/a/k3/l/d;I)Le/a/e/c2/u;

    move-result-object v2

    .line 15
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0806a6

    .line 17
    invoke-virtual {v2, v3}, Le/a/e/c2/u;->setRightImage(I)V

    .line 18
    iget-object v3, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 19
    iget v3, v3, Le/a/e/c/s1;->H1:I

    .line 20
    invoke-virtual {v2, v3}, Le/a/e/c2/u;->setRightImageTint(I)V

    .line 21
    invoke-virtual {v2}, Le/a/e/c2/u;->getRightImage()Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Le/a/e/c/g0;

    invoke-direct {v3, p0, v1}, Le/a/e/c/g0;-><init>(Le/a/e/c/s1$p;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 23
    iget-object v0, p1, Le/a/e/c/s1;->D:Landroid/view/View;

    .line 24
    iget-object p1, p1, Le/a/e/c/s1;->B:Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
