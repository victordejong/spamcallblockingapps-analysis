.class public final Lcom/appnext/nativeads/NativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic fP:Lcom/appnext/nativeads/NativeAd;


# direct methods
.method private constructor <init>(Lcom/appnext/nativeads/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAd$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd$a;-><init>(Lcom/appnext/nativeads/NativeAd;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    const-string v0, "click_event"

    invoke-static {p1, v0}, Lcom/appnext/nativeads/NativeAd;->access$1000(Lcom/appnext/nativeads/NativeAd;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1}, Lcom/appnext/nativeads/NativeAd;->access$000(Lcom/appnext/nativeads/NativeAd;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1}, Lcom/appnext/nativeads/NativeAd;->access$300(Lcom/appnext/nativeads/NativeAd;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getWebview()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAd;->click()V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getRevenueType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "b"

    const-string v1, "a"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    .line 8
    :try_start_1
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p1

    const-string v5, "cpiActiveFlow"

    invoke-virtual {p1, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpiActiveFlow "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_1
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v6

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v6, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1, v3}, Lcom/appnext/nativeads/NativeAd;->access$1700(Lcom/appnext/nativeads/NativeAd;Z)V

    goto :goto_3

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1, v4}, Lcom/appnext/nativeads/NativeAd;->access$1802(Lcom/appnext/nativeads/NativeAd;Z)Z

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAd;->click()V

    goto :goto_4

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1, v4}, Lcom/appnext/nativeads/NativeAd;->access$1700(Lcom/appnext/nativeads/NativeAd;Z)V

    goto :goto_3

    .line 15
    :cond_6
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p1

    const-string v5, "cpcActiveFlow"

    invoke-virtual {p1, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpcActiveFlow "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_8

    const/16 v1, 0x62

    if-eq v5, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v2, v4

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v2, v3

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 18
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAd;->click()V

    goto :goto_3

    .line 19
    :cond_a
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {p1, v4}, Lcom/appnext/nativeads/NativeAd;->access$1802(Lcom/appnext/nativeads/NativeAd;Z)Z

    .line 20
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$a;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAd;->click()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_b
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "NativeAd$destroy"

    .line 21
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
