.class public final Lcom/revenuecat/purchases/subscriberattributes/SpecialSubscriberAttributesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SPECIAL_KEY_AD:Ljava/lang/String; = "$ad"

.field public static final SPECIAL_KEY_ADJUST_ID:Ljava/lang/String; = "$adjustId"

.field public static final SPECIAL_KEY_AD_GROUP:Ljava/lang/String; = "$adGroup"

.field public static final SPECIAL_KEY_ANDROID_ID:Ljava/lang/String; = "$androidId"

.field public static final SPECIAL_KEY_APPSFLYER_ID:Ljava/lang/String; = "$appsflyerId"

.field public static final SPECIAL_KEY_CAMPAIGN:Ljava/lang/String; = "$campaign"

.field public static final SPECIAL_KEY_CREATIVE:Ljava/lang/String; = "$creative"

.field public static final SPECIAL_KEY_DISPLAY_NAME:Ljava/lang/String; = "$displayName"

.field public static final SPECIAL_KEY_EMAIL:Ljava/lang/String; = "$email"

.field public static final SPECIAL_KEY_FB_ANON_ID:Ljava/lang/String; = "$fbAnonId"

.field public static final SPECIAL_KEY_FCM_TOKENS:Ljava/lang/String; = "$fcmTokens"

.field public static final SPECIAL_KEY_GPS_AD_ID:Ljava/lang/String; = "$gpsAdId"

.field public static final SPECIAL_KEY_IDFA:Ljava/lang/String; = "$idfa"

.field public static final SPECIAL_KEY_IDFV:Ljava/lang/String; = "$idfv"

.field public static final SPECIAL_KEY_IP:Ljava/lang/String; = "$ip"

.field public static final SPECIAL_KEY_KEYWORD:Ljava/lang/String; = "$keyword"

.field public static final SPECIAL_KEY_MEDIA_SOURCE:Ljava/lang/String; = "$mediaSource"

.field public static final SPECIAL_KEY_MPARTICLE_ID:Ljava/lang/String; = "$mparticleId"

.field public static final SPECIAL_KEY_ONESIGNAL_ID:Ljava/lang/String; = "$onesignalId"

.field public static final SPECIAL_KEY_PHONE_NUMBER:Ljava/lang/String; = "$phoneNumber"


# direct methods
.method public static final getSubscriberAttributeKey(Ljava/lang/String;)Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey;
    .locals 1

    const-string v0, "$this$getSubscriberAttributeKey"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "$displayName"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DisplayName;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$DisplayName;

    goto :goto_1

    :sswitch_1
    const-string v0, "$email"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Email;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Email;

    goto :goto_1

    :sswitch_2
    const-string v0, "$phoneNumber"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$PhoneNumber;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$PhoneNumber;

    goto :goto_1

    :sswitch_3
    const-string v0, "$fcmTokens"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$FCMTokens;->INSTANCE:Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$FCMTokens;

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Custom;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributeKey$Custom;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4aa6d69a -> :sswitch_3
        -0x3220044d -> :sswitch_2
        0x4330c1f8 -> :sswitch_1
        0x7b2717c9 -> :sswitch_0
    .end sparse-switch
.end method
