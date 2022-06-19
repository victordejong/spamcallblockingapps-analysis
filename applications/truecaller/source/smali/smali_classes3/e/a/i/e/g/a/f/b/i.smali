.class public final Le/a/i/e/g/a/f/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/ads/offline/dto/UiComponent;Le/a/i/e/g/a/f/b/e;Landroid/view/ViewGroup;)Le/a/i/e/g/a/f/b/d;
    .locals 4

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ads/offline/dto/UiComponent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x77471352

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Button"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    if-nez v0, :cond_1

    move-object p1, v2

    :cond_1
    check-cast p1, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    if-eqz p1, :cond_2

    .line 3
    new-instance v2, Le/a/i/e/g/a/f/b/b;

    invoke-direct {v2, p1, p2, p3}, Le/a/i/e/g/a/f/b/b;-><init>(Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;Le/a/i/e/g/a/f/b/e;Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method public b(Lcom/truecaller/ads/offline/dto/UiComponent;Landroid/view/ViewGroup;Lcom/truecaller/ads/offline/dto/OfflineAdType;)Le/a/i/e/g/a/f/b/g;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "component"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "container"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adType"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/offline/dto/UiComponent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v4, "LabelWithLink"

    .line 2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-nez v2, :cond_0

    move-object v0, v8

    :cond_0
    check-cast v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-eqz v0, :cond_a

    .line 3
    new-instance v2, Le/a/i/e/g/a/f/b/m;

    new-instance v4, Le/a/i/e/j/b;

    .line 4
    iget-object v6, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->c:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 6
    new-instance v3, Le/a/i/e/j/c;

    sget v7, Lcom/truecaller/ads/R$style;->Ads_LeadGen_TextView_LabelWithLink:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_textview:I

    .line 7
    iget-object v9, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->d:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->e:Ljava/lang/String;

    .line 9
    invoke-direct {v3, v7, v8, v9, v0}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v3, Le/a/i/e/j/c;

    sget v0, Lcom/truecaller/ads/R$style;->Ads_Article_TextView_LabelWithLink:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/truecaller/ads/R$layout;->offline_article_item_textview:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    .line 11
    :goto_0
    invoke-direct {v4, v1, v6, v5, v3}, Le/a/i/e/j/b;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;ZLe/a/i/e/j/c;)V

    invoke-direct {v2, v4}, Le/a/i/e/g/a/f/b/m;-><init>(Le/a/i/e/j/b;)V

    goto/16 :goto_3

    :sswitch_1
    const-string v4, "SubHeading"

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-nez v2, :cond_2

    move-object v0, v8

    :cond_2
    check-cast v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-eqz v0, :cond_a

    .line 13
    new-instance v2, Le/a/i/e/g/a/f/b/m;

    new-instance v4, Le/a/i/e/j/b;

    .line 14
    iget-object v5, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->c:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v7, :cond_3

    .line 16
    new-instance v3, Le/a/i/e/j/c;

    sget v7, Lcom/truecaller/ads/R$style;->Ads_LeadGen_TextView_SubHeading:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_textview:I

    .line 17
    iget-object v9, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->d:Ljava/lang/String;

    .line 18
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->e:Ljava/lang/String;

    .line 19
    invoke-direct {v3, v7, v8, v9, v0}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_3
    new-instance v3, Le/a/i/e/j/c;

    sget v0, Lcom/truecaller/ads/R$style;->Ads_Article_TextView_SubHeading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/truecaller/ads/R$layout;->offline_article_item_textview:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    .line 21
    :goto_1
    invoke-direct {v4, v1, v5, v6, v3}, Le/a/i/e/j/b;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;ZLe/a/i/e/j/c;)V

    .line 22
    invoke-direct {v2, v4}, Le/a/i/e/g/a/f/b/m;-><init>(Le/a/i/e/j/b;)V

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "ImageView"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-nez v2, :cond_4

    move-object v0, v8

    :cond_4
    check-cast v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-eqz v0, :cond_a

    .line 24
    new-instance v2, Le/a/i/e/g/a/f/b/c;

    new-instance v9, Le/a/i/e/j/c;

    const/4 v4, 0x0

    sget v5, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_imageview:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v0, v1, v9}, Le/a/i/e/g/a/f/b/c;-><init>(Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;Landroid/view/ViewGroup;Le/a/i/e/j/c;)V

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "SponsoredImageView"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-nez v2, :cond_5

    move-object v0, v8

    :cond_5
    check-cast v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-eqz v0, :cond_a

    .line 26
    new-instance v2, Le/a/i/e/g/a/f/b/c;

    new-instance v9, Le/a/i/e/j/c;

    const/4 v4, 0x0

    sget v5, Lcom/truecaller/ads/R$layout;->offline_article_header_imageview:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v0, v1, v9}, Le/a/i/e/g/a/f/b/c;-><init>(Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;Landroid/view/ViewGroup;Le/a/i/e/j/c;)V

    goto/16 :goto_3

    :sswitch_4
    const-string v3, "HtmlBody"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-nez v2, :cond_6

    move-object v0, v8

    :cond_6
    check-cast v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-eqz v0, :cond_a

    .line 28
    new-instance v2, Le/a/i/e/g/a/f/b/m;

    .line 29
    new-instance v3, Le/a/i/e/j/b;

    .line 30
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->c:Ljava/lang/String;

    .line 31
    new-instance v4, Le/a/i/e/j/c;

    sget v6, Lcom/truecaller/ads/R$style;->Ads_Article_TextView_Body:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/truecaller/ads/R$layout;->offline_article_item_textview:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    .line 32
    invoke-direct {v3, v1, v0, v5, v4}, Le/a/i/e/j/b;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;ZLe/a/i/e/j/c;)V

    .line 33
    invoke-direct {v2, v3}, Le/a/i/e/g/a/f/b/m;-><init>(Le/a/i/e/j/b;)V

    goto/16 :goto_3

    :sswitch_5
    const-string v4, "Heading"

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-nez v2, :cond_7

    move-object v0, v8

    :cond_7
    check-cast v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-eqz v0, :cond_a

    .line 35
    new-instance v2, Le/a/i/e/g/a/f/b/m;

    new-instance v4, Le/a/i/e/j/b;

    .line 36
    iget-object v5, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->c:Ljava/lang/String;

    .line 37
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 38
    new-instance v3, Le/a/i/e/j/c;

    sget v7, Lcom/truecaller/ads/R$style;->Ads_LeadGen_TextView_Heading:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_textview:I

    .line 39
    iget-object v9, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->d:Ljava/lang/String;

    .line 40
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;->e:Ljava/lang/String;

    .line 41
    invoke-direct {v3, v7, v8, v9, v0}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_8
    new-instance v3, Le/a/i/e/j/c;

    sget v0, Lcom/truecaller/ads/R$style;->Ads_Article_TextView_Heading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/truecaller/ads/R$layout;->offline_article_item_textview:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    .line 43
    :goto_2
    invoke-direct {v4, v1, v5, v6, v3}, Le/a/i/e/j/b;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;ZLe/a/i/e/j/c;)V

    .line 44
    invoke-direct {v2, v4}, Le/a/i/e/g/a/f/b/m;-><init>(Le/a/i/e/j/b;)V

    goto :goto_3

    :sswitch_6
    const-string v3, "ArticleBodyImageview"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-nez v2, :cond_9

    move-object v0, v8

    :cond_9
    check-cast v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-eqz v0, :cond_a

    .line 46
    new-instance v2, Le/a/i/e/g/a/f/b/c;

    new-instance v9, Le/a/i/e/j/c;

    const/4 v4, 0x0

    sget v5, Lcom/truecaller/ads/R$layout;->offline_article_item_imageview:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/a/i/e/j/c;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v0, v1, v9}, Le/a/i/e/g/a/f/b/c;-><init>(Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;Landroid/view/ViewGroup;Le/a/i/e/j/c;)V

    :goto_3
    move-object v8, v2

    :cond_a
    :goto_4
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x7ac3ce38 -> :sswitch_6
        -0x6d5fea1e -> :sswitch_5
        -0x1046b3f3 -> :sswitch_4
        0x2cb75d87 -> :sswitch_3
        0x431b5280 -> :sswitch_2
        0x4de9abc2 -> :sswitch_1
        0x725ee0d4 -> :sswitch_0
    .end sparse-switch
.end method
