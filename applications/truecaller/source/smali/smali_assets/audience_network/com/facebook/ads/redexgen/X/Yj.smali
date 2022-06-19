.class public final Lcom/facebook/ads/redexgen/X/Yj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YQ;->A0X()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YQ;)V
    .locals 0

    .line 67136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 4

    .line 67137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0B(Lcom/facebook/ads/redexgen/X/YQ;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67139
    .local p0, "listOfServiceInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    .line 67140
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0B(Lcom/facebook/ads/redexgen/X/YQ;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    .line 67141
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YQ;->A05(Lcom/facebook/ads/redexgen/X/YQ;)Lcom/facebook/ads/redexgen/X/61;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0U()I

    move-result v0

    .line 67142
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 67143
    .local v0, "loopCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 67144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0B(Lcom/facebook/ads/redexgen/X/YQ;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 67145
    .local v3, "serviceInfoName":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67146
    .end local v3    # "serviceInfoName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67147
    .end local v0    # "i":I
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 67148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6b;->A0E(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 67149
    .end local p0    # "listOfServiceInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v0
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yj;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
