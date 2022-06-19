.class public final Lcom/facebook/ads/redexgen/X/Ta;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KX;->A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KU;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/KX;

.field public final synthetic A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KX;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V
    .locals 0

    .line 54202
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/KX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ta;->A03:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:J

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 5

    .line 54203
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ta;->A02:Lcom/facebook/ads/redexgen/X/KX;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ta;->A03:Ljava/lang/String;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ta;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ta;->A01:Lcom/facebook/ads/redexgen/X/KU;

    invoke-static {v4, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/KX;->A0H(Lcom/facebook/ads/redexgen/X/KX;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/KU;)V

    .line 54204
    return-void
.end method
