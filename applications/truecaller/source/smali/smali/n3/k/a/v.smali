.class public Ln3/k/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/a/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Ln3/k/a/q;

.field public d:Landroid/widget/RemoteViews;

.field public e:Landroid/widget/RemoteViews;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/os/Bundle;

.field public h:I

.field public i:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Ln3/k/a/q;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Ln3/k/a/v;->f:Ljava/util/List;

    .line 3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v0, Ln3/k/a/v;->g:Landroid/os/Bundle;

    .line 4
    iput-object v1, v0, Ln3/k/a/v;->c:Ln3/k/a/q;

    .line 5
    iget-object v3, v1, Ln3/k/a/q;->a:Landroid/content/Context;

    iput-object v3, v0, Ln3/k/a/v;->a:Landroid/content/Context;

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 6
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, v1, Ln3/k/a/q;->a:Landroid/content/Context;

    iget-object v6, v1, Ln3/k/a/q;->J:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, v1, Ln3/k/a/q;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 8
    :goto_0
    iget-object v4, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    .line 9
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-wide v6, v4, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->icon:I

    iget v7, v4, Landroid/app/Notification;->iconLevel:I

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 11
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    .line 12
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->vibrate:[J

    .line 13
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->ledARGB:I

    iget v8, v4, Landroid/app/Notification;->ledOnMS:I

    iget v9, v4, Landroid/app/Notification;->ledOffMS:I

    .line 14
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    const/4 v8, 0x2

    and-int/2addr v6, v8

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 15
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 16
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 17
    :goto_3
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->defaults:I

    .line 18
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Ln3/k/a/q;->e:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Ln3/k/a/q;->f:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Ln3/k/a/q;->j:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 22
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Ln3/k/a/q;->h:Landroid/app/PendingIntent;

    iget v11, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 24
    :goto_4
    invoke-virtual {v5, v6, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Ln3/k/a/q;->i:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v1, Ln3/k/a/q;->k:I

    .line 26
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v1, Ln3/k/a/q;->s:I

    iget v11, v1, Ln3/k/a/q;->t:I

    iget-boolean v12, v1, Ln3/k/a/q;->u:Z

    .line 27
    invoke-virtual {v5, v6, v11, v12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 28
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-object v6, v1, Ln3/k/a/q;->q:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-boolean v6, v1, Ln3/k/a/q;->n:Z

    .line 29
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v1, Ln3/k/a/q;->l:I

    .line 30
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 31
    iget-object v5, v1, Ln3/k/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v11, "android.support.allowGeneratedReplies"

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/k/a/m;

    .line 32
    invoke-virtual {v6}, Ln3/k/a/m;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v15

    .line 33
    new-instance v8, Landroid/app/Notification$Action$Builder;

    if-eqz v15, :cond_5

    .line 34
    invoke-virtual {v15}, Landroidx/core/graphics/drawable/IconCompat;->u()Landroid/graphics/drawable/Icon;

    move-result-object v15

    goto :goto_6

    :cond_5
    move-object v15, v7

    .line 35
    :goto_6
    iget-object v10, v6, Ln3/k/a/m;->j:Ljava/lang/CharSequence;

    .line 36
    iget-object v7, v6, Ln3/k/a/m;->k:Landroid/app/PendingIntent;

    .line 37
    invoke-direct {v8, v15, v10, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 38
    iget-object v7, v6, Ln3/k/a/m;->c:[Ln3/k/a/z;

    if-eqz v7, :cond_9

    .line 39
    array-length v10, v7

    new-array v15, v10, [Landroid/app/RemoteInput;

    const/4 v13, 0x0

    .line 40
    :goto_7
    array-length v12, v7

    if-ge v13, v12, :cond_8

    .line 41
    aget-object v12, v7, v13

    .line 42
    new-instance v14, Landroid/app/RemoteInput$Builder;

    .line 43
    iget-object v9, v12, Ln3/k/a/z;->a:Ljava/lang/String;

    .line 44
    invoke-direct {v14, v9}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v9, v12, Ln3/k/a/z;->b:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {v14, v9}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v9

    .line 47
    iget-object v14, v12, Ln3/k/a/z;->c:[Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {v9, v14}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v9

    .line 49
    iget-boolean v14, v12, Ln3/k/a/z;->d:Z

    .line 50
    invoke-virtual {v9, v14}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v9

    .line 51
    iget-object v14, v12, Ln3/k/a/z;->f:Landroid/os/Bundle;

    .line 52
    invoke-virtual {v9, v14}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v9

    if-lt v2, v3, :cond_6

    .line 53
    iget-object v14, v12, Ln3/k/a/z;->g:Ljava/util/Set;

    if-eqz v14, :cond_6

    .line 54
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    move-object/from16 v16, v5

    const/4 v5, 0x1

    .line 55
    invoke-virtual {v9, v3, v5}, Landroid/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    move-object/from16 v5, v16

    const/16 v3, 0x1a

    goto :goto_8

    :cond_6
    move-object/from16 v16, v5

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_7

    .line 56
    iget v3, v12, Ln3/k/a/z;->e:I

    .line 57
    invoke-virtual {v9, v3}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 58
    :cond_7
    invoke-virtual {v9}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v3

    .line 59
    aput-object v3, v15, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v16

    const/16 v3, 0x1a

    goto :goto_7

    :cond_8
    move-object/from16 v16, v5

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v10, :cond_a

    .line 60
    aget-object v5, v15, v3

    .line 61
    invoke-virtual {v8, v5}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v16, v5

    .line 62
    :cond_a
    iget-object v3, v6, Ln3/k/a/m;->a:Landroid/os/Bundle;

    if-eqz v3, :cond_b

    .line 63
    new-instance v3, Landroid/os/Bundle;

    .line 64
    iget-object v5, v6, Ln3/k/a/m;->a:Landroid/os/Bundle;

    .line 65
    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a

    .line 66
    :cond_b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 67
    :goto_a
    iget-boolean v5, v6, Ln3/k/a/m;->e:Z

    .line 68
    invoke-virtual {v3, v11, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v5, 0x18

    if-lt v2, v5, :cond_c

    .line 69
    iget-boolean v5, v6, Ln3/k/a/m;->e:Z

    .line 70
    invoke-virtual {v8, v5}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 71
    :cond_c
    iget v5, v6, Ln3/k/a/m;->g:I

    const-string v7, "android.support.action.semanticAction"

    .line 72
    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_d

    .line 73
    iget v5, v6, Ln3/k/a/m;->g:I

    .line 74
    invoke-virtual {v8, v5}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_d
    const/16 v5, 0x1d

    if-lt v2, v5, :cond_e

    .line 75
    iget-boolean v5, v6, Ln3/k/a/m;->h:Z

    .line 76
    invoke-virtual {v8, v5}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 77
    :cond_e
    iget-boolean v5, v6, Ln3/k/a/m;->f:Z

    const-string v6, "android.support.action.showsUserInterface"

    .line 78
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {v8, v3}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 80
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-object/from16 v5, v16

    const/16 v3, 0x1a

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_5

    .line 81
    :cond_f
    iget-object v3, v1, Ln3/k/a/q;->C:Landroid/os/Bundle;

    if-eqz v3, :cond_10

    .line 82
    iget-object v5, v0, Ln3/k/a/v;->g:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 83
    :cond_10
    iget-object v3, v1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    iput-object v3, v0, Ln3/k/a/v;->d:Landroid/widget/RemoteViews;

    .line 84
    iget-object v3, v1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    iput-object v3, v0, Ln3/k/a/v;->e:Landroid/widget/RemoteViews;

    .line 85
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Ln3/k/a/q;->m:Z

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 86
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Ln3/k/a/q;->y:Z

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v1, Ln3/k/a/q;->v:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-boolean v5, v1, Ln3/k/a/q;->w:Z

    .line 88
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v1, Ln3/k/a/q;->x:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 90
    iget v3, v1, Ln3/k/a/q;->O:I

    iput v3, v0, Ln3/k/a/v;->h:I

    .line 91
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-object v5, v1, Ln3/k/a/q;->B:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v1, Ln3/k/a/q;->D:I

    .line 92
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v1, Ln3/k/a/q;->E:I

    .line 93
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v1, Ln3/k/a/q;->F:Landroid/app/Notification;

    .line 94
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v6, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 95
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_11

    .line 96
    iget-object v3, v1, Ln3/k/a/q;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Ln3/k/a/v;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Ln3/k/a/q;->U:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Ln3/k/a/v;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_b

    .line 97
    :cond_11
    iget-object v3, v1, Ln3/k/a/q;->U:Ljava/util/ArrayList;

    :goto_b
    if-eqz v3, :cond_12

    .line 98
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 100
    iget-object v6, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_c

    .line 101
    :cond_12
    iget-object v3, v1, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    iput-object v3, v0, Ln3/k/a/v;->i:Landroid/widget/RemoteViews;

    .line 102
    iget-object v3, v1, Ln3/k/a/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 103
    invoke-virtual/range {p1 .. p1}, Ln3/k/a/q;->e()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "android.car.EXTENSIONS"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_13

    .line 104
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    :cond_13
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 106
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    .line 107
    :goto_d
    iget-object v9, v1, Ln3/k/a/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_16

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Ln3/k/a/q;->d:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/k/a/m;

    .line 110
    sget-object v12, Ln3/k/a/w;->a:Ljava/lang/Object;

    .line 111
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 112
    invoke-virtual {v10}, Ln3/k/a/m;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v13

    if-eqz v13, :cond_14

    .line 113
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->k()I

    move-result v13

    goto :goto_e

    :cond_14
    const/4 v13, 0x0

    :goto_e
    const-string v14, "icon"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget-object v13, v10, Ln3/k/a/m;->j:Ljava/lang/CharSequence;

    const-string v14, "title"

    .line 115
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 116
    iget-object v13, v10, Ln3/k/a/m;->k:Landroid/app/PendingIntent;

    const-string v14, "actionIntent"

    .line 117
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    iget-object v13, v10, Ln3/k/a/m;->a:Landroid/os/Bundle;

    if-eqz v13, :cond_15

    .line 119
    new-instance v13, Landroid/os/Bundle;

    .line 120
    iget-object v14, v10, Ln3/k/a/m;->a:Landroid/os/Bundle;

    .line 121
    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_f

    .line 122
    :cond_15
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 123
    :goto_f
    iget-boolean v14, v10, Ln3/k/a/m;->e:Z

    .line 124
    invoke-virtual {v13, v11, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v14, "extras"

    .line 125
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    iget-object v13, v10, Ln3/k/a/m;->c:[Ln3/k/a/z;

    .line 127
    invoke-static {v13}, Ln3/k/a/w;->c([Ln3/k/a/z;)[Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "remoteInputs"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 128
    iget-boolean v13, v10, Ln3/k/a/m;->f:Z

    const-string v14, "showsUserInterface"

    .line 129
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    iget v10, v10, Ln3/k/a/m;->g:I

    const-string v13, "semanticAction"

    .line 131
    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_16
    const-string v8, "invisible_actions"

    .line 133
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Ln3/k/a/q;->e()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    iget-object v3, v0, Ln3/k/a/v;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    :cond_17
    iget-object v3, v1, Ln3/k/a/q;->T:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_18

    .line 138
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_18
    const/16 v3, 0x18

    if-lt v2, v3, :cond_1b

    .line 139
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-object v5, v1, Ln3/k/a/q;->C:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 141
    iget-object v3, v1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_19

    .line 142
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 143
    :cond_19
    iget-object v3, v1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1a

    .line 144
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 145
    :cond_1a
    iget-object v3, v1, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1b

    .line 146
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_1b
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1d

    .line 147
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget v5, v1, Ln3/k/a/q;->K:I

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v1, Ln3/k/a/q;->r:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, v1, Ln3/k/a/q;->L:Ljava/lang/String;

    .line 149
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-wide v5, v1, Ln3/k/a/q;->N:J

    .line 150
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v1, Ln3/k/a/q;->O:I

    .line 151
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 152
    iget-boolean v3, v1, Ln3/k/a/q;->A:Z

    if-eqz v3, :cond_1c

    .line 153
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Ln3/k/a/q;->z:Z

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 154
    :cond_1c
    iget-object v3, v1, Ln3/k/a/q;->J:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 155
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v6, 0x0

    .line 156
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 158
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    goto :goto_10

    :cond_1d
    const/4 v6, 0x0

    :goto_10
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1e

    .line 159
    iget-object v3, v1, Ln3/k/a/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/k/a/y;

    .line 160
    iget-object v7, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Ln3/k/a/y;->c()Landroid/app/Person;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    goto :goto_11

    :cond_1e
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2c

    .line 161
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-boolean v5, v1, Ln3/k/a/q;->P:Z

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 162
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-object v5, v1, Ln3/k/a/q;->Q:Ln3/k/a/p;

    if-nez v5, :cond_1f

    goto/16 :goto_17

    :cond_1f
    const/16 v7, 0x1e

    if-lt v2, v7, :cond_25

    .line 163
    iget-object v7, v5, Ln3/k/a/p;->g:Ljava/lang/String;

    if-eqz v7, :cond_20

    .line 164
    new-instance v7, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 165
    iget-object v8, v5, Ln3/k/a/p;->g:Ljava/lang/String;

    .line 166
    invoke-direct {v7, v8}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 167
    :cond_20
    new-instance v7, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 168
    iget-object v8, v5, Ln3/k/a/p;->a:Landroid/app/PendingIntent;

    .line 169
    iget-object v9, v5, Ln3/k/a/p;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 170
    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->u()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V

    .line 171
    :goto_12
    iget-object v8, v5, Ln3/k/a/p;->b:Landroid/app/PendingIntent;

    .line 172
    invoke-virtual {v7, v8}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v8

    .line 173
    iget v9, v5, Ln3/k/a/p;->f:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_21

    const/4 v9, 0x1

    goto :goto_13

    :cond_21
    move v9, v6

    .line 174
    :goto_13
    invoke-virtual {v8, v9}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v8

    .line 175
    iget v9, v5, Ln3/k/a/p;->f:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-eqz v9, :cond_22

    const/4 v10, 0x1

    goto :goto_14

    :cond_22
    move v10, v6

    .line 176
    :goto_14
    invoke-virtual {v8, v10}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 177
    iget v6, v5, Ln3/k/a/p;->d:I

    if-eqz v6, :cond_23

    .line 178
    invoke-virtual {v7, v6}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 179
    :cond_23
    iget v5, v5, Ln3/k/a/p;->e:I

    if-eqz v5, :cond_24

    .line 180
    invoke-virtual {v7, v5}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 181
    :cond_24
    invoke-virtual {v7}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v5

    goto :goto_18

    :cond_25
    const/16 v7, 0x1d

    if-ne v2, v7, :cond_2b

    .line 182
    iget-object v7, v5, Ln3/k/a/p;->a:Landroid/app/PendingIntent;

    if-nez v7, :cond_26

    goto :goto_17

    .line 183
    :cond_26
    new-instance v7, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v7}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 184
    iget-object v8, v5, Ln3/k/a/p;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 185
    invoke-virtual {v8}, Landroidx/core/graphics/drawable/IconCompat;->u()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v7

    .line 186
    iget-object v8, v5, Ln3/k/a/p;->a:Landroid/app/PendingIntent;

    .line 187
    invoke-virtual {v7, v8}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v7

    .line 188
    iget-object v8, v5, Ln3/k/a/p;->b:Landroid/app/PendingIntent;

    .line 189
    invoke-virtual {v7, v8}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v7

    .line 190
    iget v8, v5, Ln3/k/a/p;->f:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    goto :goto_15

    :cond_27
    move v8, v6

    .line 191
    :goto_15
    invoke-virtual {v7, v8}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v7

    .line 192
    iget v8, v5, Ln3/k/a/p;->f:I

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-eqz v8, :cond_28

    const/4 v10, 0x1

    goto :goto_16

    :cond_28
    move v10, v6

    .line 193
    :goto_16
    invoke-virtual {v7, v10}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v6

    .line 194
    iget v7, v5, Ln3/k/a/p;->d:I

    if-eqz v7, :cond_29

    .line 195
    invoke-virtual {v6, v7}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 196
    :cond_29
    iget v5, v5, Ln3/k/a/p;->e:I

    if-eqz v5, :cond_2a

    .line 197
    invoke-virtual {v6, v5}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 198
    :cond_2a
    invoke-virtual {v6}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v5

    goto :goto_18

    :cond_2b
    :goto_17
    const/4 v5, 0x0

    .line 199
    :goto_18
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 200
    iget-object v3, v1, Ln3/k/a/q;->M:Ln3/k/b/b;

    if-eqz v3, :cond_2c

    .line 201
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 202
    iget-object v3, v3, Ln3/k/b/b;->b:Landroid/content/LocusId;

    .line 203
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;

    .line 204
    :cond_2c
    iget-boolean v1, v1, Ln3/k/a/q;->S:Z

    if-eqz v1, :cond_2f

    .line 205
    iget-object v1, v0, Ln3/k/a/v;->c:Ln3/k/a/q;

    iget-boolean v1, v1, Ln3/k/a/q;->w:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    .line 206
    iput v1, v0, Ln3/k/a/v;->h:I

    goto :goto_19

    :cond_2d
    const/4 v1, 0x1

    .line 207
    iput v1, v0, Ln3/k/a/v;->h:I

    .line 208
    :goto_19
    iget-object v1, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 209
    iget-object v1, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 210
    iget v1, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x3

    .line 211
    iput v1, v4, Landroid/app/Notification;->defaults:I

    .line 212
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/16 v1, 0x1a

    if-lt v2, v1, :cond_2f

    .line 213
    iget-object v1, v0, Ln3/k/a/v;->c:Ln3/k/a/q;

    iget-object v1, v1, Ln3/k/a/q;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 214
    iget-object v1, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    const-string v2, "silent"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 215
    :cond_2e
    iget-object v1, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget v2, v0, Ln3/k/a/v;->h:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    :cond_2f
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    new-instance v0, Ln3/g/c;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ln3/g/c;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ln3/g/c;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0, p1}, Ln3/g/c;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/k/a/y;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/k/a/y;

    .line 3
    iget-object v2, v1, Ln3/k/a/y;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, v1, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    const-string v2, "name:"

    .line 5
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    .line 4
    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method
