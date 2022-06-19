.class public final Lcom/hiya/client/callerid/ui/overlay/g/b;
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
.method public final a(Lg/g/b/c/o;Lg/g/b/c/i;Lg/g/b/c/k;Lg/g/b/c/q;)Lcom/hiya/client/callerid/ui/b0/d;
    .locals 1

    const-string v0, "profileIconType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reputationLevel"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/overlay/g/a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lg/g/b/c/i;->PERSON:Lg/g/b/c/i;

    if-eq p2, p1, :cond_1

    sget-object p1, Lg/g/b/c/i;->BUSINESS:Lg/g/b/c/i;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->NOT_IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 5
    :pswitch_1
    sget-object p1, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    if-ne p3, p1, :cond_2

    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->PREMIUM:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 6
    :cond_2
    sget-object p1, Lcom/hiya/client/callerid/ui/overlay/g/a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    .line 7
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 8
    :cond_3
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->FRAUD:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->SPAM:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->FRAUD:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 11
    :pswitch_3
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 12
    :pswitch_4
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->SPAM:Lcom/hiya/client/callerid/ui/b0/d;

    goto :goto_1

    .line 13
    :pswitch_5
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/d;->IDENTIFIED:Lcom/hiya/client/callerid/ui/b0/d;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
