.class public final Lcom/facebook/ads/redexgen/X/R3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/R2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 4

    .line 50557
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 50558
    return v3

    .line 50559
    :cond_0
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 50560
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/R2;->A00(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v1

    .line 50561
    .local p1, "t1":Lcom/facebook/ads/redexgen/X/R2;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/R2;->A00(Lorg/json/JSONArray;I)Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    .line 50562
    .local v0, "t2":Lcom/facebook/ads/redexgen/X/R2;
    if-eq v1, v0, :cond_1

    .line 50563
    return v3

    .line 50564
    :cond_1
    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/R2;->A05(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50565
    return v3

    .line 50566
    .end local p1    # "t1":Lcom/facebook/ads/redexgen/X/R2;
    .end local v0    # "t2":Lcom/facebook/ads/redexgen/X/R2;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50567
    .end local p0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A01(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 0

    .line 50568
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/R3;->A00(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result p0

    return p0
.end method

.method public static A02(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 5

    .line 50569
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v4, 0x0

    if-eq v1, v0, :cond_0

    .line 50570
    return v4

    .line 50571
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50572
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50573
    .local p1, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50574
    return v4

    .line 50575
    :cond_2
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/R2;->A01(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v1

    .line 50576
    .local v0, "type1":Lcom/facebook/ads/redexgen/X/R2;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/R2;->A01(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    .line 50577
    .local v4, "type2":Lcom/facebook/ads/redexgen/X/R2;
    if-eq v1, v0, :cond_3

    .line 50578
    return v4

    .line 50579
    :cond_3
    invoke-virtual {v1, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/R2;->A07(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50580
    return v4

    .line 50581
    .end local p0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
