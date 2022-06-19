.class public final Lcom/facebook/ads/redexgen/X/aM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a3;->A0U()Lcom/facebook/ads/redexgen/X/6k;
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

    .line 68015
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 68016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68017
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:Lcom/facebook/ads/redexgen/X/a3;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/a3;->A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 68018
    :goto_0
    return-object v0

    .line 68019
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:Lcom/facebook/ads/redexgen/X/a3;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
