.class public final Le/a/a/m/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Le/a/o2/m;

.field public final c:Lcom/truecaller/premium/PremiumLaunchContext;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/m/a;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/a/m/a;->b:Le/a/o2/m;

    iput-object p3, p0, Le/a/a/m/a;->c:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 2
    sget-object p2, Lcom/truecaller/premium/PremiumLaunchContext;->SPAM_TAB_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    if-ne p3, p2, :cond_0

    const p2, 0x7f08013b

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const p2, 0x7f0a01ec

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 4
    new-instance p2, Le/a/a/m/a$a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p0}, Le/a/a/m/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonCLickListener(Ls1/z/b/l;)V

    .line 5
    new-instance p2, Le/a/a/m/a$a;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1, p0}, Le/a/a/m/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSecondaryButtonCLickListener(Ls1/z/b/l;)V

    return-void
.end method
