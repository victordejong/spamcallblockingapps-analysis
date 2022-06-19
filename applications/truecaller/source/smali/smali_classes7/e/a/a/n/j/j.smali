.class public final Le/a/a/n/j/j;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/n/j/q;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/View;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/n/j/j;->j:Landroid/view/View;

    const v0, 0x7f0a09b5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.imageView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/a/n/j/j;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a066e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.durationText)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/n/j/j;->b:Landroid/widget/TextView;

    const v0, 0x7f0a09e5

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.importantIndicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/n/j/j;->c:Landroid/view/View;

    const v0, 0x7f0a0d9c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.progressBar)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/n/j/j;->d:Landroid/view/View;

    const v0, 0x7f0a063d

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.downloadButton)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/n/j/j;->e:Landroid/view/View;

    const v1, 0x7f0a00f9

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.activeOverlay)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Le/a/a/n/j/j;->f:Landroid/view/View;

    const v1, 0x7f0a0708

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.expiredIndicator)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Le/a/a/n/j/j;->g:Landroid/view/View;

    const v1, 0x7f0a1026

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.sizeText)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Le/a/a/n/j/j;->h:Landroid/widget/TextView;

    .line 10
    new-instance v1, Le/a/a/n/j/c;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080737

    const v4, 0x7f040690

    invoke-static {v2, v3, v4}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "ThemeUtils.getTintedDraw\u2026 R.attr.tcx_textTertiary)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {v1, v2}, Le/a/a/n/j/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Le/a/a/n/j/j;->i:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    .line 13
    invoke-static/range {v4 .. v9}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    .line 14
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v4, "ItemEvent.ACTION_DOWNLOAD_CLICK"

    const/16 v6, 0x8

    move-object v1, v0

    .line 15
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v4, 0x0

    const/16 v6, 0xc

    .line 16
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public A0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public C(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    .line 3
    check-cast v0, Le/a/z3/d;

    .line 4
    iget-object p1, p0, Le/a/a/n/j/j;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Le/a/z3/d;->p0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;

    move-result-object p1

    .line 5
    sget-object v0, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-virtual {p1, v0}, Le/a/z3/d;->f0(Le/f/a/n/o/k;)Le/a/z3/d;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/a/n/j/j;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public C4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public K3(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/truecaller/messaging/mediaviewer/MediaViewerActivity;->qa(J)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/a/a/n/j/j;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/n/j/j;->j:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public Q0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->h:Landroid/widget/TextView;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public U0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->g:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->f:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->c:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->d:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public h3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/j;->e:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
