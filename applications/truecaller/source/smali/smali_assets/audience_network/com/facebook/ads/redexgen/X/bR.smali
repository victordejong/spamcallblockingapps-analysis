.class public final Lcom/facebook/ads/redexgen/X/bR;
.super Lcom/facebook/ads/redexgen/X/2f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bS;
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2f;

.field public final A01:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kCJseLSqSIrXu4CFjUZgH7qP37OfZeHD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xEAmwUG5TGVzyoKH1PTTnmgJSds6zi0t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yfye5wiKddzXjwKpYSAHRZ10SdbOyGIS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FmBYeFx3U0BhjOzbepjZtX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pFd99JFbVQiCxR8NKRmLZvqZPwpJ8hMq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9sA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zOMSQIOQC2uzgyYA4i3GoXbtL5yC1N4Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6JUJmYz6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bR;->A02:[Ljava/lang/String;

    .line 69239
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 69240
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2f;-><init>()V

    .line 69241
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    .line 69242
    new-instance v0, Lcom/facebook/ads/redexgen/X/bS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bS;-><init>(Lcom/facebook/ads/redexgen/X/bR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/2f;

    .line 69243
    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 69244
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 69245
    const-class v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 69246
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bR;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69247
    check-cast p1, Lcom/facebook/ads/redexgen/X/Eq;

    .line 69248
    .local p0, "rv":Lcom/facebook/ads/redexgen/X/Eq;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69249
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4M;->A1x(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 69250
    .end local p0    # "rv":Lcom/facebook/ads/redexgen/X/Eq;
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 1

    .line 69251
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 69252
    const-class v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3Q;->A0O(Ljava/lang/CharSequence;)V

    .line 69253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bR;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4M;->A1F(Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 69255
    :cond_0
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 69256
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2f;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69257
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bR;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bR;->A02:[Ljava/lang/String;

    const-string v1, "nByhcE3HAON4xHhAaRL71J2smf2uyoDS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 69258
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bR;->A0B()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bR;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/bR;->A02:[Ljava/lang/String;

    const-string v1, "ZdbAAVtg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "rBKlzqXoYmUf6BYv0O8fT1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p2, p3}, Lcom/facebook/ads/redexgen/X/4M;->A1Z(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 69260
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/2f;
    .locals 1

    .line 69261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/2f;

    return-object v0
.end method

.method public final A0B()Z
    .locals 1

    .line 69262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bR;->A01:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1t()Z

    move-result v0

    return v0
.end method
