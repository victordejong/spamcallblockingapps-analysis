.class public final Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "",
        "alternate",
        "a",
        "(Z)V",
        "Le/a/j2;",
        "b",
        "Le/a/j2;",
        "graph",
        "Landroid/content/Context;",
        "c",
        "Landroid/content/Intent;",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Le/a/j2;

.field public c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "calls"

    const-string v3, "notification"

    const-string v4, "openApp"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 1
    invoke-static/range {v1 .. v6}, Lcom/truecaller/ui/TruecallerInit;->Aa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TruecallerInit.createInt\u2026      false\n            )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0e44

    const/high16 v2, 0x14000000

    .line 2
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v0, "PendingIntent.getActivit\u2026G_IMMUTABLE\n            )"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v0

    const-string v2, "graph.callHistoryManager()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->c:Landroid/content/Intent;

    if-eqz v2, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    const-string v5, "lastTimestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l0/c;

    .line 4
    invoke-interface {v4, v2, v3}, Le/a/l0/c;->u(J)Le/a/r2/x;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver$a;

    invoke-direct {v5, p0}, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver$a;-><init>(Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;)V

    invoke-virtual {v4, v5}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 6
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0, v2, v3}, Le/a/l0/c;->g(J)V

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/a/o5/c;

    invoke-direct {v1, p1}, Le/a/o5/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "context"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "intent"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "graph"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_11

    .line 1
    iput-object v1, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a:Landroid/content/Context;

    if-eqz v2, :cond_11

    .line 2
    iput-object v2, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->c:Landroid/content/Intent;

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    instance-of v4, v3, Lcom/truecaller/TrueApp;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v3, v5

    :cond_0
    check-cast v3, Lcom/truecaller/TrueApp;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v3

    if-eqz v3, :cond_11

    iput-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v3, "intent.action ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    const-string v4, "graph"

    if-eqz v3, :cond_10

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    const-string v6, "graph.deviceManager()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Le/a/o5/f0;->Q0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v3

    invoke-interface {v3}, Le/a/b0/e/l;->d()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_1
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 6
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v6, "number"

    const-string v7, "context"

    const-wide/16 v8, -0x1

    const-string v10, "callLogId"

    const-string v11, "intent"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "com.truecaller.SMS"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8
    iget-object v2, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v2

    const-string v3, "graph.callHistoryManager()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->c:Landroid/content/Intent;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v10, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v8, v3, v8

    if-eqz v8, :cond_3

    .line 10
    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l0/c;

    invoke-interface {v2, v3, v4}, Le/a/l0/c;->e(J)V

    .line 11
    :cond_3
    iget-object v2, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a:Landroid/content/Context;

    if-eqz v2, :cond_6

    invoke-static {v2}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 12
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->c:Landroid/content/Intent;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smsto"

    invoke-static {v4, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a:Landroid/content/Context;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 15
    :cond_5
    invoke-static {v11}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 16
    :cond_6
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 17
    :cond_7
    invoke-static {v11}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 18
    :cond_8
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :sswitch_1
    const-string v3, "com.truecaller.CALL"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 20
    sget-object v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->c:Landroid/content/Intent;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v10, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v3, v12, v8

    if-eqz v3, :cond_a

    .line 21
    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v3

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l0/c;

    invoke-interface {v3, v12, v13}, Le/a/l0/c;->e(J)V

    goto :goto_0

    :cond_9
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 22
    :cond_a
    :goto_0
    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a:Landroid/content/Context;

    if-eqz v3, :cond_d

    invoke-static {v3}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 23
    iget-object v3, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->c:Landroid/content/Intent;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_f

    const-string v3, "intent.getStringExtra(EXTRA_NUMBER) ?: return"

    invoke-static {v15, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const-string v14, "notification"

    const-string v3, "analyticsContext"

    .line 24
    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callContextOption"

    .line 25
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v3, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-object v12, v3

    move-object v13, v15

    move-object/from16 v21, v2

    invoke-direct/range {v12 .. v21}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 27
    iget-object v2, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Le/a/j2;->f3()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    goto :goto_1

    :cond_b
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 28
    :cond_c
    invoke-static {v11}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 29
    :cond_d
    invoke-static {v7}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_e
    invoke-static {v11}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :sswitch_2
    const-string v3, "com.truecaller.CLEAR_MISSED_CALLS"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a(Z)V

    goto :goto_1

    :sswitch_3
    const-string v3, "com.truecaller.CLEAR_ALTERNATIVE_MISSED_CALLS"

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a(Z)V

    .line 33
    :cond_f
    :goto_1
    new-instance v2, Ln3/k/a/x;

    invoke-direct {v2, v1}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3039

    .line 34
    iget-object v2, v2, Ln3/k/a/x;->b:Landroid/app/NotificationManager;

    const-string v3, "missedCall"

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    .line 35
    :cond_10
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :cond_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1df735e3 -> :sswitch_3
        -0x914ba55 -> :sswitch_2
        0x23fea626 -> :sswitch_1
        0x7d087471 -> :sswitch_0
    .end sparse-switch
.end method
