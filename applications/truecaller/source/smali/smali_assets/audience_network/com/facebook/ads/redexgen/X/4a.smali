.class public final Lcom/facebook/ads/redexgen/X/4a;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IS;)V
    .locals 0

    .line 12108
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4a;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 2

    .line 12109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4a;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A00(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4a;->A00:Lcom/facebook/ads/redexgen/X/IS;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->A07(Z)V

    .line 12111
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 12112
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4a;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
