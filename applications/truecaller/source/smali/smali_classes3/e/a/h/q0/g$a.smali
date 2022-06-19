.class public final Le/a/h/q0/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/q0/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver$postReminderNotification$2$1"
    f = "MissedCallReminderNotificationReceiver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/q0/g;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/h/q0/g;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/q0/g$a;->e:Le/a/h/q0/g;

    iput-object p2, p0, Le/a/h/q0/g$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/h/q0/g$a;

    iget-object v0, p0, Le/a/h/q0/g$a;->e:Le/a/h/q0/g;

    iget-object v1, p0, Le/a/h/q0/g$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/g$a;-><init>(Le/a/h/q0/g;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/h/q0/g$a;->e:Le/a/h/q0/g;

    iget-object v1, p0, Le/a/h/q0/g$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 5
    iget-object p2, p2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->f:Lo3/a;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i4/e;

    .line 7
    iget-object v0, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v0, v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    .line 8
    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ln3/k/a/q;

    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "notificationBuilder.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notificationMissedCallReminder"

    .line 9
    invoke-static {v2}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {p2, v0, v1, v2}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "analyticsNotificationManager"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/q0/g$a;->e:Le/a/h/q0/g;

    iget-object p1, p1, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 3
    iget-object p1, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->f:Lo3/a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i4/e;

    .line 5
    iget-object v0, p0, Le/a/h/q0/g$a;->e:Le/a/h/q0/g;

    iget-object v0, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v0, v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    .line 6
    iget-object v1, p0, Le/a/h/q0/g$a;->f:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ln3/k/a/q;

    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "notificationBuilder.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notificationMissedCallReminder"

    .line 7
    invoke-static {v2}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {p1, v0, v1, v2}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "analyticsNotificationManager"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
