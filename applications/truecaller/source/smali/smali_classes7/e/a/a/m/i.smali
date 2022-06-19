.class public final Le/a/a/m/i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/k1;


# instance fields
.field public final a:Lcom/truecaller/common/ui/banner/BannerViewX;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/m/i;->b:Landroid/view/View;

    const-string v0, "ItemEvent.ACTION_PRETEND_CALL_CTA_CLICKED"

    const-string v1, "ItemEvent.ACTION_PRETEND_CALL_DISMISS_PROMO"

    .line 2
    invoke-static {p1, p2, p0, v0, v1}, Le/a/c/p/a;->q(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/common/ui/banner/BannerViewX;

    move-result-object p1

    iput-object p1, p0, Le/a/a/m/i;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    return-void
.end method


# virtual methods
.method public N()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/m/i;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120568

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026escriptionNonPremiumUser)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSubtitle(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonText(Ljava/lang/String;)V

    return-void
.end method

.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/m/i;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120569

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026erDescriptionPremiumUser)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSubtitle(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonText(Ljava/lang/String;)V

    return-void
.end method
