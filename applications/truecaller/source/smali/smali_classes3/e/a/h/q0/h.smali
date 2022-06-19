.class public final Le/a/h/q0/h;
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
    c = "com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver$snoozeReminder$2"
    f = "MissedCallReminderNotificationReceiver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/q0/h;->e:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/h/q0/h;

    iget-object v0, p0, Le/a/h/q0/h;->e:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-direct {p1, v0, p2}, Le/a/h/q0/h;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/h/q0/h;->e:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1203c2

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/q0/h;->e:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {p1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1203c2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
