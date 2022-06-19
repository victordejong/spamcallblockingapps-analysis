.class public final Le/h/a/b/i/d;
.super Le/h/a/b/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/FiveIconBigContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
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
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->five_cta_expanded:I

    invoke-direct {p0, p1, v0, p2}, Le/h/a/b/i/c;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

    .line 2
    iget-object v0, p2, Le/h/a/b/d;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-static {p1}, Le/h/a/b/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p2, Le/h/a/b/d;->c:Ljava/lang/String;

    .line 6
    :cond_2
    iget-object v0, p2, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0}, Le/h/a/b/i/c;->d(Ljava/lang/String;)V

    .line 8
    iget-object v0, p2, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ltz v0, :cond_a

    move v6, v2

    :goto_1
    add-int/lit8 v7, v6, 0x1

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-eq v6, v1, :cond_6

    if-eq v6, v5, :cond_5

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_3

    goto/16 :goto_2

    .line 10
    :cond_3
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 11
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta5:I

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 12
    iget-object v9, p2, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 13
    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 14
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 15
    invoke-static {v10, v6, v9}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 16
    sget-boolean v6, Le/h/a/b/b;->a:Z

    if-eqz v6, :cond_8

    .line 17
    iget-object v6, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 18
    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 19
    :cond_4
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 20
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta4:I

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 21
    iget-object v9, p2, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 22
    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 24
    invoke-static {v10, v6, v9}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 25
    sget-boolean v6, Le/h/a/b/b;->a:Z

    if-eqz v6, :cond_8

    .line 26
    iget-object v6, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 27
    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 28
    :cond_5
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 29
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta3:I

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    iget-object v9, p2, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 31
    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 32
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 33
    invoke-static {v10, v6, v9}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 34
    sget-boolean v6, Le/h/a/b/b;->a:Z

    if-eqz v6, :cond_8

    .line 35
    iget-object v6, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 36
    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 37
    :cond_6
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 38
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta2:I

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 39
    iget-object v9, p2, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 40
    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 42
    invoke-static {v10, v6, v9}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 43
    sget-boolean v6, Le/h/a/b/b;->a:Z

    if-eqz v6, :cond_8

    .line 44
    iget-object v6, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 45
    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 46
    :cond_7
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 47
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta1:I

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 48
    iget-object v9, p2, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 49
    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    iget-object v9, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 51
    invoke-static {v10, v6, v9}, Le/h/a/b/g;->r(ILjava/lang/String;Landroid/widget/RemoteViews;)V

    .line 52
    sget-boolean v6, Le/h/a/b/b;->a:Z

    if-eqz v6, :cond_8

    .line 53
    iget-object v6, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 54
    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_8
    :goto_2
    if-le v7, v0, :cond_9

    goto :goto_3

    :cond_9
    move v6, v7

    goto/16 :goto_1

    .line 55
    :cond_a
    :goto_3
    sget v0, Lcom/clevertap/android/pushtemplates/R$id;->close:I

    sget v6, Lcom/clevertap/android/pushtemplates/R$drawable;->pt_close:I

    .line 56
    iget-object v7, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 57
    invoke-virtual {v7, v0, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 58
    iget v6, p2, Le/h/a/b/d;->T:I

    const-string v7, "notificationId"

    .line 59
    invoke-virtual {p3, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "close_system_dialogs"

    .line 60
    invoke-virtual {p3, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "cta1"

    .line 62
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget-object v7, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-nez v7, :cond_b

    move-object v7, v8

    goto :goto_4

    .line 64
    :cond_b
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_4
    const-string v9, "wzrk_dl"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v7, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v7, :cond_c

    move-object v2, v8

    goto :goto_5

    .line 66
    :cond_c
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_5
    const-string v7, "5cta_1_"

    invoke-static {v7, v2}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "wzrk_c2a"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 68
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta1:I

    .line 69
    invoke-static {v6, p1}, Ln3/g0/y;->o0(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 70
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v6, "cta2"

    .line 72
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v6, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v6, :cond_d

    move-object v6, v8

    goto :goto_6

    .line 74
    :cond_d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_6
    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v6, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v6, :cond_e

    move-object v6, v8

    goto :goto_7

    .line 76
    :cond_e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_7
    const-string v10, "5cta_2_"

    invoke-static {v10, v6}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 78
    sget v10, Lcom/clevertap/android/pushtemplates/R$id;->cta2:I

    .line 79
    invoke-static {v2, p1}, Ln3/g0/y;->o0(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 80
    invoke-virtual {v6, v10, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v6, "cta3"

    .line 82
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    iget-object v6, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v6, :cond_f

    move-object v6, v8

    goto :goto_8

    .line 84
    :cond_f
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_8
    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v6, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v6, :cond_10

    move-object v5, v8

    goto :goto_9

    .line 86
    :cond_10
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_9
    const-string v6, "5cta_3_"

    invoke-static {v6, v5}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 88
    sget v6, Lcom/clevertap/android/pushtemplates/R$id;->cta3:I

    .line 89
    invoke-static {v2, p1}, Ln3/g0/y;->o0(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 90
    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    iget-object v2, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 92
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_13

    .line 93
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v5, "cta4"

    .line 94
    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget-object v5, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v5, :cond_11

    move-object v5, v8

    goto :goto_a

    .line 96
    :cond_11
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_a
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v5, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v5, :cond_12

    move-object v4, v8

    goto :goto_b

    .line 98
    :cond_12
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_b
    const-string v5, "5cta_4_"

    invoke-static {v5, v4}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 101
    sget v5, Lcom/clevertap/android/pushtemplates/R$id;->cta4:I

    .line 102
    invoke-static {v2, p1}, Ln3/g0/y;->o0(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 103
    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 104
    :cond_13
    iget-object v2, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    .line 105
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_16

    .line 106
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v4, "cta5"

    .line 107
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    iget-object v1, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_14

    move-object v1, v8

    goto :goto_c

    .line 109
    :cond_14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_c
    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p2, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    goto :goto_d

    .line 111
    :cond_15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :goto_d
    const-string v1, "5cta_5_"

    invoke-static {v1, v8}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 114
    sget v3, Lcom/clevertap/android/pushtemplates/R$id;->cta5:I

    .line 115
    invoke-static {v2, p1}, Ln3/g0/y;->o0(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    :cond_16
    iget-object v1, p0, Le/h/a/b/i/c;->c:Landroid/widget/RemoteViews;

    .line 118
    iget v3, p2, Le/h/a/b/d;->T:I

    const/4 v5, 0x0

    const/16 v6, 0x13

    move-object v2, p1

    move-object v4, p3

    move-object v7, p2

    .line 119
    invoke-static/range {v2 .. v7}, Le/h/a/b/i/g;->b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 120
    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method
