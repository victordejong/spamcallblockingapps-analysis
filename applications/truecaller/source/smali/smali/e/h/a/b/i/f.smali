.class public final Le/h/a/b/i/f;
.super Le/h/a/b/i/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ManualCarouselContentView;",
        "Lcom/clevertap/android/pushtemplates/content/BigImageContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "extras",
        "Landroid/os/Bundle;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V",
        "setCustomContentViewMessageSummary",
        "",
        "pt_msg_summary",
        "",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "context"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "renderer"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extras"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Lcom/clevertap/android/pushtemplates/R$layout;->manual_carousel:I

    invoke-direct {v0, v7, v8, v1}, Le/h/a/b/i/b;-><init>(Landroid/content/Context;Le/h/a/b/d;I)V

    .line 2
    iget-object v1, v8, Le/h/a/b/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    .line 5
    iget-object v4, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 6
    sget v5, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    .line 7
    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    .line 8
    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v4, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 10
    sget v5, Lcom/clevertap/android/pushtemplates/R$id;->msg:I

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11
    :cond_2
    :goto_1
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 12
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->leftArrowPos0:I

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 14
    sget v4, Lcom/clevertap/android/pushtemplates/R$id;->rightArrowPos0:I

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 15
    iget-object v1, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 16
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "renderer.deepLinkList!![0]"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v4, v8, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 19
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_8

    move v5, v2

    move v6, v5

    move v10, v6

    :goto_2
    add-int/lit8 v11, v5, 0x1

    .line 20
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/clevertap/android/pushtemplates/R$layout;->image_view_rounded:I

    invoke-direct {v12, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 21
    sget v13, Lcom/clevertap/android/pushtemplates/R$id;->flipper_img:I

    .line 22
    iget-object v14, v8, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 23
    invoke-static {v14}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 24
    invoke-static {v14}, Le/h/a/b/g;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 25
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v15}, Le/h/a/b/g;->v(Ljava/lang/Boolean;)V

    if-eqz v14, :cond_3

    .line 26
    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 27
    :cond_3
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13}, Le/h/a/b/g;->v(Ljava/lang/Boolean;)V

    .line 28
    :goto_3
    sget-boolean v13, Le/h/a/b/b;->a:Z

    if-nez v13, :cond_5

    if-nez v6, :cond_4

    move v6, v3

    move v10, v5

    .line 29
    :cond_4
    iget-object v13, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 30
    sget v14, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 31
    iget-object v13, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 32
    sget v14, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_right:I

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 33
    iget-object v13, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 34
    sget v14, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_left:I

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 35
    iget-object v12, v8, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 36
    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 37
    :cond_5
    iget-object v12, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    .line 38
    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 39
    iget-object v13, v8, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 40
    invoke-static {v13}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_6

    .line 41
    iget-object v12, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 42
    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_4
    if-le v11, v4, :cond_7

    goto :goto_5

    :cond_7
    move v5, v11

    goto :goto_2

    :cond_8
    move v10, v2

    .line 43
    :goto_5
    iget-object v4, v8, Le/h/a/b/d;->R:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v5, "filmstrip"

    .line 44
    invoke-static {v4, v5, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 45
    :cond_9
    iget-object v4, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 46
    sget v5, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_right:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    iget-object v4, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 48
    sget v5, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_left:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_a
    const-string v4, "right_swipe"

    .line 49
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "manual_carousel_from"

    const-string v11, "wzrk_dl"

    const-string v12, "pt_manual_carousel_current"

    if-eqz v5, :cond_12

    .line 50
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 51
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v3

    if-ne v10, v13, :cond_b

    move v13, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v13, v10, 0x1

    :goto_6
    if-nez v10, :cond_c

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v3

    goto :goto_7

    :cond_c
    add-int/lit8 v14, v10, -0x1

    .line 54
    :goto_7
    iget-object v15, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 55
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    invoke-virtual {v15, v2, v10}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    .line 56
    iget-object v15, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 57
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_right:I

    invoke-virtual {v15, v3, v13}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    .line 58
    iget-object v15, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 59
    sget v7, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_left:I

    .line 60
    invoke-virtual {v15, v7, v14}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    if-eqz v5, :cond_d

    .line 61
    iget-object v5, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 62
    invoke-virtual {v5, v2}, Landroid/widget/RemoteViews;->showNext(I)V

    .line 63
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->showNext(I)V

    .line 65
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 66
    invoke-virtual {v2, v7}, Landroid/widget/RemoteViews;->showNext(I)V

    goto :goto_8

    .line 67
    :cond_d
    iget-object v5, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 68
    invoke-virtual {v5, v2}, Landroid/widget/RemoteViews;->showPrevious(I)V

    .line 69
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 70
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->showPrevious(I)V

    .line 71
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v2, v7}, Landroid/widget/RemoteViews;->showPrevious(I)V

    move v13, v14

    .line 73
    :goto_8
    iget-object v2, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    const-string v3, "deepLinkList.get(newPosition)"

    if-eqz v2, :cond_e

    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v5, v1, :cond_e

    .line 75
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_e
    const-string v1, "deepLinkList.get(0)"

    if-eqz v2, :cond_f

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_f
    if-eqz v2, :cond_10

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_10

    .line 79
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_10
    if-eqz v2, :cond_11

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v13, :cond_11

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_11
    const-string v1, ""

    .line 82
    :goto_9
    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v9, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v9, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-object v7, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 87
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->rightArrowPos0:I

    .line 88
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    .line 89
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    invoke-virtual {v7, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    iget-object v7, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 92
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->leftArrowPos0:I

    .line 93
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v5, 0x5

    move-object/from16 v1, p1

    .line 94
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 95
    invoke-virtual {v7, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_a

    .line 96
    :cond_12
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 97
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_right:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    .line 98
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 99
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    .line 100
    iget-object v2, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 101
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->carousel_image_left:I

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 103
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setDisplayedChild(II)V

    .line 104
    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pt_image_list"

    .line 105
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    iget-object v1, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    const-string v2, "pt_deeplink_list"

    .line 107
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    iget-object v1, v8, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 109
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v9, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v7, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 112
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->rightArrowPos0:I

    .line 113
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    .line 114
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 115
    invoke-virtual {v7, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    iget-object v7, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 117
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->leftArrowPos0:I

    .line 118
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v5, 0x5

    move-object/from16 v1, p1

    .line 119
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 120
    invoke-virtual {v7, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_a
    return-void
.end method
