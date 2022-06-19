.class public final Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;",
        "Landroid/app/IntentService;",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onHandleIntent",
        "(Landroid/content/Intent;)V",
        "",
        "resultCode",
        "",
        "message",
        "Landroid/location/Address;",
        "address",
        "a",
        "(ILjava/lang/String;Landroid/location/Address;)V",
        "Landroid/os/ResultReceiver;",
        "Landroid/os/ResultReceiver;",
        "receiver",
        "<init>",
        "()V",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "FetchAddressIS"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/location/Address;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;->a:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "com.truecaller.flashsdk.assist.RESULT_DATA_KEY"

    .line 2
    invoke-static {v1, p2}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.flashsdk.assist.LOCATION_DATA_AREA"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.flashsdk.assist.LOCATION_DATA_CITY"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p3, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.truecaller.flashsdk.assist.LOCATION_DATA_STREET"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    if-eqz p1, :cond_6

    const-string v0, "com.truecaller.flashsdk.assist.RECEIVER"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;->a:Landroid/os/ResultReceiver;

    const-string v0, "com.truecaller.flashsdk.assist.LOCATION_DATA_EXTRA"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/truecaller/flashsdk/R$string;->no_location_data_provided:I

    invoke-virtual {p0, p1}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.no_location_data_provided)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;->a(ILjava/lang/String;Landroid/location/Address;)V

    return-void

    .line 5
    :cond_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    .line 8
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget v2, Lcom/truecaller/flashsdk/R$string;->service_not_available:I

    invoke-virtual {p0, v2}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.service_not_available)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 13
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v0

    invoke-static {v3, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ls1/u/z;

    invoke-virtual {v2}, Ls1/u/z;->a()I

    move-result v2

    .line 16
    invoke-virtual {p1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextUtils.join(System.li\u2026ator(), addressFragments)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v3, v0, p1}, Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;->a(ILjava/lang/String;Landroid/location/Address;)V

    goto :goto_3

    .line 19
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    move v3, v0

    :cond_4
    if-eqz v3, :cond_5

    .line 20
    sget p1, Lcom/truecaller/flashsdk/R$string;->no_address_found:I

    invoke-virtual {p0, p1}, Landroid/app/IntentService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "getString(R.string.no_address_found)"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-virtual {p0, v0, v2, v1}, Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;->a(ILjava/lang/String;Landroid/location/Address;)V

    :cond_6
    :goto_3
    return-void
.end method
