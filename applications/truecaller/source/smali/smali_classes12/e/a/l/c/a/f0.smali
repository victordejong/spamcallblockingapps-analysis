.class public final Le/a/l/c/a/f0;
.super Le/a/l/c/a/i;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/d1;


# instance fields
.field public final g:Lcom/truecaller/common/ui/ShineView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Ln3/v/b0;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/l/c/a/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    const p2, 0x7f0a08b4

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/ShineView;

    iput-object p2, p0, Le/a/l/c/a/f0;->g:Lcom/truecaller/common/ui/ShineView;

    const v0, 0x7f0a01d3

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/l/c/a/f0;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a096b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/l/c/a/f0;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a1245

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/l/c/a/f0;->j:Landroid/widget/TextView;

    const v0, 0x7f0a10d3

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/l/c/a/f0;->k:Landroid/widget/TextView;

    const v0, 0x7f0a04bb

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/l/c/a/f0;->l:Landroid/widget/TextView;

    const v0, 0x7f0a04bc

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/l/c/a/f0;->m:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2, p3}, Lcom/truecaller/common/ui/ShineView;->setLifecycleOwner(Ln3/v/b0;)V

    return-void
.end method


# virtual methods
.method public I(Le/a/l/c/a/x2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->k:Landroid/widget/TextView;

    const-string v1, "subtitleView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->P4(Landroid/widget/TextView;Le/a/l/c/a/x2;)V

    return-void
.end method

.method public L()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->g:Lcom/truecaller/common/ui/ShineView;

    const-string v1, "shiningView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/f0;->h:Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Le/a/l/c/a/i;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/a/g;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Q3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public S2(Le/a/l/c/a/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->m:Landroid/widget/TextView;

    const-string v1, "cta2View"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->O4(Landroid/widget/TextView;Le/a/l/c/a/a0;)V

    return-void
.end method

.method public U(Le/a/l/c/a/x2;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->j:Landroid/widget/TextView;

    const-string v1, "titleView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->P4(Landroid/widget/TextView;Le/a/l/c/a/x2;)V

    return-void
.end method

.method public l0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->g:Lcom/truecaller/common/ui/ShineView;

    const-string v1, "shiningView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/l/c/a/f0;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public w2(Le/a/l/c/a/a0;)V
    .locals 2

    const-string v0, "cta"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/a/f0;->l:Landroid/widget/TextView;

    const-string v1, "cta1View"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Le/a/l/c/a/i;->O4(Landroid/widget/TextView;Le/a/l/c/a/a0;)V

    return-void
.end method
