.class public final Le/a/b3/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rR\u001d\u0010\u0013\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0018\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001c\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001f\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0010\u001a\u0004\u0008\u001e\u0010\u0017R\u001d\u0010!\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0010\u001a\u0004\u0008 \u0010\u001bR\u001d\u0010$\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0010\u001a\u0004\u0008#\u0010\u001bR.\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010%\u001a\u0004\u0018\u00010\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010\r\u00a8\u0006+"
    }
    d2 = {
        "Le/a/b3/d;",
        "Landroid/widget/FrameLayout;",
        "",
        "selected",
        "Ls1/s;",
        "setSelected",
        "(Z)V",
        "Le/a/b0/a/t/b;",
        "c",
        "()Le/a/b0/a/t/b;",
        "Le/a/b3/c;",
        "state",
        "a",
        "(Le/a/b3/c;)V",
        "b",
        "Landroid/widget/TextView;",
        "Ls1/g;",
        "getLabelView",
        "()Landroid/widget/TextView;",
        "labelView",
        "",
        "f",
        "getNormalTint",
        "()I",
        "normalTint",
        "Landroid/widget/ImageView;",
        "getIconView",
        "()Landroid/widget/ImageView;",
        "iconView",
        "e",
        "getSelectedTint",
        "selectedTint",
        "getBadgeView",
        "badgeView",
        "d",
        "getBadgeLabelView",
        "badgeLabelView",
        "value",
        "g",
        "Le/a/b3/c;",
        "getState",
        "()Le/a/b3/c;",
        "setState",
        "bottom-bar-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public g:Le/a/b3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p2, p4, 0x4

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    move p3, p4

    :cond_0
    const-string p2, "context"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/truecaller/common/ui/R$id;->label:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/b3/d;->a:Ls1/g;

    .line 4
    sget p2, Lcom/truecaller/common/ui/R$id;->icon:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/b3/d;->b:Ls1/g;

    .line 5
    sget p2, Lcom/truecaller/common/ui/R$id;->badge:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/b3/d;->c:Ls1/g;

    .line 6
    sget p2, Lcom/truecaller/common/ui/R$id;->badgeLabel:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/b3/d;->d:Ls1/g;

    .line 7
    new-instance p2, Lr1;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lr1;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/b3/d;->e:Ls1/g;

    .line 8
    new-instance p2, Lr1;

    invoke-direct {p2, p4, p1}, Lr1;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/b3/d;->f:Ls1/g;

    .line 9
    sget p2, Lcom/truecaller/common/ui/R$layout;->layout_tcx_button_bottom_nav:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final getBadgeLabelView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Le/a/b3/d;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getBadgeView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Le/a/b3/d;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Le/a/b3/d;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/b3/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getNormalTint()I
    .locals 1

    iget-object v0, p0, Le/a/b3/d;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getSelectedTint()I
    .locals 1

    iget-object v0, p0, Le/a/b3/d;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Le/a/b3/c;)V
    .locals 19

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/a/b3/c;->f()Le/a/b3/b;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    sget-object v2, Le/a/b3/l;->a:Le/a/b3/l;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeLabelView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto/16 :goto_1

    .line 6
    :cond_2
    sget-object v2, Le/a/b3/a;->a:Le/a/b3/a;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 7
    new-instance v1, Le/a/b0/a/t/b;

    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v2, "context"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    sget v8, Lcom/truecaller/common/ui/R$attr;->tcx_alertBackgroundRed:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1ff6

    move-object v4, v1

    .line 10
    invoke-direct/range {v4 .. v18}, Le/a/b0/a/t/b;-><init>(Landroid/content/Context;ZZIIIIIIIIIII)V

    .line 11
    invoke-virtual {v1, v3}, Le/a/b0/a/t/b;->b(Z)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 14
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeLabelView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 15
    :cond_3
    instance-of v2, v1, Le/a/b3/i;

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual/range {p0 .. p0}, Le/a/b3/d;->c()Le/a/b0/a/t/b;

    move-result-object v2

    check-cast v1, Le/a/b3/i;

    .line 17
    iget v1, v1, Le/a/b3/i;->a:I

    .line 18
    invoke-virtual {v2, v1}, Le/a/b0/a/t/b;->a(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 20
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeLabelView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 21
    :cond_4
    sget-object v2, Le/a/b3/k;->a:Le/a/b3/k;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual/range {p0 .. p0}, Le/a/b3/d;->c()Le/a/b0/a/t/b;

    move-result-object v1

    .line 23
    iget-object v2, v1, Le/a/b0/a/t/b;->c:Le/a/b0/a/t/a;

    .line 24
    iput-boolean v3, v2, Le/a/b0/a/t/a;->a:Z

    .line 25
    iget v3, v1, Le/a/b0/a/t/b;->b:I

    .line 26
    iget-object v2, v2, Le/a/b0/a/t/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 30
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeLabelView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 31
    :cond_5
    instance-of v2, v1, Le/a/b3/j;

    if-eqz v2, :cond_6

    .line 32
    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 33
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeLabelView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v1, Le/a/b3/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    invoke-direct/range {p0 .. p0}, Le/a/b3/d;->getBadgeLabelView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final b(Le/a/b3/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Le/a/b3/d;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Le/a/b3/c;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Le/a/b3/d;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Le/a/b3/c;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final c()Le/a/b0/a/t/b;
    .locals 16

    .line 1
    new-instance v15, Le/a/b0/a/t/b;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v11, Lcom/truecaller/common/ui/R$attr;->tcx_backgroundTertiary:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1bfe

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Le/a/b0/a/t/b;-><init>(Landroid/content/Context;ZZIIIIIIIIIII)V

    return-object v15
.end method

.method public final getState()Le/a/b3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b3/d;->g:Le/a/b3/c;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2
    invoke-direct {p0}, Le/a/b3/d;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    invoke-direct {p0}, Le/a/b3/d;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Le/a/b3/d;->g:Le/a/b3/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Le/a/b3/d;->b(Le/a/b3/c;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/b3/d;->g:Le/a/b3/c;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Le/a/b3/d;->a(Le/a/b3/c;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setState(Le/a/b3/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/b3/d;->g:Le/a/b3/c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/b3/c;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 3
    invoke-direct {p0}, Le/a/b3/d;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Le/a/b3/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-virtual {p0, p1}, Le/a/b3/d;->b(Le/a/b3/c;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 6
    :cond_0
    iput-object p1, p0, Le/a/b3/d;->g:Le/a/b3/c;

    .line 7
    invoke-virtual {p0, p1}, Le/a/b3/d;->a(Le/a/b3/c;)V

    return-void
.end method
