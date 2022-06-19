.class public final Le/a/h/q0/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver$call$2"
    f = "MissedCallReminderNotificationReceiver.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

.field public final synthetic g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iput-object p2, p0, Le/a/h/q0/d;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

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

    new-instance p1, Le/a/h/q0/d;

    iget-object v0, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Le/a/h/q0/d;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/d;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/q0/d;

    iget-object v0, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Le/a/h/q0/d;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/d;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/q0/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/q0/d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {p1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object p1

    .line 5
    iget-object v1, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v1

    const-string v3, "notificationCalls"

    invoke-static {v1, v3}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x14000000

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 8
    iget-object p1, p0, Le/a/h/q0/d;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-object v4, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    const-string v5, "notificationMissedCallReminder"

    const-string p1, "analyticsContext"

    .line 9
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v12, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    const/4 v11, 0x1

    .line 11
    new-instance p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 12
    iget-object v1, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 13
    iget-object v1, v1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->e:Lo3/a;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {v1, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 15
    iget-object p1, p0, Le/a/h/q0/d;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 16
    iget-object p1, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b:Ls1/w/f;

    if-eqz p1, :cond_3

    .line 17
    new-instance v1, Le/a/h/q0/d$a;

    invoke-direct {v1, p0, v3}, Le/a/h/q0/d$a;-><init>(Le/a/h/q0/d;Ls1/w/d;)V

    iput v2, p0, Le/a/h/q0/d;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 18
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_3
    const-string p1, "asyncContext"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p1, "initiateCallHelper"

    .line 20
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
