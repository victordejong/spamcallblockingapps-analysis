.class public final Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR%\u0010\u0011\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R%\u0010\u0014\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Ljava/lang/Runnable;",
        "listener",
        "Ls1/s;",
        "setOnLearnMoreClickListener",
        "(Ljava/lang/Runnable;)V",
        "f1",
        "()V",
        "v",
        "Ljava/lang/Runnable;",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "t",
        "Ls1/g;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "u",
        "getButton",
        "button",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/truecaller/acs/R$id;->title:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->t:Ls1/g;

    .line 4
    sget p2, Lcom/truecaller/acs/R$id;->button:I

    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->u:Ls1/g;

    const/4 p2, 0x1

    .line 5
    invoke-static {p1, p2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    sget p2, Lcom/truecaller/acs/R$layout;->view_spam_acs_premium_promo:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-direct {p0}, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->getButton()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Le/a/g/a/e;

    invoke-direct {p2, p0}, Le/a/g/a/e;-><init>(Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final f1()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/truecaller/acs/R$color;->fullscreen_acs_white_text_color:I

    .line 3
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-direct {p0}, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->getButton()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/truecaller/acs/R$drawable;->bg_acs_button_view_profile:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    invoke-direct {p0}, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->getButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setOnLearnMoreClickListener(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;->v:Ljava/lang/Runnable;

    return-void
.end method
