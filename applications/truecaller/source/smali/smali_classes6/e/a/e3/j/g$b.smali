.class public final Le/a/e3/j/g$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/j/g;->a(Ljava/lang/String;)V
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
    c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationUIImpl$dismiss$1"
    f = "CallAlertNotificationUI.kt"
    l = {
        0xbf,
        0xc0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/e3/j/g;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e3/j/g;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    iput-object p2, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/e3/j/g$b;

    iget-object v0, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    iget-object v1, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/e3/j/g$b;-><init>(Le/a/e3/j/g;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e3/j/g$b;

    iget-object v0, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    iget-object v1, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/e3/j/g$b;-><init>(Le/a/e3/j/g;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e3/j/g$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e3/j/g$b;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/e3/j/g$b;->h:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iget-object v1, p0, Le/a/e3/j/g$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/q2/a0;

    iget-object v2, p0, Le/a/e3/j/g$b;->f:Ljava/lang/Object;

    check-cast v2, Le/a/l5/a/r$b;

    iget-object v3, p0, Le/a/e3/j/g$b;->e:Ljava/lang/Object;

    check-cast v3, Le/a/l5/a/r$b;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/e3/j/g$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/q2/a0;

    iget-object v3, p0, Le/a/e3/j/g$b;->f:Ljava/lang/Object;

    check-cast v3, Le/a/l5/a/r$b;

    iget-object v4, p0, Le/a/e3/j/g$b;->e:Ljava/lang/Object;

    check-cast v4, Le/a/l5/a/r$b;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    .line 5
    iget-object p1, p1, Le/a/e3/j/g;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 6
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    const-string v1, "notificationManager.activeNotifications"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    const-string v5, "it"

    .line 9
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 12
    :goto_0
    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_9

    .line 13
    iget-object p1, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    .line 14
    iget-object p1, p1, Le/a/e3/j/g;->g:Le/a/r2/f;

    .line 15
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    .line 16
    invoke-static {}, Le/a/l5/a/r;->a()Le/a/l5/a/r$b;

    move-result-object v1

    const-string v4, "programmatically_dismissed"

    .line 17
    invoke-virtual {v1, v4}, Le/a/l5/a/r$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    .line 18
    iget-object v4, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    .line 19
    iget-object v4, v4, Le/a/e3/j/g;->k:Le/a/o/c;

    .line 20
    iget-object v5, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    iput-object v1, p0, Le/a/e3/j/g$b;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/e3/j/g$b;->f:Ljava/lang/Object;

    iput-object p1, p0, Le/a/e3/j/g$b;->g:Ljava/lang/Object;

    iput v3, p0, Le/a/e3/j/g$b;->i:I

    invoke-interface {v4, v5, p0}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v4, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v4

    :goto_1
    check-cast p1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz p1, :cond_8

    .line 21
    iget-object v5, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    iget-object v6, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    iput-object v4, p0, Le/a/e3/j/g$b;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/e3/j/g$b;->f:Ljava/lang/Object;

    iput-object v1, p0, Le/a/e3/j/g$b;->g:Ljava/lang/Object;

    iput-object p1, p0, Le/a/e3/j/g$b;->h:Ljava/lang/Object;

    iput v2, p0, Le/a/e3/j/g$b;->i:I

    .line 22
    invoke-virtual {v5, p1, v6, p0}, Le/a/e3/j/g;->d(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v2

    move-object v2, v3

    move-object v3, v4

    .line 23
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {v0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/a/l5/a/r$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/r$b;

    :cond_7
    move-object v4, v3

    .line 25
    :cond_8
    invoke-virtual {v4}, Le/a/l5/a/r$b;->a()Le/a/l5/a/r;

    move-result-object p1

    .line 26
    invoke-interface {v1, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 28
    :cond_9
    :goto_3
    iget-object p1, p0, Le/a/e3/j/g$b;->j:Le/a/e3/j/g;

    .line 29
    iget-object p1, p1, Le/a/e3/j/g;->d:Le/a/e3/k/b;

    .line 30
    iget-object v0, p0, Le/a/e3/j/g$b;->k:Ljava/lang/String;

    sget v1, Lcom/truecaller/call_alert/R$id;->visible_push_caller_id_notification_id:I

    invoke-interface {p1, v0, v1}, Le/a/e3/k/b;->b(Ljava/lang/String;I)V

    .line 31
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
