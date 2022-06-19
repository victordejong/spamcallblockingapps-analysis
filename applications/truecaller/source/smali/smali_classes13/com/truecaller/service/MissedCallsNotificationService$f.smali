.class public final Lcom/truecaller/service/MissedCallsNotificationService$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/service/MissedCallsNotificationService;->i(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.service.MissedCallsNotificationService$showNotification$2"
    f = "MissedCallsNotificationService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/service/MissedCallsNotificationService;

.field public final synthetic f:Landroid/app/Notification;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/service/MissedCallsNotificationService;Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    iput-object p2, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->f:Landroid/app/Notification;

    iput-object p3, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Lcom/truecaller/service/MissedCallsNotificationService$f;

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    iget-object v1, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->f:Landroid/app/Notification;

    iget-object v2, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/service/MissedCallsNotificationService$f;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    iget-object v1, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->f:Landroid/app/Notification;

    iget-object v2, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->g:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Lcom/truecaller/service/MissedCallsNotificationService;->d:Le/a/i4/e;

    if-eqz p2, :cond_0

    const/16 v0, 0x3039

    .line 5
    invoke-static {v2}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "missedCall"

    invoke-interface {p2, v3, v0, v1, v2}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "notificationManager"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    .line 3
    iget-object p1, p1, Lcom/truecaller/service/MissedCallsNotificationService;->d:Le/a/i4/e;

    if-eqz p1, :cond_0

    const/16 v0, 0x3039

    .line 4
    iget-object v1, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->f:Landroid/app/Notification;

    iget-object v2, p0, Lcom/truecaller/service/MissedCallsNotificationService$f;->g:Ljava/lang/String;

    invoke-static {v2}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "missedCall"

    invoke-interface {p1, v3, v0, v1, v2}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "notificationManager"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
