.class public final Lcom/facebook/ads/redexgen/X/XM;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8g;->A0C(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/8f;Lcom/facebook/ads/redexgen/X/8e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 0

    .line 66043
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 6

    .line 66044
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8g;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8h;

    .line 66045
    .local v0, "event":Lcom/facebook/ads/redexgen/X/8h;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 66046
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8h;->A02()Ljava/lang/String;

    move-result-object v3

    .line 66047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8h;->A00()I

    move-result v2

    .line 66048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8h;->A01()Lcom/facebook/ads/redexgen/X/8n;

    move-result-object v1

    const/4 v0, 0x0

    .line 66049
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8g;->A0B(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;Z)V

    .line 66050
    .end local v0    # "event":Lcom/facebook/ads/redexgen/X/8h;
    goto :goto_0

    .line 66051
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8g;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66052
    return-void
.end method
