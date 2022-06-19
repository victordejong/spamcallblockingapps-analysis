.class public final Lf3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf3;->b:I

    iput-object p2, p0, Lf3;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lf3;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 1
    iget-object v1, p0, Lf3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/c/a/q;

    invoke-virtual {v1}, Le/a/i/c/a/q;->getVideoAd()Le/a/i/c/a/n;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->VIDEO_START:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-virtual {v1, v2}, Le/a/i/c/a/n;->l(Lcom/truecaller/ads/adsrouter/ui/VideoStats;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    .line 2
    :cond_1
    throw v2

    .line 3
    :cond_2
    iget-object v1, p0, Lf3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/c/a/q;

    invoke-virtual {v1}, Le/a/i/c/a/q;->getVideoAd()Le/a/i/c/a/n;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->VIDEO_END:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-virtual {v1, v2}, Le/a/i/c/a/n;->l(Lcom/truecaller/ads/adsrouter/ui/VideoStats;)V

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    return-object v0

    .line 4
    :cond_4
    iget-object v1, p0, Lf3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/c/a/q;

    invoke-virtual {v1}, Le/a/i/c/a/q;->getVideoAd()Le/a/i/c/a/n;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_75:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-virtual {v1, v2}, Le/a/i/c/a/n;->l(Lcom/truecaller/ads/adsrouter/ui/VideoStats;)V

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    return-object v0

    .line 5
    :cond_6
    iget-object v1, p0, Lf3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/c/a/q;

    invoke-virtual {v1}, Le/a/i/c/a/q;->getVideoAd()Le/a/i/c/a/n;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v2, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_50:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-virtual {v1, v2}, Le/a/i/c/a/n;->l(Lcom/truecaller/ads/adsrouter/ui/VideoStats;)V

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    return-object v0

    .line 6
    :cond_8
    iget-object v1, p0, Lf3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/c/a/q;

    invoke-virtual {v1}, Le/a/i/c/a/q;->getVideoAd()Le/a/i/c/a/n;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-object v2, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_25:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-virtual {v1, v2}, Le/a/i/c/a/n;->l(Lcom/truecaller/ads/adsrouter/ui/VideoStats;)V

    goto :goto_4

    :cond_9
    move-object v0, v2

    :goto_4
    return-object v0
.end method
