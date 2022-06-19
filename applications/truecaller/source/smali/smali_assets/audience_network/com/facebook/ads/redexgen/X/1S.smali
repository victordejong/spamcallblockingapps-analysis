.class public final Lcom/facebook/ads/redexgen/X/1S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1R;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x4e149b77709aff0L


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1R;)V
    .locals 1

    .line 3376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3377
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A00(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Ljava/lang/String;

    .line 3378
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A01(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Ljava/lang/String;

    .line 3379
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A02(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/lang/String;

    .line 3380
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A03(Lcom/facebook/ads/redexgen/X/1R;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Ljava/lang/String;

    .line 3381
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1R;Lcom/facebook/ads/redexgen/X/1Q;)V
    .locals 0

    .line 3382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1S;-><init>(Lcom/facebook/ads/redexgen/X/1R;)V

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 3383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 3384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 3385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 3386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1S;->A03:Ljava/lang/String;

    return-object v0
.end method
