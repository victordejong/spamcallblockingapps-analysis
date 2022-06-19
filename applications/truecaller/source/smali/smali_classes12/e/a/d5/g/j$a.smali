.class public Le/a/d5/g/j$a;
.super Ln3/k0/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/g/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/a/d5/g/j;


# direct methods
.method public constructor <init>(Le/a/d5/g/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d5/g/j$a;->c:Le/a/d5/g/j;

    invoke-direct {p0}, Ln3/k0/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d5/g/j$a;->c:Le/a/d5/g/j;

    .line 3
    iget-object p1, p1, Le/a/d5/g/j;->i:Le/a/e/d2/l;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Le/a/e/d2/l;->h:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 5
    iget-object p1, p0, Le/a/d5/g/j$a;->c:Le/a/d5/g/j;

    const/4 p2, 0x0

    .line 6
    iput-object p2, p1, Le/a/d5/g/j;->i:Le/a/e/d2/l;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/g/j$a;->c:Le/a/d5/g/j;

    .line 2
    iget-object v0, v0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d5/g/j$a;->c:Le/a/d5/g/j;

    .line 2
    sget v1, Le/a/d5/g/j;->j:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d04ed

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a1245

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0987

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 7
    iget-object v4, v0, Le/a/d5/g/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d5/g/j$c;

    .line 8
    iget v5, v4, Le/a/d5/g/j$c;->a:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    .line 9
    new-instance p2, Le/a/e/d2/l;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Le/a/e/d2/l;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Le/a/d5/g/j;->i:Le/a/e/d2/l;

    .line 10
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11
    :cond_0
    iget p2, v4, Le/a/d5/g/j$c;->b:I

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public g(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
