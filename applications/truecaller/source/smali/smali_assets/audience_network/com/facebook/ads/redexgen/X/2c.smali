.class public final Lcom/facebook/ads/redexgen/X/2c;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bu;->A00(Lcom/facebook/ads/redexgen/X/2f;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bu;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/2f;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5TXwkxGOky4JO26BdMoLZorZ75Qh7TJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TGpCIVKfg9q9VkptB3w2PfFUtUXuMPxH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XWnogg3sW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LoblWG2nky8IldTW7marNA4rqywTihhk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "za5KD6H2U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ka0OyPk3mlOgfUpq6xId3QQILfS23GTN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DN7QTk2L5QCC7wBdOwuQ1Nom6iZb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/String;

    .line 5968
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bu;Lcom/facebook/ads/redexgen/X/2f;)V
    .locals 0

    .line 5969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2c;->A00:Lcom/facebook/ads/redexgen/X/bu;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 4

    .line 5971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    .line 5972
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2f;->A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/3S;

    move-result-object v0

    .line 5973
    .local p0, "provider":Lcom/facebook/ads/redexgen/X/3S;
    if-eqz v0, :cond_0

    .line 5974
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3S;->A02()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/String;

    const-string v1, "uCvPJ7NUfrK1Xmg35VTgFJzpSrozRbu2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5975
    :goto_0
    return-object v3

    .line 5976
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5978
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 5979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    .line 5980
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3Q;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/3Q;

    move-result-object v0

    .line 5981
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/2f;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 5982
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5984
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 5985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2f;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 5986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2f;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 5987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A02(Landroid/view/View;I)V

    .line 5988
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2c;->A01:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5990
    return-void
.end method
