.class public final Lcom/google/android/libraries/places/internal/zzcl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)I
    .locals 9

    const/16 v0, 0xd

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "OVER_QUERY_LIMIT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_1
    const-string v2, "UNKNOWN_ERROR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "NOT_FOUND"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "OK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "ZERO_RESULTS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v8

    goto :goto_0

    :sswitch_5
    const-string v2, "INVALID_REQUEST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_6
    const-string v2, "REQUEST_DENIED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v6

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x2335

    return p0

    :cond_3
    const/16 p0, 0x2334

    return p0

    :cond_4
    const/16 p0, 0x2333

    return p0

    :cond_5
    const/16 p0, 0x2332

    return p0

    :cond_6
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65375c95 -> :sswitch_6
        -0x430e23f9 -> :sswitch_5
        -0x307cc2c1 -> :sswitch_4
        0x9dc -> :sswitch_3
        0x3cfe1ed6 -> :sswitch_2
        0x69dc2d93 -> :sswitch_1
        0x6d2eae59 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method
