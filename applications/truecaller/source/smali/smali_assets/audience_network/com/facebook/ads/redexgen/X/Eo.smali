.class public final Lcom/facebook/ads/redexgen/X/Eo;
.super Lcom/facebook/ads/redexgen/X/bL;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardedAdListener"
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ebBTtcDfrXbt7XUNv2xXXzukgR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AfSrg72OINfokWlk8lEehE43rER54C5K"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DLWRAT6zkYb5ZQ4lVerhsjeXnJdmq546"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HcA6UXt4lgXnqoCqWVxSHZRcl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xLJGdEWbtHtgosfXVcR1IwW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KlZdBiYd7CYsgOQcQxjIKqODuE8wujbn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gwTEk6Fa0GjLNEZ2sqovA8E7SRT86ppt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mobLesdsIst7Z6gfBQK3QOgi9WAmLStS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Eo;->A00:[Ljava/lang/String;

    .line 30513
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 1

    .line 30514
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bL;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V

    .line 30515
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/4y;)V
    .locals 0

    .line 30516
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eo;-><init>(Lcom/facebook/ads/redexgen/X/52;)V

    return-void
.end method


# virtual methods
.method public final A3q(Ljava/lang/String;)V
    .locals 4

    .line 30517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30518
    return-void

    .line 30519
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/52;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Eo;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Eo;->A00:[Ljava/lang/String;

    const-string v1, "wcnlDkVPCotGmNFV8gEH10X6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/52;->A0A(Lcom/facebook/ads/redexgen/X/52;Ljava/lang/String;)V

    .line 30520
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A08:Lcom/facebook/ads/redexgen/X/Pm;

    .line 30521
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v2

    .line 30522
    .local p0, "rewardedVideoEndActivity":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    .line 30523
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v1

    .line 30524
    .local p1, "rewardedVideoError":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/52;

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 30526
    return-void

    .line 30527
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bL;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/52;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 30529
    :cond_3
    return-void
.end method

.method public final A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 30530
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bL;->A3r(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9N;)V

    .line 30531
    return-void
.end method
