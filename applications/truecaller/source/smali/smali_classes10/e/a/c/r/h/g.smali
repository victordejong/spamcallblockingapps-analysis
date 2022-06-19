.class public final Le/a/c/r/h/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "grammar"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "Delivery"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_DELIVERY"

    goto :goto_0

    :sswitch_1
    const-string v0, "Notif"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_NOTIF"

    goto :goto_0

    :sswitch_2
    const-string v0, "Event"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_EVENT"

    goto :goto_0

    :sswitch_3
    const-string v0, "Bill"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_BILL"

    goto :goto_0

    :sswitch_4
    const-string v0, "Bank"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_BANK"

    goto :goto_0

    :sswitch_5
    const-string v0, "OTP"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_OTP"

    goto :goto_0

    :sswitch_6
    const-string v0, "Travel"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_TRAVEL"

    goto :goto_0

    :sswitch_7
    const-string v0, "Offers"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GRM_OFFERS"

    :goto_0
    return-object p0

    .line 10
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get grammar for: "

    invoke-static {v1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7363e249 -> :sswitch_7
        -0x6a3494c6 -> :sswitch_6
        0x1330b -> :sswitch_5
        0x1f7a5c -> :sswitch_4
        0x1f9827 -> :sswitch_3
        0x403827a -> :sswitch_2
        0x47f5f10 -> :sswitch_1
        0x34ef8014 -> :sswitch_0
    .end sparse-switch
.end method
