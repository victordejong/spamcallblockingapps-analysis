.class public final Lcom/facebook/ads/redexgen/X/5f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5e;
    }
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/5e;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5e;)V
    .locals 6

    .line 14129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5f;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5e;J)V

    .line 14130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5e;J)V
    .locals 0

    .line 14131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:Ljava/lang/String;

    .line 14133
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:Z

    .line 14134
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:Lcom/facebook/ads/redexgen/X/5e;

    .line 14135
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:J

    .line 14136
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/5f;
    .locals 6

    .line 14137
    new-instance v0, Lcom/facebook/ads/redexgen/X/5f;

    sget-object v3, Lcom/facebook/ads/redexgen/X/5e;->A06:Lcom/facebook/ads/redexgen/X/5e;

    const-string v1, ""

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5f;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5e;J)V

    return-object v0
.end method


# virtual methods
.method public final A01()J
    .locals 2

    .line 14138
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:J

    return-wide v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/5e;
    .locals 1

    .line 14139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:Lcom/facebook/ads/redexgen/X/5e;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 14140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Z
    .locals 1

    .line 14141
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:Z

    return v0
.end method
