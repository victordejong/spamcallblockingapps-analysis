.class public final Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;
.super Lcom/truecaller/common/ui/banner/BannerViewX;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;",
        "Lcom/truecaller/common/ui/banner/BannerViewX;",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
        "getBehavior",
        "()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;",
        "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;",
        "Landroid/view/View;",
        "f",
        "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;",
        "customHideBottomViewOnScrollBehavior",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final f:Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;

    invoke-direct {p1}, Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;-><init>()V

    iput-object p1, p0, Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;->f:Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;

    return-void
.end method


# virtual methods
.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;->f:Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;

    return-object v0
.end method
