.class public final Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0008R\u0019\u0010\u0011\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;",
        "Le/a/b/i/a;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "",
        "visible",
        "q",
        "(Z)V",
        "p",
        "show",
        "f",
        "Le/a/b/m/d1;",
        "d",
        "Le/a/b/m/d1;",
        "getBinding",
        "()Le/a/b/m/d1;",
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
.field public final d:Le/a/b/m/d1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Le/a/b/i/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/bizmon/R$layout;->layout_facs_call_me_back_button:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/truecaller/bizmon/R$id;->btnRequestCallMeBack:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    .line 7
    sget p1, Lcom/truecaller/bizmon/R$id;->btnResponseDone:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 9
    sget p1, Lcom/truecaller/bizmon/R$id;->layoutCallMeBackLoading:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 11
    new-instance p1, Le/a/b/m/d1;

    invoke-direct {p1, p0, p2, v0, v1}, Le/a/b/m/d1;-><init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/FrameLayout;)V

    const-string p2, "LayoutFacsCallMeBackButt\u2026(useThemeX = true), this)"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;->d:Le/a/b/m/d1;

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 14
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
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;->d:Le/a/b/m/d1;

    iget-object v0, v0, Le/a/b/m/d1;->d:Landroid/widget/FrameLayout;

    const-string v1, "binding.layoutCallMeBackLoading"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final getBinding()Le/a/b/m/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;->d:Le/a/b/m/d1;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/b/i/a;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;->d:Le/a/b/m/d1;

    iget-object v0, v0, Le/a/b/m/d1;->b:Landroid/widget/Button;

    new-instance v1, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView$a;

    invoke-direct {v1, p0}, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView$a;-><init>(Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;->d:Le/a/b/m/d1;

    iget-object v0, v0, Le/a/b/m/d1;->b:Landroid/widget/Button;

    const-string v1, "binding.btnRequestCallMeBack"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->R(Landroid/view/View;Z)V

    return-void
.end method

.method public q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;->d:Le/a/b/m/d1;

    iget-object v0, v0, Le/a/b/m/d1;->c:Landroid/widget/ImageButton;

    const-string v1, "binding.btnResponseDone"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->R(Landroid/view/View;Z)V

    return-void
.end method
