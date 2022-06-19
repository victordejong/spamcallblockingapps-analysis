.class public Lcom/appnext/core/result/ResultPageActivity$CustomAd;
.super Lcom/appnext/core/AppnextAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/result/ResultPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomAd"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/appnext/core/result/ResultPageActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->this$0:Lcom/appnext/core/result/ResultPageActivity;

    .line 2
    invoke-direct {p0, p2}, Lcom/appnext/core/AppnextAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    return-void
.end method


# virtual methods
.method public getAdJSON()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/h;->getAdJSON()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionURL()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdJSON(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/core/h;->setAdJSON(Ljava/lang/String;)V

    return-void
.end method

.method public setStoreRating(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextAd;->setStoreRating(Ljava/lang/String;)V

    return-void
.end method
