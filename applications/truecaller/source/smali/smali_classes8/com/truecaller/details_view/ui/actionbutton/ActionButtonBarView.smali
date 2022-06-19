.class public final Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;",
        "Landroid/widget/LinearLayout;",
        "",
        "alpha",
        "Ls1/s;",
        "setAlpha",
        "(F)V",
        "Lcom/truecaller/details_view/ui/actionbutton/ActionButton;",
        "actionButton",
        "a",
        "(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V",
        "b",
        "()V",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V
    .locals 7

    .line 1
    new-instance v6, Le/a/v/a/x/b;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/v/a/x/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 2
    iget v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->a:I

    .line 3
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 4
    iget v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->b:I

    .line 5
    invoke-virtual {v6, v0}, Le/a/v/a/x/b;->setTitle(I)V

    .line 6
    iget v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->c:I

    .line 7
    invoke-virtual {v6, v0}, Le/a/v/a/x/b;->setIcon(I)V

    .line 8
    new-instance v0, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView$a;

    invoke-direct {v0, p1}, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView$a;-><init>(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V

    invoke-virtual {v6, v0}, Le/a/v/a/x/b;->setOnClickedListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->d:I

    .line 10
    invoke-virtual {v6, v0}, Le/a/v/a/x/b;->setTextColor(I)V

    .line 11
    iget-object v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->e:Le/a/v/a/r0/h;

    .line 12
    invoke-virtual {v6, v0}, Le/a/v/a/x/b;->setIconPainter(Le/a/v/a/r0/h;)V

    .line 13
    iget-object p1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->h:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v6, p1}, Le/a/v/a/x/b;->setIconTag(Ljava/lang/Integer;)V

    .line 15
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Le/a/v/a/x/b;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Le/a/v/a/x/b;

    invoke-virtual {v2, p1}, Le/a/v/a/x/b;->setTextAlpha(F)V

    .line 5
    invoke-virtual {v2, p1}, Le/a/v/a/x/b;->setBorderAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
