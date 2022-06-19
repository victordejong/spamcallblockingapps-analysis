.class public final Le/a/d/c0/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/s1;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/d/f;

.field public final e:Le/a/d/t/c;

.field public final f:Le/a/p5/u;

.field public final g:Le/a/b0/q/z;

.field public final h:Le/a/d/c0/f0;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/b0/e/l;

.field public final k:Le/a/d/r/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/d/f;Le/a/d/t/c;Le/a/p5/u;Le/a/b0/q/z;Le/a/d/c0/f0;Le/a/r2/f;Le/a/b0/e/l;Le/a/d/r/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Landroid/content/Context;",
            "Le/a/d/f;",
            "Le/a/d/t/c;",
            "Le/a/p5/u;",
            "Le/a/b0/q/z;",
            "Le/a/d/c0/f0;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/b0/e/l;",
            "Le/a/d/r/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipDbHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipGroupHistoryProvider"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/t1;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/t1;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/d/c0/t1;->c:Landroid/content/Context;

    iput-object p4, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    iput-object p5, p0, Le/a/d/c0/t1;->e:Le/a/d/t/c;

    iput-object p6, p0, Le/a/d/c0/t1;->f:Le/a/p5/u;

    iput-object p7, p0, Le/a/d/c0/t1;->g:Le/a/b0/q/z;

    iput-object p8, p0, Le/a/d/c0/t1;->h:Le/a/d/c0/f0;

    iput-object p9, p0, Le/a/d/c0/t1;->i:Le/a/r2/f;

    iput-object p10, p0, Le/a/d/c0/t1;->j:Le/a/b0/e/l;

    iput-object p11, p0, Le/a/d/c0/t1;->k:Le/a/d/r/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "analyticsContext"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/truecaller/voip/VoipCallOptions;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/voip/VoipCallOptions;-><init>(JJI)V

    invoke-virtual {p0, p1, p2, v0}, Le/a/d/c0/t1;->k(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/truecaller/voip/VoipCallHistory;Landroid/content/Context;)V
    .locals 2

    const-string v0, "voipCallHistory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/ui/calldetails/VoipGroupCallDetailsActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "callHistoryID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Ljava/lang/Object;JZ)V
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "notification"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v1, "qa_voip_notification_rtm_token"

    .line 2
    invoke-static {v1}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "rtm"

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v10, v1

    .line 4
    new-instance v1, Lcom/truecaller/voip/VoipPushNotification;

    const-string v2, "ac"

    .line 5
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "cid"

    .line 6
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->o()Ljava/lang/String;

    move-result-object v9

    const-string v2, "rtc"

    .line 8
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "uid"

    .line 9
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object v12, v3

    :goto_2
    const-string v2, "ens"

    .line 11
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "enm"

    .line 12
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "ch"

    .line 13
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "cide"

    .line 14
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 15
    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    :cond_3
    move-object/from16 v16, v3

    const-string v2, "cidh"

    .line 16
    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v4, v1

    move-wide/from16 v5, p2

    move/from16 v18, p4

    .line 17
    invoke-direct/range {v4 .. v18}, Lcom/truecaller/voip/VoipPushNotification;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    .line 18
    iget-object v2, v0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v2, v1}, Le/a/d/f;->v(Lcom/truecaller/voip/VoipPushNotification;)V

    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.truecaller.datamanager.EXTRA_PRESENCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.presence.Presence> /* = java.util.ArrayList<com.truecaller.presence.Presence> */"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Le/a/d/c0/t1;->b:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/d/c0/t1$e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/c0/t1$e;-><init>(Le/a/d/c0/t1;Ljava/util/ArrayList;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v0, p1, p2}, Le/a/d/f;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p4

    const-string v4, "activity"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "analyticsContext"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v1, Le/a/d/c0/t1;->k:Le/a/d/r/a;

    check-cast v0, Le/a/d/r/c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "voip_history_normalized_number"

    .line 3
    sget-object v7, Ls1/u/s;->a:Ls1/u/s;

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, v0, Le/a/d/r/c;->c:Landroid/content/ContentResolver;

    .line 4
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v10, "voip_history_with_aggregated_contacts_shallow"

    .line 5
    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 6
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "voip_history_id = ?"

    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v0

    const-string v14, "position ASC"

    .line 8
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    .line 9
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "cursor"

    .line 11
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v6}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, ""

    :goto_1
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :cond_1
    :try_start_2
    invoke-static {v9, v8}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 13
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_4
    invoke-static {v9, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    :goto_2
    const/4 v0, 0x7

    .line 14
    invoke-static {v7, v0}, Ls1/u/i;->L0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 15
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "peersToCall"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v4, v1, Le/a/d/c0/t1;->j:Le/a/b0/e/l;

    invoke-interface {v4}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 17
    iget-object v8, v4, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 18
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 20
    invoke-static {v6, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_5
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 22
    invoke-static {v4}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v4, v0

    move-object/from16 v9, p4

    .line 23
    invoke-direct/range {v4 .. v11}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V

    .line 24
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v3, p1

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;->c(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;Landroid/app/Activity;ILcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;ZI)V

    return-void
.end method

.method public g(Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;)V
    .locals 6

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Le/a/d/c0/l0;->a(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/d/c0/t1;->b:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/d/c0/t1$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/d/c0/t1$b;-><init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/t1;->a:Ls1/w/f;

    return-object v0
.end method

.method public h(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "analyticsContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v1}, Le/a/d/f;->r()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Le/a/d/c0/t1;->f:Le/a/p5/u;

    invoke-interface {v1}, Le/a/p5/u;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/d/c0/t1;->c:Landroid/content/Context;

    const v1, 0x7f121077

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p1, v1, v2, v0, v3}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    .line 3
    invoke-virtual {p0, p3, p2}, Le/a/d/c0/t1;->n(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/t1;->h:Le/a/d/c0/f0;

    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;->OFFLINE:Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;

    invoke-interface {p1, p3, p2}, Le/a/d/c0/f0;->e(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;)V

    return v0

    .line 5
    :cond_1
    iget-object v2, p0, Le/a/d/c0/t1;->b:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v0, Le/a/d/c0/t1$f;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Le/a/d/c0/t1$f;-><init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ln3/r/a/l;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 p1, 0x1

    return p1
.end method

.method public i(Lcom/truecaller/data/entity/messaging/Participant;Le/a/d/c0/l0;)V
    .locals 6

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Le/a/d/c0/l0;->a(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    new-instance v3, Le/a/d/c0/t1$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/d/c0/t1$d;-><init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/messaging/Participant;Le/a/d/c0/l0;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public j(Ljava/lang/Object;J)V
    .locals 7

    const-string v0, "notification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 2
    new-instance v6, Lcom/truecaller/voip/VoipGroupPushNotification;

    const-string v0, "ch"

    .line 3
    invoke-virtual {p1, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cid"

    .line 4
    invoke-virtual {p1, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cide"

    .line 5
    invoke-virtual {p1, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    move-object v0, v6

    move-wide v1, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/voip/VoipGroupPushNotification;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    iget-object p1, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {p1, v6}, Le/a/d/f;->x(Lcom/truecaller/voip/VoipGroupPushNotification;)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)Z
    .locals 3

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callOptions"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/t1;->g:Le/a/b0/q/z;

    invoke-interface {v0, p1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/c0/t1;->h:Le/a/d/c0/f0;

    sget-object v1, Lcom/truecaller/voip/util/VoipSearchDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-interface {v0, p2, p1, v1}, Le/a/d/c0/f0;->h(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;)V

    .line 3
    iget-object v0, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->r()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/d/c0/t1;->f:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d/c0/t1;->c:Landroid/content/Context;

    const p3, 0x7f121077

    const/4 v0, 0x6

    invoke-static {p1, p3, v1, v2, v0}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    .line 5
    iget-object p1, p0, Le/a/d/c0/t1;->h:Le/a/d/c0/f0;

    sget-object p3, Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;->OFFLINE:Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;

    invoke-interface {p1, p2, p3}, Le/a/d/c0/f0;->e(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;)V

    return v2

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/d/c0/t1;->j:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 8
    :cond_2
    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 9
    :cond_3
    iget-object v0, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    invoke-interface {v0, p1, p2, p3}, Le/a/d/f;->k(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)V

    .line 10
    iget-object p2, p0, Le/a/d/c0/t1;->i:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l0/c;

    invoke-interface {p2, p1}, Le/a/l0/c;->B(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public l(Ljava/util/List;Le/a/d/c0/d1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/d/c0/d1;",
            ")V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/c0/t1$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/d/c0/t1$a;-><init>(Le/a/d/c0/t1;Ljava/util/List;Le/a/d/c0/d1;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final m(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/t1$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/t1$c;

    iget v1, v0, Le/a/d/c0/t1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/t1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/t1$c;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/t1$c;-><init>(Le/a/d/c0/t1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/t1$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/t1$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/c0/t1;->d:Le/a/d/f;

    iput v3, v0, Le/a/d/c0/t1$c;->e:I

    invoke-interface {p2, p1, v0}, Le/a/d/f;->h(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_5

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v3

    :goto_3
    xor-int/2addr p1, v3

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p2

    const-string v0, "contact.numbers"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/Number;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Le/a/d/c0/t1;->g:Le/a/b0/q/z;

    invoke-interface {v0, p2}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/d/c0/t1;->h:Le/a/d/c0/f0;

    sget-object v1, Lcom/truecaller/voip/util/VoipSearchDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-interface {v0, p1, p2, v1}, Le/a/d/c0/f0;->h(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;)V

    :cond_1
    return-void
.end method
