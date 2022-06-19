.class public final Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u000c\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView;",
        "Landroid/widget/LinearLayout;",
        "Le/a/v/a/b0/e;",
        "callHistoryViewModel",
        "Ls1/s;",
        "set",
        "(Le/a/v/a/b0/e;)V",
        "Le/a/v/k/p;",
        "a",
        "Le/a/v/k/p;",
        "getBinding",
        "()Le/a/v/k/p;",
        "binding",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Le/a/v/k/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/details_view/R$layout;->view_single_call_history_expanded:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    sget p2, Lcom/truecaller/details_view/R$id;->barrier:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v3, :cond_0

    .line 8
    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    sget p2, Lcom/truecaller/details_view/R$id;->ivCallType:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 11
    sget p2, Lcom/truecaller/details_view/R$id;->ivSimSlot:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 13
    sget p2, Lcom/truecaller/details_view/R$id;->tvContactNumber:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 15
    sget p2, Lcom/truecaller/details_view/R$id;->tvTime:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 17
    new-instance p1, Le/a/v/k/p;

    move-object v1, p1

    move-object v2, v4

    invoke-direct/range {v1 .. v8}, Le/a/v/k/p;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p2, "ViewSingleCallHistoryExp\u2026rom(context), this, true)"

    .line 18
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView;->a:Le/a/v/k/p;

    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final getBinding()Le/a/v/k/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView;->a:Le/a/v/k/p;

    return-object v0
.end method

.method public final set(Le/a/v/a/b0/e;)V
    .locals 4

    const-string v0, "callHistoryViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView;->a:Le/a/v/k/p;

    .line 2
    iget-object v1, v0, Le/a/v/k/p;->b:Landroid/widget/ImageView;

    .line 3
    iget-object v2, p1, Le/a/v/a/b0/e;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v1, v0, Le/a/v/k/p;->d:Landroid/widget/TextView;

    const-string v2, "tvContactNumber"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Le/a/v/a/b0/e;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, v0, Le/a/v/k/p;->e:Landroid/widget/TextView;

    const-string v2, "tvTime"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, p1, Le/a/v/a/b0/e;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p1, Le/a/v/a/b0/e;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 12
    iget-object v2, v0, Le/a/v/k/p;->c:Landroid/widget/ImageView;

    const-string v3, "ivSimSlot"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 13
    iget-object v2, v0, Le/a/v/k/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_0
    iget-object v0, v0, Le/a/v/k/p;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    new-instance v1, Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView$a;

    invoke-direct {v1, p1}, Lcom/truecaller/details_view/ui/callhistory/SingleCallHistoryExpandedView$a;-><init>(Le/a/v/a/b0/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
