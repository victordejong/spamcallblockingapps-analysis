.class public Lcom/hiya/stingray/ui/contactdetails/y;
.super Lcom/hiya/stingray/ui/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected h(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p4}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/hiya/stingray/ui/contactdetails/y$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string p1, ""

    goto/16 :goto_2

    .line 3
    :pswitch_1
    invoke-static {p3}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_2
    const p2, 0x7f1101fe

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_3
    const p2, 0x7f1102c9

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 6
    :pswitch_4
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/hiya/stingray/ui/r;->e(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    const p2, 0x7f1102d4

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const-string p2, "\"%s\""

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    .line 8
    :pswitch_6
    invoke-virtual {p5}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p5}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p5}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    const p2, 0x7f110111

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_7
    const p2, 0x7f110141

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_8
    const p2, 0x7f110316

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected i(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/y$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const p2, 0x7f11029f

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p2, Lcom/hiya/stingray/ui/b;->VOICEMAIL:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object p2, Lcom/hiya/stingray/ui/b;->MULTI_CONTACT:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object p2, Lcom/hiya/stingray/ui/b;->PRIVATE:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :pswitch_4
    sget-object p2, Lcom/hiya/stingray/ui/b;->UNIDENTIFIED:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object p2, Lcom/hiya/stingray/ui/b;->SCREENED:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :pswitch_6
    sget-object p2, Lcom/hiya/stingray/ui/b;->FRAUD:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :pswitch_7
    sget-object p2, Lcom/hiya/stingray/ui/b;->SPAM:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :pswitch_8
    sget-object p2, Lcom/hiya/stingray/ui/b;->IDENTIFIED:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :pswitch_9
    sget-object p2, Lcom/hiya/stingray/ui/b;->SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/r;->a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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
