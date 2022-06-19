.class public final Le/a/h/c/i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/c/l;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:I

.field public final e:I

.field public final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/h/c/i;->f:Landroid/view/View;

    const v0, 0x7f0a1245

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/c/i;->a:Ls1/g;

    const v0, 0x7f0a0ab8

    .line 3
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/c/i;->b:Ls1/g;

    const v0, 0x7f0a0684

    .line 4
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/c/i;->c:Ls1/g;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04068d

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Le/a/h/c/i;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04068f

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Le/a/h/c/i;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    .line 7
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public G2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/c/i;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Le/a/h/c/i;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "this.editIcon"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final N4()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/h/c/i;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public e3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/c/i;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Le/a/h/c/i;->e:I

    goto :goto_0

    :cond_0
    iget p1, p0, Le/a/h/c/i;->d:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "this.label"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/a/h/c/i;->N4()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/a/h/c/i;->N4()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/h/c/i;->N4()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/c/i;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "this.title"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
