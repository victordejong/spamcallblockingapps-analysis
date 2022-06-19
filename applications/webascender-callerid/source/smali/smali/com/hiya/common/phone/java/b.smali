.class public Lcom/hiya/common/phone/java/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/i18n/phonenumbers/h$c;)Lg/g/c/a/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/common/phone/java/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 2
    sget-object p0, Lg/g/c/a/b/a/a;->UNKNOWN:Lg/g/c/a/b/a/a;

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Lg/g/c/a/b/a/a;->OTHER:Lg/g/c/a/b/a/a;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lg/g/c/a/b/a/a;->VOIP:Lg/g/c/a/b/a/a;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lg/g/c/a/b/a/a;->PREMIUM:Lg/g/c/a/b/a/a;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lg/g/c/a/b/a/a;->TOLL_FREE:Lg/g/c/a/b/a/a;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lg/g/c/a/b/a/a;->FIXED_OR_MOBILE:Lg/g/c/a/b/a/a;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lg/g/c/a/b/a/a;->MOBILE:Lg/g/c/a/b/a/a;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lg/g/c/a/b/a/a;->FIXED:Lg/g/c/a/b/a/a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
