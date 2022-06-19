.class public final Le/a/a/c/c/j;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/c/n;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    const v0, 0x7f0a09b5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.imageView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/a/c/c/j;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0407

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.closeButton)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/c/c/j;->b:Landroid/view/View;

    const v0, 0x7f0a110f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.swapButton)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/c/c/j;->c:Landroid/view/View;

    const v0, 0x7f0a1368

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.videoIndicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/c/c/j;->d:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    .line 6
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public C(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Le/f/a/i;->p(Landroid/net/Uri;)Le/f/a/h;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Le/f/a/n/m;

    .line 3
    new-instance v1, Le/f/a/n/q/d/i;

    invoke-direct {v1}, Le/f/a/n/q/d/i;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/f/a/n/q/d/y;

    iget-object v2, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Le/f/a/n/q/d/y;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Le/f/a/r/a;->F([Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 4
    iget-object v0, p0, Le/a/a/c/c/j;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public D1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->c:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Q1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->b:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Z2(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->a:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Le/a/a/c/c/h;

    .line 3
    iget-object v2, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v4, 0x7f0604eb

    .line 6
    invoke-static {v3, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    .line 7
    invoke-direct {v1, v2, p1, v4, v3}, Le/a/a/c/c/h;-><init>(Landroid/content/Context;III)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public j4(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->a:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Le/a/a/c/c/h;

    .line 3
    iget-object v2, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040587

    invoke-static {v3, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    .line 5
    iget-object v4, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04057a

    invoke-static {v4, v5}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v4

    .line 6
    invoke-direct {v1, v2, p1, v3, v4}, Le/a/a/c/c/h;-><init>(Landroid/content/Context;III)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const p1, 0x7f080287

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public m1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/c/j;->d:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
