.class public Lcom/freshchat/consumer/sdk/service/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 9

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->MESSAGE_TYPE_NORMAL:Lcom/freshchat/consumer/sdk/beans/Message$MessageType;

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lcom/freshchat/consumer/sdk/service/d/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJLcom/freshchat/consumer/sdk/beans/Message$ReplyTo;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fE()J

    move-result-wide v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {v3}, Lcom/freshchat/consumer/sdk/beans/Message;-><init>()V

    invoke-virtual {v3, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Lcom/freshchat/consumer/sdk/beans/Message;->setConversationId(J)V

    invoke-virtual {v3, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageUserAlias(Ljava/lang/String;)V

    invoke-virtual {v3, p4, p5}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V

    invoke-virtual {p7}, Lcom/freshchat/consumer/sdk/beans/Message$MessageType;->getIntValue()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->setMessageType(I)V

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Lcom/freshchat/consumer/sdk/beans/Message;->addMessageFragment(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {v3, p6}, Lcom/freshchat/consumer/sdk/beans/Message;->setReplyTo(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)V

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/freshchat/consumer/sdk/beans/Message;->setRead(Z)V

    invoke-virtual {v3, v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setCreatedMillis(J)V

    return-object v3
.end method

.method public static a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;JJJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 11

    move-wide/from16 v0, p7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->setOriginalMessageId(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v9, v2

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object v10, p2

    invoke-static/range {v3 .. v10}, Lcom/freshchat/consumer/sdk/service/d/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJLcom/freshchat/consumer/sdk/beans/Message$ReplyTo;Lcom/freshchat/consumer/sdk/beans/Message$MessageType;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 7

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string p1, "text/html"

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/freshchat/consumer/sdk/service/d/c;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;JJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;Z)Ljava/lang/String;
    .locals 5

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/cv;->h(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v3

    const-string v4, "\n"

    if-ne v2, v3, :cond_2

    invoke-static {v1, p0, p2}, Lcom/freshchat/consumer/sdk/j/cv;->a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v3

    if-ne v2, v3, :cond_3

    instance-of v2, v1, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_TITLE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p0
.end method

.method public static f(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, ""

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/cm;->u(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getReplyFragments()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v8, v7, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyDropDownFragment;

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v7

    if-nez v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_2
    instance-of v7, v7, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselFragment;

    if-eqz v7, :cond_1

    const-string v1, "&#128280; "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_carousel_default_preview_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v5, 0x0

    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/freshchat/consumer/sdk/j/cv;->h(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v3

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move-object v8, v7

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v14, v13, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    if-eqz v14, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_7

    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v13, v3, v6}, Lcom/freshchat/consumer/sdk/j/cv;->a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;ZZ)Ljava/lang/String;

    move-result-object v7

    const/16 v13, 0x64

    invoke-static {v7, v13}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_8

    move v9, v6

    goto :goto_1

    :cond_8
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_9

    move v10, v6

    goto :goto_1

    :cond_9
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_a

    move v11, v6

    goto :goto_1

    :cond_a
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_b

    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    check-cast v13, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x28

    invoke-static {v8, v13}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_b
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->COLLECTION:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_f

    check-cast v13, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;->getFragments()Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;->getFragments()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    instance-of v14, v14, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    if-nez v14, :cond_c

    goto :goto_2

    :cond_d
    move v13, v6

    goto :goto_3

    :cond_e
    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_5

    :goto_4
    move v12, v6

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->QUICK_REPLY_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_10

    instance-of v14, v13, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    if-eqz v14, :cond_5

    check-cast v13, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    new-instance v7, Lcom/freshchat/consumer/sdk/k/e;

    invoke-direct {v7, v0}, Lcom/freshchat/consumer/sdk/k/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13}, Lcom/freshchat/consumer/sdk/k/e;->b(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)V

    invoke-virtual {v7}, Lcom/freshchat/consumer/sdk/k/e;->hb()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v14

    sget-object v15, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v15}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v15

    if-ne v14, v15, :cond_11

    instance-of v14, v13, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    if-eqz v14, :cond_5

    check-cast v13, Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    sget-object v7, Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;->CAROUSEL_CARD_TITLE:Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;

    invoke-static {v13, v7}, Lcom/freshchat/consumer/sdk/j/cg;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TemplateFragment;Lcom/freshchat/consumer/sdk/beans/fragment/SectionKey;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v13}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v13

    sget-object v14, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALENDAR_EVENT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v14}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v14

    if-ne v13, v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v13

    if-eqz v13, :cond_5

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_invite_awaiting_confirmation:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_12
    if-eqz v2, :cond_13

    const-string v1, "&#128197; "

    :cond_13
    if-eqz v9, :cond_14

    const-string v0, "&#128247; "

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    if-eqz v10, :cond_15

    const-string v0, "&#127908; Voice Message "

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_15
    if-eqz v11, :cond_16

    const-string v0, "&#127909; "

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    if-eqz v5, :cond_17

    const-string v0, "&#128315; "

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_17
    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v1, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_18
    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v1, v7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_19
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v12, :cond_1a

    const-string v0, "&#10071;"

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1a
    return-object v1
.end method

.method public static i(Lcom/freshchat/consumer/sdk/beans/Message;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_welcome_message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
