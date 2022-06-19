.class public final Lcom/truecaller/bizmon/callReason/ModularCallReasonView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/m5/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/bizmon/callReason/ModularCallReasonView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/m5/d;",
        "Le/a/m5/c;",
        "presenter",
        "Ls1/s;",
        "setPresenter",
        "(Le/a/m5/c;)V",
        "",
        "label",
        "setLabel",
        "(Ljava/lang/String;)V",
        "message",
        "setMessage",
        "",
        "isExpanded",
        "setIsExpanded",
        "(Z)V",
        "isExpandable",
        "setIsExpandable",
        "",
        "maxLength",
        "setMessageMaxLength",
        "(I)V",
        "R",
        "()V",
        "Le/a/m5/e;",
        "theme",
        "P",
        "(Le/a/m5/e;)V",
        "Le/a/b/m/g1;",
        "u",
        "Le/a/b/m/g1;",
        "getBinding",
        "()Le/a/b/m/g1;",
        "setBinding",
        "(Le/a/b/m/g1;)V",
        "binding",
        "t",
        "Le/a/m5/c;",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public t:Le/a/m5/c;

.field public u:Le/a/b/m/g1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/bizmon/R$layout;->layout_modular_call_reason:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    move-object v2, p1

    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 7
    sget p2, Lcom/truecaller/bizmon/R$id;->ivBizDot:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 9
    sget p2, Lcom/truecaller/bizmon/R$id;->ivToggleButton:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 11
    sget p2, Lcom/truecaller/bizmon/R$id;->rootModularCallReason:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 13
    sget p2, Lcom/truecaller/bizmon/R$id;->tvCallReason:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 15
    sget p2, Lcom/truecaller/bizmon/R$id;->tvCallReasonMain:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 17
    sget p2, Lcom/truecaller/bizmon/R$id;->tvCallReasonTitle:I

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 19
    new-instance p2, Le/a/b/m/g1;

    move-object v1, p1

    check-cast v1, Landroidx/cardview/widget/CardView;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Le/a/b/m/g1;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p1, "LayoutModularCallReasonB\u2026emeX = true), this, true)"

    .line 20
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public P(Le/a/m5/e;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    iget-object v0, v0, Le/a/b/m/g1;->f:Landroid/widget/TextView;

    .line 2
    iget p1, p1, Le/a/m5/e;->a:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public R()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final getBinding()Le/a/b/m/g1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    return-object v0
.end method

.method public final setBinding(Le/a/b/m/g1;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    return-void
.end method

.method public setIsExpandable(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    const-string v1, "ivToggleButton"

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, v0, Le/a/b/m/g1;->f:Landroid/widget/TextView;

    new-instance v3, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, p1}, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v2, v0, Le/a/b/m/g1;->c:Landroid/widget/ImageButton;

    new-instance v3, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, p1}, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, v0, Le/a/b/m/g1;->c:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Le/a/b/m/g1;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, v0, Le/a/b/m/g1;->c:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, v0, Le/a/b/m/g1;->c:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$b;-><init>(Lcom/truecaller/bizmon/callReason/ModularCallReasonView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "label"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    iget-object v0, v0, Le/a/b/m/g1;->f:Landroid/widget/TextView;

    const-string v1, "binding.tvCallReasonTitle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    .line 2
    iget-object v1, v0, Le/a/b/m/g1;->d:Landroid/widget/TextView;

    const-string v2, "tvCallReason"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, v0, Le/a/b/m/g1;->e:Landroid/widget/TextView;

    const-string v1, "tvCallReasonMain"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageMaxLength(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->u:Le/a/b/m/g1;

    iget-object v0, v0, Le/a/b/m/g1;->e:Landroid/widget/TextView;

    const-string v1, "binding.tvCallReasonMain"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter$LengthFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final setPresenter(Le/a/m5/c;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->t:Le/a/m5/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->t:Le/a/m5/c;

    .line 3
    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void
.end method
