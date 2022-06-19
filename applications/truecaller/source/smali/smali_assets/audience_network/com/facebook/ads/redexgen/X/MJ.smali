.class public final Lcom/facebook/ads/redexgen/X/MJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TF;
    }
.end annotation


# static fields
.field public static A02:Lcom/facebook/ads/redexgen/X/MJ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/TF;

.field public final A01:Lcom/facebook/ads/redexgen/X/ML;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/94;)V
    .locals 1

    .line 44283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44284
    new-instance v0, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MJ;->A01:Lcom/facebook/ads/redexgen/X/ML;

    .line 44285
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MJ;->A00:Lcom/facebook/ads/redexgen/X/TF;

    .line 44286
    return-void
.end method

.method private A00()V
    .locals 2

    .line 44287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MJ;->A01:Lcom/facebook/ads/redexgen/X/ML;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MJ;->A00:Lcom/facebook/ads/redexgen/X/TF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A03(Lcom/facebook/ads/redexgen/X/MK;)V

    .line 44288
    return-void
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/94;)V
    .locals 1

    .line 44289
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44290
    return-void

    .line 44291
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/MJ;->A02:Lcom/facebook/ads/redexgen/X/MJ;

    if-nez v0, :cond_1

    .line 44292
    new-instance v0, Lcom/facebook/ads/redexgen/X/MJ;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/MJ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/94;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/MJ;->A02:Lcom/facebook/ads/redexgen/X/MJ;

    .line 44293
    sget-object v0, Lcom/facebook/ads/redexgen/X/MJ;->A02:Lcom/facebook/ads/redexgen/X/MJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MJ;->A00()V

    .line 44294
    :goto_0
    return-void

    .line 44295
    :cond_1
    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/MJ;->A02(Lcom/facebook/ads/redexgen/X/94;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/94;)V
    .locals 1

    .line 44296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MJ;->A00:Lcom/facebook/ads/redexgen/X/TF;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/TF;->A08(Lcom/facebook/ads/redexgen/X/TF;Lcom/facebook/ads/redexgen/X/94;)V

    .line 44297
    return-void
.end method
