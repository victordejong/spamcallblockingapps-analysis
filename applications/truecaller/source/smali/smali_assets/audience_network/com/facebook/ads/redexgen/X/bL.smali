.class public Lcom/facebook/ads/redexgen/X/bL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudienceNetworkAdListenerImpl"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/52;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JdxG2e87fiw1QxhKtyp6wy4hCZ34K54h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5l6PiVFmWkFi4LSRmzN6ZIbVVY4PyA16"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qh41B7qjlQhNnOsbjTqj3JtjZfsrgLHf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L6JKyztUTZrhaC2oSi2AGhNMneOalgfU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mLvzPn8zSeH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6Oneq6t5dYPlbDhRy7qxaYTJsizasisX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lXMgpjBtmdYXVX4s4nwhe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bL;->A01:[Ljava/lang/String;

    .line 69031
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 1

    .line 69032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69033
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    .line 69034
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 0

    .line 69035
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 2

    .line 69036
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/52;->A03(Lcom/facebook/ads/redexgen/X/52;)Lcom/facebook/ads/redexgen/X/PM;

    move-result-object v1

    .line 69037
    .local p0, "mediationOverlay":Lcom/facebook/ads/redexgen/X/PM;
    if-eqz v1, :cond_0

    .line 69038
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/52;->A00(Lcom/facebook/ads/redexgen/X/52;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 69039
    :cond_0
    return-void
.end method


# virtual methods
.method public final A3G(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 69040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/52;

    .line 69041
    .local p0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/52;
    if-eqz v1, :cond_0

    .line 69042
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/52;->A00(Lcom/facebook/ads/redexgen/X/52;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69043
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/bL;->A00(Lcom/facebook/ads/redexgen/X/52;)V

    .line 69044
    :cond_0
    return-void
.end method

.method public final A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 69045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/52;

    .line 69046
    .local p0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/52;
    if-eqz v1, :cond_0

    .line 69047
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/52;->A00(Lcom/facebook/ads/redexgen/X/52;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69048
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/bL;->A00(Lcom/facebook/ads/redexgen/X/52;)V

    .line 69049
    :cond_0
    return-void
.end method

.method public A3q(Ljava/lang/String;)V
    .locals 1

    .line 69050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->A0A(Lcom/facebook/ads/redexgen/X/52;Ljava/lang/String;)V

    .line 69052
    :cond_0
    return-void
.end method

.method public A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 1

    .line 69053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/52;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/52;->A0C(Lcom/facebook/ads/redexgen/X/52;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V

    .line 69055
    :cond_0
    return-void
.end method

.method public final A8a(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 4

    .line 69056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/52;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bL;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bL;->A01:[Ljava/lang/String;

    const-string v1, "LaehfLm13EgRqqa58La6JsJDVjNkKsjm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "U7opStToMRhy5hKGwjx6Oh4Ofub1lgfJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/52;->A0B(Lcom/facebook/ads/redexgen/X/52;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    .line 69058
    :cond_1
    return-void
.end method

.method public final AA3(I)V
    .locals 1

    .line 69059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/52;

    .line 69060
    .local p0, "activityApi":Lcom/facebook/ads/redexgen/X/52;
    if-eqz v0, :cond_0

    .line 69061
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 69062
    :cond_0
    return-void
.end method
