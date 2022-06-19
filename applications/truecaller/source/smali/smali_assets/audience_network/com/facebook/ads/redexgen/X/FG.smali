.class public final Lcom/facebook/ads/redexgen/X/FG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Bk;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HR;[Lcom/facebook/ads/redexgen/X/CP;ILcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/FI;Lcom/facebook/ads/redexgen/X/HJ;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Bk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bk;)V
    .locals 0

    .line 33211
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FG;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 33212
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FG;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FG;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A0M(Lcom/facebook/ads/redexgen/X/Bk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33213
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FG;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A05(Lcom/facebook/ads/redexgen/X/Bk;)Lcom/facebook/ads/redexgen/X/V4;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FG;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Fj;->AAD(Lcom/facebook/ads/redexgen/X/Fk;)V

    .line 33214
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FG;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
