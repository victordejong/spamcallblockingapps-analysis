.class public final Lcom/facebook/ads/redexgen/X/SO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SK;->A0G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 51808
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAF()V
    .locals 3

    .line 51809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A04(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0J:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 51810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/SK;->A03(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FV;->A0E()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0M(Lcom/facebook/ads/redexgen/X/SK;Ljava/lang/String;)V

    .line 51811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/SK;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0N(Lcom/facebook/ads/redexgen/X/SK;Z)V

    .line 51812
    return-void
.end method
