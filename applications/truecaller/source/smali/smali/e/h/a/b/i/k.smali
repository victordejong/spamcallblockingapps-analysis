.class public final Le/h/a/b/i/k;
.super Le/h/a/b/i/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/RatingContentView;",
        "Lcom/clevertap/android/pushtemplates/content/BigImageContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "extras",
        "Landroid/os/Bundle;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;Landroid/os/Bundle;)V",
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
    .locals 17

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
    sget v1, Lcom/clevertap/android/pushtemplates/R$layout;->rating:I

    invoke-direct {v0, v7, v8, v1}, Le/h/a/b/i/b;-><init>(Landroid/content/Context;Le/h/a/b/d;I)V

    .line 2
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 3
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->star1:I

    sget v11, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_outline:I

    invoke-virtual {v1, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 5
    sget v12, Lcom/clevertap/android/pushtemplates/R$id;->star2:I

    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 6
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 7
    sget v13, Lcom/clevertap/android/pushtemplates/R$id;->star3:I

    invoke-virtual {v1, v13, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 9
    sget v14, Lcom/clevertap/android/pushtemplates/R$id;->star4:I

    invoke-virtual {v1, v14, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 10
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 11
    sget v15, Lcom/clevertap/android/pushtemplates/R$id;->star5:I

    invoke-virtual {v1, v15, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 12
    iget-object v6, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 13
    iget v2, v8, Le/h/a/b/d;->T:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v16, v11

    move-object v11, v6

    move-object/from16 v6, p2

    .line 14
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 15
    invoke-virtual {v11, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 16
    iget-object v11, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 17
    iget v2, v8, Le/h/a/b/d;->T:I

    const/16 v5, 0x9

    move-object/from16 v1, p1

    .line 18
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 19
    invoke-virtual {v11, v12, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20
    iget-object v11, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 21
    iget v2, v8, Le/h/a/b/d;->T:I

    const/16 v5, 0xa

    move-object/from16 v1, p1

    .line 22
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 23
    invoke-virtual {v11, v13, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 24
    iget-object v11, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 25
    iget v2, v8, Le/h/a/b/d;->T:I

    const/16 v5, 0xb

    move-object/from16 v1, p1

    .line 26
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 27
    invoke-virtual {v11, v14, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 28
    iget-object v11, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 29
    iget v2, v8, Le/h/a/b/d;->T:I

    const/16 v5, 0xc

    move-object/from16 v1, p1

    .line 30
    invoke-static/range {v1 .. v6}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 31
    invoke-virtual {v11, v15, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 33
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 34
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->tVRatingConfirmation:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    iget v1, v8, Le/h/a/b/d;->T:I

    const-string v4, "notificationId"

    .line 36
    invoke-virtual {v9, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 38
    invoke-static {v9, v7}, Ln3/g0/y;->V(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 39
    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 41
    sget v2, Lcom/clevertap/android/pushtemplates/R$id;->tVRatingConfirmation:I

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    const-string v1, "extras_from"

    const-string v2, ""

    .line 42
    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PTReceiver"

    .line 43
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const-string v2, "clickedStar"

    .line 44
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 45
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 46
    sget v4, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v1, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    move/from16 v4, v16

    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    move/from16 v4, v16

    .line 48
    invoke-virtual {v1, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    const/4 v1, 0x2

    .line 49
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 50
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 51
    sget v5, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v1, v10, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 52
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 53
    invoke-virtual {v1, v12, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 54
    :cond_2
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 55
    invoke-virtual {v1, v12, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_2
    const/4 v1, 0x3

    .line 56
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 57
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 58
    sget v5, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v1, v10, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 60
    invoke-virtual {v1, v12, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 61
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 62
    invoke-virtual {v1, v13, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 63
    :cond_3
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 64
    invoke-virtual {v1, v13, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_3
    const/4 v1, 0x4

    .line 65
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 66
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 67
    sget v5, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v1, v10, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 68
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 69
    invoke-virtual {v1, v12, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 70
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 71
    invoke-virtual {v1, v13, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 72
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 73
    invoke-virtual {v1, v14, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    .line 74
    :cond_4
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 75
    invoke-virtual {v1, v14, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    const/4 v1, 0x5

    .line 76
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 77
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 78
    sget v2, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_star_filled:I

    invoke-virtual {v1, v10, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 79
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 80
    invoke-virtual {v1, v12, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 81
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 82
    invoke-virtual {v1, v13, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 84
    invoke-virtual {v1, v14, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 85
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 86
    invoke-virtual {v1, v15, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5

    .line 87
    :cond_5
    iget-object v1, v0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 88
    invoke-virtual {v1, v15, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_6
    :goto_5
    return-void
.end method
