.class public Ln3/k/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Landroid/os/Bundle;

.field public D:I

.field public E:I

.field public F:Landroid/app/Notification;

.field public G:Landroid/widget/RemoteViews;

.field public H:Landroid/widget/RemoteViews;

.field public I:Landroid/widget/RemoteViews;

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Ljava/lang/String;

.field public M:Ln3/k/b/b;

.field public N:J

.field public O:I

.field public P:Z

.field public Q:Ln3/k/a/p;

.field public R:Landroid/app/Notification;

.field public S:Z

.field public T:Landroid/graphics/drawable/Icon;

.field public U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/k/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/k/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/k/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/app/PendingIntent;

.field public i:Landroid/graphics/Bitmap;

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ln3/k/a/u;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:I

.field public t:I

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    const/4 v5, 0x0

    .line 21
    :goto_0
    invoke-direct {v0, v6, v5}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0x18

    if-nez v5, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v11, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 23
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const/4 v12, -0x1

    .line 24
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v13, "androidx.core.app.NotificationCompat$MessagingStyle"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v12, v6

    goto :goto_1

    :sswitch_1
    const-string v13, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x3

    goto :goto_1

    :sswitch_2
    const-string v13, "androidx.core.app.NotificationCompat$InboxStyle"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    move v12, v7

    goto :goto_1

    :sswitch_3
    const-string v13, "androidx.core.app.NotificationCompat$BigPictureStyle"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    goto :goto_1

    :sswitch_4
    const-string v13, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 25
    :pswitch_0
    new-instance v11, Ln3/k/a/t;

    invoke-direct {v11}, Ln3/k/a/t;-><init>()V

    goto :goto_3

    .line 26
    :pswitch_1
    new-instance v11, Ln3/k/a/o;

    invoke-direct {v11}, Ln3/k/a/o;-><init>()V

    goto :goto_3

    .line 27
    :pswitch_2
    new-instance v11, Ln3/k/a/s;

    invoke-direct {v11}, Ln3/k/a/s;-><init>()V

    goto :goto_3

    .line 28
    :pswitch_3
    new-instance v11, Ln3/k/a/n;

    invoke-direct {v11}, Ln3/k/a/n;-><init>()V

    goto :goto_3

    .line 29
    :pswitch_4
    new-instance v11, Ln3/k/a/r;

    invoke-direct {v11}, Ln3/k/a/r;-><init>()V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v11, "android.selfDisplayName"

    .line 30
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "android.messagingStyleUser"

    .line 31
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto/16 :goto_5

    :cond_9
    const-string v11, "android.picture"

    .line 32
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 33
    new-instance v11, Ln3/k/a/n;

    invoke-direct {v11}, Ln3/k/a/n;-><init>()V

    goto/16 :goto_6

    :cond_a
    const-string v11, "android.bigText"

    .line 34
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 35
    new-instance v11, Ln3/k/a/o;

    invoke-direct {v11}, Ln3/k/a/o;-><init>()V

    goto/16 :goto_6

    :cond_b
    const-string v11, "android.textLines"

    .line 36
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 37
    new-instance v11, Ln3/k/a/s;

    invoke-direct {v11}, Ln3/k/a/s;-><init>()V

    goto/16 :goto_6

    :cond_c
    const-string v11, "android.template"

    .line 38
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_d

    goto :goto_4

    .line 39
    :cond_d
    const-class v12, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 40
    new-instance v11, Ln3/k/a/n;

    invoke-direct {v11}, Ln3/k/a/n;-><init>()V

    goto :goto_6

    .line 41
    :cond_e
    const-class v12, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 42
    new-instance v11, Ln3/k/a/o;

    invoke-direct {v11}, Ln3/k/a/o;-><init>()V

    goto :goto_6

    .line 43
    :cond_f
    const-class v12, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 44
    new-instance v11, Ln3/k/a/s;

    invoke-direct {v11}, Ln3/k/a/s;-><init>()V

    goto :goto_6

    :cond_10
    if-lt v2, v8, :cond_12

    .line 45
    const-class v12, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 46
    new-instance v11, Ln3/k/a/t;

    invoke-direct {v11}, Ln3/k/a/t;-><init>()V

    goto :goto_6

    .line 47
    :cond_11
    const-class v12, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 48
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 49
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 50
    new-instance v11, Ln3/k/a/r;

    invoke-direct {v11}, Ln3/k/a/r;-><init>()V

    goto :goto_6

    :cond_12
    :goto_4
    const/4 v11, 0x0

    goto :goto_6

    .line 51
    :cond_13
    :goto_5
    new-instance v11, Ln3/k/a/t;

    invoke-direct {v11}, Ln3/k/a/t;-><init>()V

    :goto_6
    if-nez v11, :cond_14

    goto :goto_7

    .line 52
    :cond_14
    :try_start_0
    invoke-virtual {v11, v5}, Ln3/k/a/u;->j(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    :goto_7
    const/4 v11, 0x0

    .line 53
    :goto_8
    iget-object v12, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 54
    invoke-virtual {v0, v12}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 55
    iget-object v12, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "android.text"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 56
    invoke-virtual {v0, v12}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 57
    iget-object v12, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.infoText"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 58
    invoke-static {v12}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v0, Ln3/k/a/q;->j:Ljava/lang/CharSequence;

    .line 59
    iget-object v12, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.subText"

    invoke-virtual {v12, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 60
    invoke-virtual {v0, v12}, Ln3/k/a/q;->y(Ljava/lang/CharSequence;)Ln3/k/a/q;

    if-lt v2, v3, :cond_15

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_9

    :cond_15
    const/4 v12, 0x0

    .line 62
    :goto_9
    invoke-static {v12}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v0, Ln3/k/a/q;->r:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v0, v11}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    iget-object v12, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 64
    iput-object v12, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v12

    .line 66
    iput-object v12, v0, Ln3/k/a/q;->v:Ljava/lang/String;

    .line 67
    iget v12, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v12, v12, 0x200

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    goto :goto_a

    :cond_16
    const/4 v12, 0x0

    .line 68
    :goto_a
    iput-boolean v12, v0, Ln3/k/a/q;->w:Z

    const/16 v12, 0x1d

    if-lt v2, v12, :cond_19

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    if-nez v4, :cond_17

    goto :goto_b

    :cond_17
    const-string v8, "locusId cannot be null"

    .line 70
    invoke-static {v4, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v8, Ln3/k/b/b;

    .line 72
    invoke-virtual {v4}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_18

    .line 74
    invoke-direct {v8, v4}, Ln3/k/b/b;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 75
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_b
    const/4 v8, 0x0

    .line 76
    :goto_c
    iput-object v8, v0, Ln3/k/a/q;->M:Ln3/k/b/b;

    move-object v8, v10

    .line 77
    iget-wide v9, v1, Landroid/app/Notification;->when:J

    .line 78
    iget-object v4, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 79
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.showWhen"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 80
    iput-boolean v4, v0, Ln3/k/a/q;->m:Z

    .line 81
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.showChronometer"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 82
    iput-boolean v4, v0, Ln3/k/a/q;->n:Z

    .line 83
    iget v4, v1, Landroid/app/Notification;->flags:I

    const/16 v10, 0x10

    and-int/2addr v4, v10

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    .line 84
    :goto_d
    invoke-virtual {v0, v10, v4}, Ln3/k/a/q;->p(IZ)V

    .line 85
    iget v4, v1, Landroid/app/Notification;->flags:I

    const/16 v10, 0x8

    and-int/2addr v4, v10

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_e

    :cond_1b
    const/4 v4, 0x0

    .line 86
    :goto_e
    invoke-virtual {v0, v10, v4}, Ln3/k/a/q;->p(IZ)V

    .line 87
    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    .line 88
    :goto_f
    invoke-virtual {v0, v7, v4}, Ln3/k/a/q;->p(IZ)V

    .line 89
    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    .line 90
    :goto_10
    iput-boolean v4, v0, Ln3/k/a/q;->y:Z

    .line 91
    iget-object v4, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {v0, v4}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    if-lt v2, v3, :cond_1e

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v4

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    .line 94
    :goto_11
    iput v4, v0, Ln3/k/a/q;->K:I

    .line 95
    iget-object v4, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 96
    iput-object v4, v0, Ln3/k/a/q;->B:Ljava/lang/String;

    if-lt v2, v12, :cond_28

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v10

    if-nez v10, :cond_1f

    goto/16 :goto_16

    :cond_1f
    const/16 v4, 0x1e

    if-lt v2, v4, :cond_23

    .line 98
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 99
    new-instance v4, Ln3/k/a/p$a;

    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ln3/k/a/p$a;-><init>(Ljava/lang/String;)V

    goto :goto_12

    .line 100
    :cond_20
    new-instance v4, Ln3/k/a/p$a;

    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    .line 101
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-direct {v4, v7, v3}, Ln3/k/a/p$a;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    :goto_12
    move-object v3, v4

    .line 102
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v4

    invoke-virtual {v3, v4}, Ln3/k/a/p$a;->b(Z)Ln3/k/a/p$a;

    .line 103
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 104
    iput-object v4, v3, Ln3/k/a/p$a;->f:Landroid/app/PendingIntent;

    .line 105
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v4

    .line 106
    invoke-virtual {v3, v4}, Ln3/k/a/p$a;->d(Z)Ln3/k/a/p$a;

    .line 107
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v4

    if-eqz v4, :cond_21

    .line 108
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ln3/k/a/p$a;->c(I)Ln3/k/a/p$a;

    .line 109
    :cond_21
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v4

    if-eqz v4, :cond_22

    .line 110
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v4

    .line 111
    iput v4, v3, Ln3/k/a/p$a;->d:I

    const/4 v4, 0x0

    .line 112
    iput v4, v3, Ln3/k/a/p$a;->c:I

    .line 113
    :cond_22
    invoke-virtual {v3}, Ln3/k/a/p$a;->a()Ln3/k/a/p;

    move-result-object v3

    goto/16 :goto_17

    :cond_23
    if-ne v2, v12, :cond_28

    .line 114
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_16

    :cond_24
    const/16 v25, 0x0

    .line 115
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 116
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v21

    const-string v4, "Bubble requires non-null pending intent"

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v4

    .line 119
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v20

    .line 120
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v17

    if-eqz v17, :cond_25

    or-int/2addr v4, v7

    goto :goto_13

    :cond_25
    and-int/lit8 v4, v4, -0x3

    :goto_13
    move v7, v4

    .line 121
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v4

    if-eqz v4, :cond_26

    .line 122
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v4

    const/4 v12, 0x0

    .line 123
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_14

    :cond_26
    const/16 v16, 0x0

    .line 124
    :goto_14
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v12

    if-eqz v12, :cond_27

    .line 125
    invoke-virtual {v10}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v16

    move/from16 v23, v16

    const/16 v22, 0x0

    goto :goto_15

    :cond_27
    move/from16 v22, v16

    const/16 v23, 0x0

    .line 126
    :goto_15
    new-instance v10, Ln3/k/a/p;

    const/16 v26, 0x0

    move-object/from16 v18, v10

    move-object/from16 v19, v3

    move/from16 v24, v7

    invoke-direct/range {v18 .. v26}, Ln3/k/a/p;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Ln3/k/a/l;)V

    .line 127
    iput v7, v10, Ln3/k/a/p;->f:I

    move-object v3, v10

    goto :goto_17

    :cond_28
    :goto_16
    const/4 v3, 0x0

    .line 128
    :goto_17
    iput-object v3, v0, Ln3/k/a/q;->Q:Ln3/k/a/p;

    .line 129
    iget v3, v1, Landroid/app/Notification;->number:I

    .line 130
    iput v3, v0, Ln3/k/a/q;->k:I

    .line 131
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 132
    invoke-virtual {v0, v3}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    iget-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 133
    iput-object v3, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 134
    iget-object v3, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 135
    iget-object v7, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v3, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 136
    iget-object v3, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 137
    iget v7, v1, Landroid/app/Notification;->flags:I

    const/16 v10, 0x80

    and-int/2addr v7, v10

    if-eqz v7, :cond_29

    const/4 v7, 0x1

    goto :goto_18

    :cond_29
    const/4 v7, 0x0

    .line 138
    :goto_18
    iput-object v3, v0, Ln3/k/a/q;->h:Landroid/app/PendingIntent;

    .line 139
    invoke-virtual {v0, v10, v7}, Ln3/k/a/q;->p(IZ)V

    .line 140
    iget-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v7, v1, Landroid/app/Notification;->audioStreamType:I

    .line 141
    iget-object v10, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v3, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 142
    iput v7, v10, Landroid/app/Notification;->audioStreamType:I

    .line 143
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 144
    invoke-virtual {v3, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v7}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, v10, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 147
    iget-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 148
    iget-object v6, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v3, v6, Landroid/app/Notification;->vibrate:[J

    .line 149
    iget v3, v1, Landroid/app/Notification;->ledARGB:I

    iget v6, v1, Landroid/app/Notification;->ledOnMS:I

    iget v7, v1, Landroid/app/Notification;->ledOffMS:I

    .line 150
    invoke-virtual {v0, v3, v6, v7}, Ln3/k/a/q;->r(III)Ln3/k/a/q;

    iget v3, v1, Landroid/app/Notification;->defaults:I

    .line 151
    invoke-virtual {v0, v3}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    iget v3, v1, Landroid/app/Notification;->priority:I

    .line 152
    iput v3, v0, Ln3/k/a/q;->l:I

    .line 153
    iget v3, v1, Landroid/app/Notification;->color:I

    .line 154
    iput v3, v0, Ln3/k/a/q;->D:I

    .line 155
    iget v3, v1, Landroid/app/Notification;->visibility:I

    .line 156
    iput v3, v0, Ln3/k/a/q;->E:I

    .line 157
    iget-object v3, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 158
    iput-object v3, v0, Ln3/k/a/q;->F:Landroid/app/Notification;

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 160
    iput-object v3, v0, Ln3/k/a/q;->x:Ljava/lang/String;

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2a

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v6

    goto :goto_19

    :cond_2a
    const-wide/16 v6, 0x0

    .line 162
    :goto_19
    iput-wide v6, v0, Ln3/k/a/q;->N:J

    if-lt v2, v3, :cond_2b

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_2b
    const/4 v3, 0x0

    .line 164
    :goto_1a
    iput-object v3, v0, Ln3/k/a/q;->L:Ljava/lang/String;

    const-string v3, "android.progressMax"

    .line 165
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "android.progress"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v12, "android.progressIndeterminate"

    .line 166
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 167
    invoke-virtual {v0, v6, v10, v4}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_2c

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v4

    goto :goto_1b

    :cond_2c
    const/4 v4, 0x0

    .line 169
    :goto_1b
    iput-boolean v4, v0, Ln3/k/a/q;->P:Z

    .line 170
    iget v4, v1, Landroid/app/Notification;->icon:I

    iget v6, v1, Landroid/app/Notification;->iconLevel:I

    .line 171
    iget-object v10, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v4, v10, Landroid/app/Notification;->icon:I

    .line 172
    iput v6, v10, Landroid/app/Notification;->iconLevel:I

    .line 173
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.colorized"

    const-string v10, "android.chronometerCountDown"

    move-object/from16 v18, v5

    const-string v5, "invisible_actions"

    move/from16 v19, v2

    const-string v2, "android.car.EXTENSIONS"

    const-string v0, "android.people"

    move-object/from16 v20, v11

    const-string v11, "android.people.list"

    if-nez v4, :cond_2d

    move-object v3, v5

    const/4 v4, 0x0

    goto :goto_1d

    .line 174
    :cond_2d
    new-instance v4, Landroid/os/Bundle;

    move-object/from16 p1, v5

    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {v4, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.CHANNEL_ID"

    .line 179
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 180
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.sortKey"

    .line 189
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.groupKey"

    .line 190
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.isGroupSummary"

    .line 191
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.localOnly"

    .line 192
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.actionExtras"

    .line 193
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 195
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, p1

    .line 196
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1c

    :cond_2e
    move-object/from16 v3, p1

    :goto_1c
    if-eqz v20, :cond_2f

    move-object/from16 v5, v20

    .line 198
    invoke-virtual {v5, v4}, Ln3/k/a/u;->c(Landroid/os/Bundle;)V

    :cond_2f
    :goto_1d
    move-object v5, v0

    move-object/from16 v0, p0

    if-eqz v4, :cond_31

    .line 199
    iget-object v7, v0, Ln3/k/a/q;->C:Landroid/os/Bundle;

    if-nez v7, :cond_30

    .line 200
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v0, Ln3/k/a/q;->C:Landroid/os/Bundle;

    goto :goto_1e

    .line 201
    :cond_30
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 202
    :cond_31
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iput-object v4, v0, Ln3/k/a/q;->T:Landroid/graphics/drawable/Icon;

    .line 203
    iget-object v4, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_3b

    array-length v8, v4

    if-eqz v8, :cond_3b

    .line 204
    array-length v8, v4

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v8, :cond_3b

    aget-object v12, v4, v9

    .line 205
    invoke-virtual {v12}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    if-eqz v13, :cond_32

    .line 206
    invoke-virtual {v12}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-static {v13}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v13

    .line 207
    new-instance v14, Ln3/k/a/m$a;

    iget-object v15, v12, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v7, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v14, v13, v15, v7}, Ln3/k/a/m$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_20

    .line 208
    :cond_32
    new-instance v14, Ln3/k/a/m$a;

    iget v7, v12, Landroid/app/Notification$Action;->icon:I

    iget-object v13, v12, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v15, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v14, v7, v13, v15}, Ln3/k/a/m$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 209
    :goto_20
    invoke-virtual {v12}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 210
    array-length v13, v7

    if-eqz v13, :cond_37

    .line 211
    array-length v13, v7

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v13, :cond_37

    aget-object v20, v7, v15

    .line 212
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v29, v4

    .line 213
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v30, v7

    .line 214
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz v22, :cond_36

    .line 215
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v23

    .line 216
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v24

    .line 217
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v25

    move/from16 v31, v8

    .line 218
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_33

    .line 219
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_33
    move/from16 v8, v19

    move/from16 v19, v13

    const/16 v13, 0x1a

    if-lt v8, v13, :cond_34

    .line 220
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v13

    if-eqz v13, :cond_34

    .line 221
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_22
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_34

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v26, v13

    move-object/from16 v13, v21

    check-cast v13, Ljava/lang/String;

    .line 222
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v26

    goto :goto_22

    :cond_34
    const/16 v13, 0x1d

    if-lt v8, v13, :cond_35

    .line 223
    invoke-virtual/range {v20 .. v20}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v13

    move/from16 v26, v13

    goto :goto_23

    :cond_35
    const/16 v26, 0x0

    .line 224
    :goto_23
    new-instance v13, Ln3/k/a/z;

    move-object/from16 v21, v13

    move-object/from16 v27, v7

    move-object/from16 v28, v4

    invoke-direct/range {v21 .. v28}, Ln3/k/a/z;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    .line 225
    invoke-virtual {v14, v13}, Ln3/k/a/m$a;->a(Ln3/k/a/z;)Ln3/k/a/m$a;

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v19

    move-object/from16 v4, v29

    move-object/from16 v7, v30

    move/from16 v19, v8

    move/from16 v8, v31

    goto :goto_21

    .line 226
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Result key can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    move-object/from16 v29, v4

    move/from16 v31, v8

    move/from16 v8, v19

    const/16 v4, 0x18

    if-lt v8, v4, :cond_38

    .line 227
    invoke-virtual {v12}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v4

    iput-boolean v4, v14, Ln3/k/a/m$a;->d:Z

    :cond_38
    const/16 v4, 0x1c

    if-lt v8, v4, :cond_39

    .line 228
    invoke-virtual {v12}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v4

    .line 229
    iput v4, v14, Ln3/k/a/m$a;->g:I

    :cond_39
    const/16 v4, 0x1d

    if-lt v8, v4, :cond_3a

    .line 230
    invoke-virtual {v12}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v7

    .line 231
    iput-boolean v7, v14, Ln3/k/a/m$a;->i:Z

    .line 232
    :cond_3a
    invoke-virtual {v14}, Ln3/k/a/m$a;->b()Ln3/k/a/m;

    move-result-object v7

    invoke-virtual {v0, v7}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v8

    move-object/from16 v4, v29

    move/from16 v8, v31

    goto/16 :goto_1f

    :cond_3b
    move/from16 v8, v19

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 235
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3c

    goto/16 :goto_27

    .line 236
    :cond_3c
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3f

    const/4 v3, 0x0

    .line 237
    :goto_24
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v7

    if-ge v3, v7, :cond_3f

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 239
    sget-object v9, Ln3/k/a/w;->a:Ljava/lang/Object;

    const-string v9, "extras"

    .line 240
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_3d

    const-string v13, "android.support.allowGeneratedReplies"

    const/4 v14, 0x0

    .line 241
    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v26, v16

    goto :goto_25

    :cond_3d
    const/4 v14, 0x0

    move/from16 v26, v14

    .line 242
    :goto_25
    new-instance v12, Ln3/k/a/m;

    const-string v13, "icon"

    .line 243
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "title"

    .line 244
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    const-string v15, "actionIntent"

    .line 245
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    move-object/from16 v22, v15

    check-cast v22, Landroid/app/PendingIntent;

    .line 246
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    const-string v9, "remoteInputs"

    .line 247
    invoke-static {v7, v9}, Ln3/k/a/w;->b(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Ln3/k/a/w;->a([Landroid/os/Bundle;)[Ln3/k/a/z;

    move-result-object v24

    const-string v9, "dataOnlyRemoteInputs"

    .line 248
    invoke-static {v7, v9}, Ln3/k/a/w;->b(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Ln3/k/a/w;->a([Landroid/os/Bundle;)[Ln3/k/a/z;

    move-result-object v25

    const-string v9, "semanticAction"

    .line 249
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    const-string v9, "showsUserInterface"

    .line 250
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    const/16 v29, 0x0

    if-nez v13, :cond_3e

    const/4 v9, 0x0

    const/16 v20, 0x0

    goto :goto_26

    :cond_3e
    const-string v7, ""

    const/4 v9, 0x0

    .line 251
    invoke-static {v9, v7, v13}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    move-object/from16 v20, v7

    :goto_26
    move-object/from16 v19, v12

    invoke-direct/range {v19 .. v29}, Ln3/k/a/m;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ln3/k/a/z;[Ln3/k/a/z;ZIZZ)V

    .line 252
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3f
    :goto_27
    const/4 v14, 0x0

    .line 253
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/k/a/m;

    if-eqz v3, :cond_40

    .line 255
    iget-object v4, v0, Ln3/k/a/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 256
    :cond_41
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 257
    array-length v3, v2

    if-eqz v3, :cond_42

    .line 258
    array-length v3, v2

    move v9, v14

    :goto_29
    if-ge v9, v3, :cond_42

    aget-object v4, v2, v9

    .line 259
    invoke-virtual {v0, v4}, Ln3/k/a/q;->c(Ljava/lang/String;)Ln3/k/a/q;

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_42
    const/16 v2, 0x1c

    if-lt v8, v2, :cond_43

    .line 260
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 261
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 263
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    .line 264
    invoke-static {v2}, Ln3/k/a/y;->a(Landroid/app/Person;)Ln3/k/a/y;

    move-result-object v2

    .line 265
    iget-object v3, v0, Ln3/k/a/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_43
    const/16 v1, 0x18

    if-lt v8, v1, :cond_44

    move-object/from16 v1, v18

    .line 266
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 267
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 268
    iput-boolean v2, v0, Ln3/k/a/q;->o:Z

    .line 269
    invoke-virtual/range {p0 .. p0}, Ln3/k/a/q;->e()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2b

    :cond_44
    move-object/from16 v1, v18

    :cond_45
    :goto_2b
    const/16 v2, 0x1a

    if-lt v8, v2, :cond_46

    .line 270
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 271
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ln3/k/a/q;->k(Z)Ln3/k/a/q;

    :cond_46
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2ab80d9c -> :sswitch_4
        -0xa3fb04d -> :sswitch_3
        0x366a678b -> :sswitch_2
        0x36cfe824 -> :sswitch_1
        0x7c9f11cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/q;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/q;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/q;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln3/k/a/q;->m:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Ln3/k/a/q;->y:Z

    .line 7
    iput v1, p0, Ln3/k/a/q;->D:I

    .line 8
    iput v1, p0, Ln3/k/a/q;->E:I

    .line 9
    iput v1, p0, Ln3/k/a/q;->K:I

    .line 10
    iput v1, p0, Ln3/k/a/q;->O:I

    .line 11
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    .line 12
    iput-object p1, p0, Ln3/k/a/q;->a:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Ln3/k/a/q;->J:Ljava/lang/String;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 15
    iget-object p1, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 16
    iput v1, p0, Ln3/k/a/q;->l:I

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/k/a/q;->U:Ljava/util/ArrayList;

    .line 18
    iput-boolean v0, p0, Ln3/k/a/q;->P:Z

    return-void
.end method

.method public static g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->b:Ljava/util/ArrayList;

    new-instance v1, Ln3/k/a/m;

    invoke-direct {v1, p1, p2, p3}, Ln3/k/a/m;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ln3/k/a/m;)Ln3/k/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ln3/k/a/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/a/q;->U:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public d()Landroid/app/Notification;
    .locals 7

    .line 1
    new-instance v0, Ln3/k/a/v;

    invoke-direct {v0, p0}, Ln3/k/a/v;-><init>(Ln3/k/a/q;)V

    .line 2
    iget-object v1, v0, Ln3/k/a/v;->c:Ln3/k/a/q;

    iget-object v1, v1, Ln3/k/a/q;->p:Ln3/k/a/u;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ln3/k/a/u;->b(Ln3/k/a/j;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Ln3/k/a/u;->h(Ln3/k/a/j;)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 6
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-lt v3, v4, :cond_4

    .line 7
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 8
    iget v4, v0, Ln3/k/a/v;->h:I

    if-eqz v4, :cond_9

    .line 9
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3

    iget v4, v0, Ln3/k/a/v;->h:I

    if-ne v4, v6, :cond_3

    .line 10
    invoke-virtual {v0, v3}, Ln3/k/a/v;->c(Landroid/app/Notification;)V

    .line 11
    :cond_3
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_9

    iget v4, v0, Ln3/k/a/v;->h:I

    if-ne v4, v5, :cond_9

    .line 12
    invoke-virtual {v0, v3}, Ln3/k/a/v;->c(Landroid/app/Notification;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    iget-object v4, v0, Ln3/k/a/v;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 14
    iget-object v3, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 15
    iget-object v4, v0, Ln3/k/a/v;->d:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_5

    .line 16
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 17
    :cond_5
    iget-object v4, v0, Ln3/k/a/v;->e:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_6

    .line 18
    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 19
    :cond_6
    iget-object v4, v0, Ln3/k/a/v;->i:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_7

    .line 20
    iput-object v4, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 21
    :cond_7
    iget v4, v0, Ln3/k/a/v;->h:I

    if-eqz v4, :cond_9

    .line 22
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_8

    iget v4, v0, Ln3/k/a/v;->h:I

    if-ne v4, v6, :cond_8

    .line 23
    invoke-virtual {v0, v3}, Ln3/k/a/v;->c(Landroid/app/Notification;)V

    .line 24
    :cond_8
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_9

    iget v4, v0, Ln3/k/a/v;->h:I

    if-ne v4, v5, :cond_9

    .line 25
    invoke-virtual {v0, v3}, Ln3/k/a/v;->c(Landroid/app/Notification;)V

    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    .line 26
    iput-object v2, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 27
    :cond_a
    iget-object v2, v0, Ln3/k/a/v;->c:Ln3/k/a/q;

    iget-object v2, v2, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_b

    .line 28
    iput-object v2, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_b
    :goto_2
    if-eqz v1, :cond_c

    .line 29
    invoke-virtual {v1, v0}, Ln3/k/a/u;->g(Ln3/k/a/j;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 30
    iput-object v2, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_c
    if-eqz v1, :cond_d

    .line 31
    iget-object v2, v0, Ln3/k/a/v;->c:Ln3/k/a/q;

    iget-object v2, v2, Ln3/k/a/q;->p:Ln3/k/a/u;

    .line 32
    invoke-virtual {v2, v0}, Ln3/k/a/u;->i(Ln3/k/a/j;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 33
    iput-object v0, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_d
    if-eqz v1, :cond_e

    .line 34
    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v1, v0}, Ln3/k/a/u;->a(Landroid/os/Bundle;)V

    :cond_e
    return-object v3
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ln3/k/a/q;->C:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k/a/q;->C:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/k/a/q;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public h(Z)Ln3/k/a/q;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0, p1}, Ln3/k/a/q;->p(IZ)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)Ln3/k/a/q;
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/a/q;->J:Ljava/lang/String;

    return-object p0
.end method

.method public j(I)Ln3/k/a/q;
    .locals 0

    .line 1
    iput p1, p0, Ln3/k/a/q;->D:I

    return-object p0
.end method

.method public k(Z)Ln3/k/a/q;
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/k/a/q;->z:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/k/a/q;->A:Z

    return-object p0
.end method

.method public l(Landroid/app/PendingIntent;)Ln3/k/a/q;
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public m(Ljava/lang/CharSequence;)Ln3/k/a/q;
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln3/k/a/q;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;)Ln3/k/a/q;
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln3/k/a/q;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public o(I)Ln3/k/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 2
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public final p(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method public q(Landroid/graphics/Bitmap;)Ln3/k/a/q;
    .locals 9

    if-eqz p1, :cond_2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/k/a/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Landroidx/core/R$dimen;->compat_notification_large_icon_max_width:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    sget v2, Landroidx/core/R$dimen;->compat_notification_large_icon_max_height:I

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 10
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 13
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 14
    :cond_2
    :goto_0
    iput-object p1, p0, Ln3/k/a/q;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public r(III)Ln3/k/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 2
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    .line 5
    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public s(Z)Ln3/k/a/q;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Ln3/k/a/q;->p(IZ)V

    return-object p0
.end method

.method public t(I)Ln3/k/a/q;
    .locals 0

    .line 1
    iput p1, p0, Ln3/k/a/q;->l:I

    return-object p0
.end method

.method public u(IIZ)Ln3/k/a/q;
    .locals 0

    .line 1
    iput p1, p0, Ln3/k/a/q;->s:I

    .line 2
    iput p2, p0, Ln3/k/a/q;->t:I

    .line 3
    iput-boolean p3, p0, Ln3/k/a/q;->u:Z

    return-object p0
.end method

.method public v(I)Ln3/k/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public w(Landroid/net/Uri;)Ln3/k/a/q;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 2
    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public x(Ln3/k/a/u;)Ln3/k/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->p:Ln3/k/a/u;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Ln3/k/a/q;->p:Ln3/k/a/u;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Ln3/k/a/u;->a:Ln3/k/a/q;

    if-eq v0, p0, :cond_0

    .line 4
    iput-object p0, p1, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 5
    invoke-virtual {p0, p1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    :cond_0
    return-object p0
.end method

.method public y(Ljava/lang/CharSequence;)Ln3/k/a/q;
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln3/k/a/q;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public z(Ljava/lang/CharSequence;)Ln3/k/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/q;->R:Landroid/app/Notification;

    invoke-static {p1}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
