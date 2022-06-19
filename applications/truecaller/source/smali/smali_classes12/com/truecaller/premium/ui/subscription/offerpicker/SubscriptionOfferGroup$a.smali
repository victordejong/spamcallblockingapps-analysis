.class public final Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->e(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup$a;->b:Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;

    .line 3
    sget v1, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->k:I

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;->d()V

    return-void
.end method
