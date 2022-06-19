.class public Lcom/hiya/stingray/t/i1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/p0;->PRIVATE:Lcom/hiya/stingray/t/p0;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/b;->PRIVATE:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/t/p0;->VOICEMAIL:Lcom/hiya/stingray/t/p0;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/b;->VOICEMAIL:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/hiya/stingray/t/p0;->MULTI_CONTACT:Lcom/hiya/stingray/t/p0;

    if-ne p1, v0, :cond_2

    .line 6
    sget-object p1, Lcom/hiya/stingray/ui/b;->MULTI_CONTACT:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/hiya/stingray/t/p0;->SAVED_CONTACT:Lcom/hiya/stingray/t/p0;

    if-ne p1, v0, :cond_3

    .line 8
    sget-object p1, Lcom/hiya/stingray/ui/b;->SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 9
    :cond_3
    sget-object v0, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne p2, v0, :cond_4

    .line 10
    sget-object p1, Lcom/hiya/stingray/ui/b;->FRAUD:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 11
    :cond_4
    sget-object v0, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p2, v0, :cond_5

    .line 12
    sget-object p1, Lcom/hiya/stingray/ui/b;->SPAM:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 13
    :cond_5
    sget-object p2, Lcom/hiya/stingray/t/p0;->IDENTIFIED:Lcom/hiya/stingray/t/p0;

    if-ne p1, p2, :cond_9

    if-eqz p4, :cond_6

    .line 14
    sget-object p1, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 15
    :cond_6
    sget-object p1, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-eq p3, p1, :cond_8

    sget-object p1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    if-ne p3, p1, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    sget-object p1, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 17
    :cond_8
    :goto_0
    sget-object p1, Lcom/hiya/stingray/ui/b;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 18
    :cond_9
    sget-object p2, Lcom/hiya/stingray/t/p0;->CALL_SCREENED:Lcom/hiya/stingray/t/p0;

    if-ne p1, p2, :cond_a

    .line 19
    sget-object p1, Lcom/hiya/stingray/ui/b;->SCREENED:Lcom/hiya/stingray/ui/b;

    goto :goto_1

    .line 20
    :cond_a
    sget-object p1, Lcom/hiya/stingray/ui/b;->UNIDENTIFIED:Lcom/hiya/stingray/ui/b;

    :goto_1
    return-object p1
.end method

.method public b(Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/p0;Ljava/lang/String;Lcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/p0;->PRIVATE:Lcom/hiya/stingray/t/p0;

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/e;->PRIVATE:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/t/q0;->PREMIUM:Lcom/hiya/stingray/t/q0;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    if-ne p4, p3, :cond_1

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/e;->PREMIUM:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 5
    :cond_1
    sget-object p3, Lcom/hiya/stingray/t/p0;->MULTI_CONTACT:Lcom/hiya/stingray/t/p0;

    if-ne p2, p3, :cond_2

    .line 6
    sget-object p1, Lcom/hiya/stingray/ui/e;->MULTI_CONTACT:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 7
    :cond_2
    sget-object p3, Lcom/hiya/stingray/t/p0;->SAVED_CONTACT:Lcom/hiya/stingray/t/p0;

    if-ne p2, p3, :cond_3

    .line 8
    sget-object p1, Lcom/hiya/stingray/ui/e;->SAVED_CONTACT:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 9
    :cond_3
    sget-object p3, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne p1, p3, :cond_4

    .line 10
    sget-object p1, Lcom/hiya/stingray/ui/e;->FRAUD:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 11
    :cond_4
    sget-object p3, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p1, p3, :cond_5

    .line 12
    sget-object p1, Lcom/hiya/stingray/ui/e;->SPAM:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 13
    :cond_5
    sget-object p1, Lcom/hiya/stingray/t/p0;->IDENTIFIED:Lcom/hiya/stingray/t/p0;

    if-ne p2, p1, :cond_9

    if-eqz p6, :cond_6

    .line 14
    sget-object p1, Lcom/hiya/stingray/ui/e;->IDENTIFIED:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 15
    :cond_6
    sget-object p1, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-eq p5, p1, :cond_8

    sget-object p1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    if-ne p5, p1, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    sget-object p1, Lcom/hiya/stingray/ui/e;->IDENTIFIED:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 17
    :cond_8
    :goto_0
    sget-object p1, Lcom/hiya/stingray/ui/e;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 18
    :cond_9
    sget-object p1, Lcom/hiya/stingray/t/p0;->CALL_SCREENED:Lcom/hiya/stingray/t/p0;

    if-ne p2, p1, :cond_a

    .line 19
    sget-object p1, Lcom/hiya/stingray/ui/e;->CALL_SCREENER:Lcom/hiya/stingray/ui/e;

    goto :goto_1

    .line 20
    :cond_a
    sget-object p1, Lcom/hiya/stingray/ui/e;->NOT_IDENTIFIED:Lcom/hiya/stingray/ui/e;

    :goto_1
    return-object p1
.end method

.method public c(Lcom/hiya/stingray/ui/b;)Lcom/hiya/stingray/ui/contactdetails/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/i1/t$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->UNIDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->VOICEMAIL:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->SCREENED:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->IDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 7
    :pswitch_4
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->PRIVATE:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 8
    :pswitch_5
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->FRAUD:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->SPAM:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 10
    :pswitch_7
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->MULTI_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    goto :goto_0

    .line 11
    :pswitch_8
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/d0;->SAVED_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/p0;->MULTI_CONTACT:Lcom/hiya/stingray/t/p0;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/o;->MULTI_CONTACT:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/t/p0;->SAVED_CONTACT:Lcom/hiya/stingray/t/p0;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/o;->SAVED_CONTACT:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne p2, v0, :cond_2

    .line 6
    sget-object p1, Lcom/hiya/stingray/ui/o;->FRAUD:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p2, v0, :cond_3

    .line 8
    sget-object p1, Lcom/hiya/stingray/ui/o;->SPAM:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 9
    :cond_3
    sget-object p2, Lcom/hiya/stingray/t/p0;->IDENTIFIED:Lcom/hiya/stingray/t/p0;

    if-ne p1, p2, :cond_7

    if-eqz p4, :cond_4

    .line 10
    sget-object p1, Lcom/hiya/stingray/ui/o;->IDENTIFIED:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 11
    :cond_4
    sget-object p1, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-eq p3, p1, :cond_6

    sget-object p1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    if-ne p3, p1, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    sget-object p1, Lcom/hiya/stingray/ui/o;->IDENTIFIED:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 13
    :cond_6
    :goto_0
    sget-object p1, Lcom/hiya/stingray/ui/o;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 14
    :cond_7
    sget-object p2, Lcom/hiya/stingray/t/p0;->CALL_SCREENED:Lcom/hiya/stingray/t/p0;

    if-ne p1, p2, :cond_8

    .line 15
    sget-object p1, Lcom/hiya/stingray/ui/o;->CALL_SCREENED:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 16
    :cond_8
    sget-object p2, Lcom/hiya/stingray/t/p0;->PRIVATE:Lcom/hiya/stingray/t/p0;

    if-ne p1, p2, :cond_9

    .line 17
    sget-object p1, Lcom/hiya/stingray/ui/o;->PRIVATE:Lcom/hiya/stingray/ui/o;

    goto :goto_1

    .line 18
    :cond_9
    sget-object p1, Lcom/hiya/stingray/ui/o;->NOT_IDENTIFIED:Lcom/hiya/stingray/ui/o;

    :goto_1
    return-object p1
.end method
