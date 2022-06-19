.class public final Lcom/facebook/ads/redexgen/X/aH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a3;->A0I()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a3;)V
    .locals 0

    .line 67980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A03(Lcom/facebook/ads/redexgen/X/a3;)Lcom/facebook/ads/redexgen/X/61;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0a()Lcom/facebook/ads/redexgen/X/6o;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0I:Lcom/facebook/ads/redexgen/X/6o;

    if-ne v1, v0, :cond_0

    .line 67982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A04:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 67983
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A06(Lcom/facebook/ads/redexgen/X/a3;)Lcom/facebook/ads/redexgen/X/74;

    move-result-object v1

    const/16 v0, 0x271a

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/74;->A06(I)Ljava/lang/String;

    move-result-object v1

    .line 67984
    .local p0, "appDexMd5":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6b;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 67986
    :goto_0
    return-object v0

    .line 67987
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
