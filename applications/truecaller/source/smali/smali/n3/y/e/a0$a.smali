.class public Ln3/y/e/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/a0;


# direct methods
.method public constructor <init>(Ln3/y/e/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/a0$a;->a:Ln3/y/e/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    const/4 v4, 0x2

    if-eq v2, v4, :cond_20

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v2, v7, :cond_16

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    return v8

    .line 2
    :cond_0
    iget-object v2, v1, Ln3/y/e/a0$a;->a:Ln3/y/e/a0;

    .line 3
    iget-boolean v9, v2, Ln3/y/e/a0;->k:Z

    if-eqz v9, :cond_6

    .line 4
    iget-boolean v9, v2, Ln3/y/e/a0;->l:Z

    if-eqz v9, :cond_1

    move v4, v3

    goto/16 :goto_e

    .line 5
    :cond_1
    iget-object v9, v2, Ln3/y/e/a0;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 6
    iget-object v9, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-eqz v9, :cond_2

    .line 7
    iget-object v9, v9, Ln3/y/e/b0;->f:Landroid/media/MediaFormat;

    const-string v10, "is-forced-subtitle"

    .line 8
    invoke-static {v9, v10, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->j0(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v9, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-eqz v9, :cond_5

    .line 10
    invoke-virtual {v9}, Ln3/y/e/b0;->a()Ln3/y/e/b0$b;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    if-ne v7, v0, :cond_5

    .line 11
    iget-object v7, v2, Ln3/y/e/a0;->i:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Ln3/y/e/a0;->a(Landroid/os/Message;)V

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    iget-object v7, v2, Ln3/y/e/a0;->i:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7}, Ln3/y/e/a0;->a(Landroid/os/Message;)V

    .line 13
    :cond_5
    :goto_2
    iput-boolean v8, v2, Ln3/y/e/a0;->l:Z

    .line 14
    :cond_6
    iget-object v7, v2, Ln3/y/e/a0;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    if-nez v7, :cond_7

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    goto :goto_3

    :cond_7
    move-object v9, v7

    .line 16
    :goto_3
    iget-object v10, v2, Ln3/y/e/a0;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v10}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v10

    xor-int/2addr v10, v3

    .line 17
    iget-object v11, v2, Ln3/y/e/a0;->e:Ljava/lang/Object;

    monitor-enter v11

    .line 18
    :try_start_0
    iget-object v12, v2, Ln3/y/e/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, -0x1

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/y/e/b0;

    .line 19
    iget-object v15, v14, Ln3/y/e/b0;->f:Landroid/media/MediaFormat;

    const-string v0, "language"

    .line 20
    invoke-virtual {v15, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "is-forced-subtitle"

    .line 21
    invoke-static {v15, v4, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->j0(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    move v4, v8

    :goto_5
    const-string v5, "is-autoselect"

    .line 22
    invoke-static {v15, v5, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->j0(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    goto :goto_6

    :cond_9
    move v5, v8

    :goto_6
    const-string v3, "is-default"

    .line 23
    invoke-static {v15, v3, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->j0(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    move v3, v8

    :goto_7
    if-eqz v9, :cond_c

    .line 24
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v8, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 25
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 26
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v4, :cond_d

    const/4 v8, 0x0

    goto :goto_a

    :cond_d
    const/16 v8, 0x8

    :goto_a
    if-nez v7, :cond_e

    if-eqz v3, :cond_e

    const/4 v15, 0x4

    goto :goto_b

    :cond_e
    const/4 v15, 0x0

    :goto_b
    add-int/2addr v8, v15

    if-eqz v5, :cond_f

    const/4 v15, 0x0

    goto :goto_c

    :cond_f
    const/4 v15, 0x2

    :goto_c
    add-int/2addr v8, v15

    add-int/2addr v8, v0

    if-eqz v10, :cond_10

    if-nez v4, :cond_10

    goto :goto_d

    :cond_10
    if-nez v7, :cond_11

    if-nez v3, :cond_12

    :cond_11
    if-eqz v0, :cond_13

    if-nez v5, :cond_12

    if-nez v4, :cond_12

    if-eqz v7, :cond_13

    :cond_12
    if-le v8, v13, :cond_13

    move v13, v8

    move-object v6, v14

    :cond_13
    :goto_d
    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    goto/16 :goto_4

    .line 27
    :cond_14
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_15

    .line 28
    invoke-virtual {v2, v6}, Ln3/y/e/a0;->c(Ln3/y/e/b0;)Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, v2, Ln3/y/e/a0;->k:Z

    .line 30
    iget-boolean v3, v2, Ln3/y/e/a0;->l:Z

    if-nez v3, :cond_15

    .line 31
    iget-object v3, v2, Ln3/y/e/a0;->i:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln3/y/e/a0;->a(Landroid/os/Message;)V

    .line 32
    iput-boolean v0, v2, Ln3/y/e/a0;->l:Z

    goto :goto_e

    :cond_15
    const/4 v4, 0x1

    :goto_e
    return v4

    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 34
    :cond_16
    iget-object v2, v1, Ln3/y/e/a0$a;->a:Ln3/y/e/a0;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ln3/y/e/b0;

    const/4 v3, 0x1

    .line 35
    iput-boolean v3, v2, Ln3/y/e/a0;->k:Z

    .line 36
    iget-object v3, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-ne v3, v0, :cond_17

    goto/16 :goto_10

    :cond_17
    if-eqz v3, :cond_18

    .line 37
    invoke-virtual {v3}, Ln3/y/e/b0;->b()V

    .line 38
    iget-object v3, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    invoke-virtual {v3, v6}, Ln3/y/e/b0;->d(Ln3/y/e/u;)V

    .line 39
    :cond_18
    iput-object v0, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    .line 40
    iget-object v3, v2, Ln3/y/e/a0;->m:Ln3/y/e/a0$c;

    if-eqz v3, :cond_1a

    if-nez v0, :cond_19

    move-object v4, v6

    goto :goto_f

    .line 41
    :cond_19
    invoke-virtual {v0}, Ln3/y/e/b0;->a()Ln3/y/e/b0$b;

    move-result-object v4

    .line 42
    :goto_f
    check-cast v3, Ln3/y/e/z;

    invoke-virtual {v3, v4}, Ln3/y/e/z;->a(Ln3/y/e/b0$b;)V

    .line 43
    :cond_1a
    iget-object v3, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-eqz v3, :cond_1b

    .line 44
    iget-object v4, v2, Ln3/y/e/a0;->a:Ln3/y/e/u;

    invoke-virtual {v3, v4}, Ln3/y/e/b0;->d(Ln3/y/e/u;)V

    .line 45
    iget-object v3, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    invoke-virtual {v3}, Ln3/y/e/b0;->e()V

    .line 46
    :cond_1b
    iget-object v2, v2, Ln3/y/e/a0;->n:Ln3/y/e/a0$d;

    if-eqz v2, :cond_1f

    .line 47
    check-cast v2, Ln3/y/e/g0;

    if-nez v0, :cond_1c

    .line 48
    iget-object v0, v2, Ln3/y/e/g0;->a:Ln3/y/e/f0;

    iput-object v6, v0, Ln3/y/e/f0;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 49
    iget-object v0, v0, Ln3/y/e/f0;->p:Ln3/y/e/z;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 50
    :cond_1c
    iget-object v3, v2, Ln3/y/e/g0;->a:Ln3/y/e/f0;

    iget-object v3, v3, Ln3/y/e/f0;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1d

    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/media2/common/SessionPlayer$TrackInfo;

    :cond_1e
    if-eqz v6, :cond_1f

    .line 53
    iget-object v0, v2, Ln3/y/e/g0;->a:Ln3/y/e/f0;

    iput-object v6, v0, Ln3/y/e/f0;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 54
    iget-object v0, v0, Ln3/y/e/f0;->p:Ln3/y/e/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_20
    move v0, v3

    .line 55
    iget-object v2, v1, Ln3/y/e/a0$a;->a:Ln3/y/e/a0;

    .line 56
    iput-boolean v0, v2, Ln3/y/e/a0;->l:Z

    .line 57
    iget-object v2, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-eqz v2, :cond_21

    .line 58
    invoke-virtual {v2}, Ln3/y/e/b0;->b()V

    :cond_21
    return v0

    :cond_22
    move v0, v3

    .line 59
    iget-object v2, v1, Ln3/y/e/a0$a;->a:Ln3/y/e/a0;

    .line 60
    iput-boolean v0, v2, Ln3/y/e/a0;->l:Z

    .line 61
    iget-object v2, v2, Ln3/y/e/a0;->f:Ln3/y/e/b0;

    if-eqz v2, :cond_23

    .line 62
    invoke-virtual {v2}, Ln3/y/e/b0;->e()V

    :cond_23
    return v0
.end method
