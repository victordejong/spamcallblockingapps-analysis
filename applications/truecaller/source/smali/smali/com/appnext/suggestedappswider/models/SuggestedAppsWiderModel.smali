.class public final Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;
.super Lcom/appnext/core/AppnextAd;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;",
        "Lcom/appnext/core/AppnextAd;",
        "appnextAd",
        "(Lcom/appnext/core/AppnextAd;)V",
        "getCampaignGoal",
        "",
        "getCptList",
        "SuggestedAppsWider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/appnext/core/AppnextAd;)V
    .locals 1

    const-string v0, "appnextAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/core/AppnextAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    return-void
.end method


# virtual methods
.method public final getCampaignGoal()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/h;->getPlacementID()Ljava/lang/String;

    .line 2
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.getCampaignGoal()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCptList()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getCptList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super.getCptList()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
