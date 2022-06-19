.class public final Le/a/e3/j/g$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/j/g;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationUIImpl$show$1"
    f = "CallAlertNotificationUI.kt"
    l = {
        0x62,
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:I

.field public final synthetic h:Le/a/e3/j/g;

.field public final synthetic i:Lcom/truecaller/data/entity/Contact;

.field public final synthetic j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e3/j/g;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iput-object p2, p0, Le/a/e3/j/g$e;->i:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iput-object p4, p0, Le/a/e3/j/g$e;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e3/j/g$e;

    iget-object v1, p0, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v2, p0, Le/a/e3/j/g$e;->i:Lcom/truecaller/data/entity/Contact;

    iget-object v3, p0, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iget-object v4, p0, Le/a/e3/j/g$e;->k:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/e3/j/g$e;-><init>(Le/a/e3/j/g;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e3/j/g$e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e3/j/g$e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e3/j/g$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    sget-object v2, Ls1/s;->a:Ls1/s;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/e3/j/g$e;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-boolean v0, v1, Le/a/e3/j/g$e;->f:Z

    iget-object v3, v1, Le/a/e3/j/g$e;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    move v8, v0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v3, v1, Le/a/e3/j/g$e;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 5
    iget-object v3, v3, Le/a/e3/j/g;->o:Le/a/u3/g;

    .line 6
    iget-object v8, v3, Le/a/u3/g;->h0:Le/a/u3/g$a;

    sget-object v9, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v10, 0x39

    aget-object v9, v9, v10

    invoke-virtual {v8, v3, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    return-object v2

    .line 8
    :cond_3
    iget-object v3, v1, Le/a/e3/j/g$e;->i:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v8, "contact.displayName ?: return@launch"

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v8, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v9, v1, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iget-object v10, v1, Le/a/e3/j/g$e;->k:Ljava/lang/String;

    iput-object v3, v1, Le/a/e3/j/g$e;->e:Ljava/lang/Object;

    iput v6, v1, Le/a/e3/j/g$e;->g:I

    invoke-virtual {v8, v9, v10, v1}, Le/a/e3/j/g;->d(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 10
    iget-object v9, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v10, v1, Le/a/e3/j/g$e;->i:Lcom/truecaller/data/entity/Contact;

    iput-object v3, v1, Le/a/e3/j/g$e;->e:Ljava/lang/Object;

    iput-boolean v8, v1, Le/a/e3/j/g$e;->f:Z

    iput v5, v1, Le/a/e3/j/g$e;->g:I

    .line 11
    new-instance v11, Le/a/b0/a/a0/a;

    .line 12
    iget-object v12, v9, Le/a/e3/j/g;->b:Ls1/g;

    invoke-interface {v12}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    .line 13
    iget-object v13, v9, Le/a/e3/j/g;->p:Ls1/w/f;

    const/4 v14, 0x4

    invoke-direct {v11, v12, v13, v7, v14}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;II)V

    .line 14
    iget-object v9, v9, Le/a/e3/j/g;->m:Le/a/e3/k/c;

    invoke-interface {v9, v10}, Le/a/e3/k/c;->a(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v9

    invoke-static {v11, v9, v7, v5, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 15
    iget v9, v11, Le/a/b0/a/a0/a;->W:I

    invoke-virtual {v11, v9, v1}, Le/a/b0/a/a0/a;->rk(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_5

    return-object v0

    .line 16
    :cond_5
    :goto_1
    check-cast v9, Landroid/graphics/Bitmap;

    .line 17
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    if-eqz v8, :cond_6

    .line 18
    iget-object v0, v0, Le/a/e3/j/g;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_2

    .line 19
    :cond_6
    iget-object v0, v0, Le/a/e3/j/g;->f:Landroid/content/Context;

    :goto_2
    move-object v10, v0

    .line 20
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 21
    iget-object v0, v0, Le/a/e3/j/g;->d:Le/a/e3/k/b;

    const-string v11, "push_caller_id"

    .line 22
    invoke-interface {v0, v11}, Le/a/e3/k/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v11, Ln3/k/a/q;

    invoke-direct {v11, v10, v0}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    sget v0, Lcom/truecaller/call_alert/R$drawable;->ic_notification_logo:I

    .line 25
    iget-object v12, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v0, v12, Landroid/app/Notification;->icon:I

    .line 26
    sget v0, Lcom/truecaller/call_alert/R$color;->truecaller_blue_all_themes:I

    .line 27
    sget-object v12, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 28
    invoke-static {v10, v0}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 29
    iput v0, v11, Ln3/k/a/q;->D:I

    .line 30
    iput v5, v11, Ln3/k/a/q;->l:I

    const/16 v0, 0x10

    .line 31
    invoke-virtual {v11, v0, v6}, Ln3/k/a/q;->p(IZ)V

    .line 32
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v5, v1, Le/a/e3/j/g$e;->i:Lcom/truecaller/data/entity/Contact;

    iget-object v12, v1, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    move-object v12, v4

    .line 33
    :goto_3
    iget-object v13, v0, Le/a/e3/j/g;->h:Le/a/e3/k/e;

    invoke-interface {v13, v5, v7, v6, v12}, Le/a/e3/k/e;->b(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v12, 0x14000000

    .line 34
    :try_start_0
    iget-object v0, v0, Le/a/e3/j/g;->f:Landroid/content/Context;

    sget v13, Lcom/truecaller/call_alert/R$id;->req_code_push_caller_id_notification_open:I

    .line 35
    invoke-static {v0, v13, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_4
    if-eqz v4, :cond_8

    .line 37
    iput-object v4, v11, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 38
    :cond_8
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v4, v1, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    .line 39
    iget-object v5, v0, Le/a/e3/j/g;->f:Landroid/content/Context;

    .line 40
    new-instance v13, Landroid/content/Intent;

    iget-object v0, v0, Le/a/e3/j/g;->f:Landroid/content/Context;

    const-class v14, Lcom/truecaller/call_alert/receive_notification/CallAlertDismissBroadcastReceiver;

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extraDismissShouldLogCallContext"

    .line 41
    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extraDismissIncomingCallContext"

    .line 42
    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    invoke-static {v5, v7, v13, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v4, "PendingIntent.getBroadca\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v5, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v0, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v0, "NotificationCompat.Build\u2026ntext))\n                }"

    .line 45
    invoke-static {v11, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 47
    iget-object v0, v0, Le/a/e3/j/g;->e:Le/a/p5/c0;

    .line 48
    sget v5, Lcom/truecaller/call_alert/R$string;->VisiblePushCallerIdTitle:I

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v3, v13, v7

    invoke-interface {v0, v5, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 49
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 50
    iget-object v0, v0, Le/a/e3/j/g;->e:Le/a/p5/c0;

    .line 51
    sget v13, Lcom/truecaller/call_alert/R$string;->VisiblePushCallerIdText:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v0, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 52
    new-instance v0, Ln3/k/a/r;

    invoke-direct {v0}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v11, v0}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 53
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    invoke-static {v0}, Le/a/e3/j/g;->c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 54
    iput-object v0, v11, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 55
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    invoke-static {v0}, Le/a/e3/j/g;->c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 56
    iput-object v0, v11, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    .line 57
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    invoke-static {v0}, Le/a/e3/j/g;->c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 58
    sget v13, Lcom/truecaller/call_alert/R$id;->tv_title:I

    iget-object v14, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 59
    iget-object v14, v14, Le/a/e3/j/g;->e:Le/a/p5/c0;

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v3, v15, v7

    .line 60
    invoke-interface {v14, v5, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 61
    sget v3, Lcom/truecaller/call_alert/R$id;->avatar:I

    invoke-virtual {v0, v3, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-eqz v8, :cond_a

    .line 62
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    invoke-static {v0}, Le/a/e3/j/g;->c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 63
    sget v3, Lcom/truecaller/call_alert/R$id;->tv_message:I

    invoke-virtual {v0, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    iget-object v5, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 65
    iget-object v5, v5, Le/a/e3/j/g;->e:Le/a/p5/c0;

    .line 66
    sget v9, Lcom/truecaller/contextcall/R$string;->context_call_notification_message:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v13, v1, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getMessage()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    aput-object v13, v6, v7

    invoke-interface {v5, v9, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 68
    iget-object v0, v1, Le/a/e3/j/g$e;->j:Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v0, :cond_a

    iget-object v3, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 69
    iget-object v3, v3, Le/a/e3/j/g;->k:Le/a/o/c;

    .line 70
    invoke-virtual {v0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CallAlertNotification"

    invoke-interface {v3, v0, v5}, Le/a/o/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_a
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 72
    iget-object v0, v0, Le/a/e3/j/g;->n:Le/a/e3/k/p;

    .line 73
    invoke-interface {v0, v8}, Le/a/e3/k/p;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    invoke-static {v0}, Le/a/e3/j/g;->c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v3, Lcom/truecaller/call_alert/R$id;->button_call_silence:I

    invoke-virtual {v0, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 75
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    invoke-static {v0}, Le/a/e3/j/g;->c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v5, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v6, v1, Le/a/e3/j/g$e;->k:Ljava/lang/String;

    .line 76
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v8, Landroid/content/Intent;

    iget-object v5, v5, Le/a/e3/j/g;->f:Landroid/content/Context;

    const-class v9, Lcom/truecaller/call_alert/receive_notification/CallSilenceBroadcastReceiver;

    invoke-direct {v8, v5, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "extraCallSilenceTag"

    .line 78
    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 79
    invoke-static {v10, v7, v5, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string v0, "CallSilence"

    const-string v3, "viewId"

    .line 81
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v3, Le/a/q2/y0/a/a;

    const/4 v4, 0x0

    .line 83
    invoke-direct {v3, v0, v4, v4}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 85
    iget-object v0, v0, Le/a/e3/j/g;->l:Lo3/a;

    .line 86
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "analytics.get()"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 87
    :cond_b
    invoke-virtual {v11}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v7

    const-string v0, "builder.build()"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 89
    iget-object v4, v0, Le/a/e3/j/g;->d:Le/a/e3/k/b;

    .line 90
    iget-object v5, v1, Le/a/e3/j/g$e;->k:Ljava/lang/String;

    .line 91
    sget v6, Lcom/truecaller/call_alert/R$id;->visible_push_caller_id_notification_id:I

    .line 92
    iget-object v0, v0, Le/a/e3/j/g;->h:Le/a/e3/k/e;

    .line 93
    invoke-interface {v0}, Le/a/e3/k/e;->a()Ljava/lang/String;

    move-result-object v8

    .line 94
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    iget-object v3, v1, Le/a/e3/j/g$e;->i:Lcom/truecaller/data/entity/Contact;

    .line 95
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "pushNotificationPbContact"

    goto :goto_6

    :cond_c
    const-string v0, "pushNotificationNotPbContact"

    :goto_6
    const-string v3, "Subtype"

    .line 98
    invoke-virtual {v9, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface/range {v4 .. v9}, Le/a/e3/k/b;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    iget-object v0, v1, Le/a/e3/j/g$e;->h:Le/a/e3/j/g;

    .line 101
    iget-object v0, v0, Le/a/e3/j/g;->i:Le/a/e3/k/i;

    .line 102
    iget-object v3, v1, Le/a/e3/j/g$e;->k:Ljava/lang/String;

    invoke-interface {v0, v3}, Le/a/e3/k/i;->d(Ljava/lang/String;)V

    :cond_d
    return-object v2
.end method
