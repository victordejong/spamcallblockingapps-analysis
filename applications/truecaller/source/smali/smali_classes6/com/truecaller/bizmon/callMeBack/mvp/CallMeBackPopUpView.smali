.class public final Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;
.super Le/a/b/i/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014R\u0019\u0010\u001c\u001a\u00020\u00178\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;",
        "Le/a/b/i/a;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "o",
        "",
        "color",
        "background",
        "n",
        "(II)V",
        "",
        "name",
        "setContactName",
        "(Ljava/lang/String;)V",
        "subTitle",
        "setResponseSubTitle",
        "",
        "show",
        "f",
        "(Z)V",
        "visible",
        "p",
        "Le/a/b/m/i1;",
        "d",
        "Le/a/b/m/i1;",
        "getBinding",
        "()Le/a/b/m/i1;",
        "binding",
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
.field public final d:Le/a/b/m/i1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Le/a/b/i/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/bizmon/R$layout;->layout_pacs_call_me_back:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/truecaller/bizmon/R$id;->barrierRequestCallMeBack:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v2, :cond_0

    .line 7
    sget p1, Lcom/truecaller/bizmon/R$id;->btnRequestCallMeBack:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 9
    sget p1, Lcom/truecaller/bizmon/R$id;->groupRequestCallmeBack:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    if-eqz v4, :cond_0

    .line 11
    sget p1, Lcom/truecaller/bizmon/R$id;->groupResponseCallMeBack:I

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    .line 13
    sget p1, Lcom/truecaller/bizmon/R$id;->ivTickCallMeBackResponse:I

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v6, :cond_0

    .line 15
    sget p1, Lcom/truecaller/bizmon/R$id;->pbCallMeBackLoading:I

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    .line 17
    sget p1, Lcom/truecaller/bizmon/R$id;->tvSubTitleCallMeBackResponse:I

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 19
    sget p1, Lcom/truecaller/bizmon/R$id;->tvSubtitleRequestCallMeBack:I

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 21
    sget p1, Lcom/truecaller/bizmon/R$id;->tvTitleCallMeBackResponse:I

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 23
    sget p1, Lcom/truecaller/bizmon/R$id;->tvTitleRequestCallBack:I

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v11, p2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 25
    new-instance p1, Le/a/b/m/i1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Le/a/b/m/i1;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/Button;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p2, "LayoutPacsCallMeBackBind\u2026ater.from(context), this)"

    .line 26
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    iget-object v0, v0, Le/a/b/m/i1;->f:Landroid/widget/ProgressBar;

    const-string v1, "binding.pbCallMeBackLoading"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final getBinding()Le/a/b/m/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    return-object v0
.end method

.method public n(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    .line 2
    iget-object v1, v0, Le/a/b/m/i1;->b:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    iget-object p2, v0, Le/a/b/m/i1;->b:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    .line 2
    iget-object v1, v0, Le/a/b/m/i1;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 3
    iget-object v1, v0, Le/a/b/m/i1;->c:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupRequestCallmeBack"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    iget-object v0, v0, Le/a/b/m/i1;->d:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupResponseCallMeBack"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/b/i/a;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    iget-object v0, v0, Le/a/b/m/i1;->b:Landroid/widget/Button;

    new-instance v1, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView$a;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView$a;-><init>(Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    iget-object v0, v0, Le/a/b/m/i1;->b:Landroid/widget/Button;

    const-string v1, "binding.btnRequestCallMeBack"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->R(Landroid/view/View;Z)V

    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    iget-object v0, v0, Le/a/b/m/i1;->h:Landroid/widget/TextView;

    const-string v1, "binding.tvSubtitleRequestCallMeBack"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setResponseSubTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "subTitle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->d:Le/a/b/m/i1;

    iget-object v0, v0, Le/a/b/m/i1;->g:Landroid/widget/TextView;

    const-string v1, "binding.tvSubTitleCallMeBackResponse"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
