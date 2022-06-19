.class public final Lcom/truecaller/service/MissedCallsNotificationService$d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/service/MissedCallsNotificationService$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.service.MissedCallsNotificationService$onHandleWork$1$1"
    f = "MissedCallsNotificationService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ls1/z/c/c0;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->e:Ls1/z/c/c0;

    iput-object p2, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->f:Ls1/z/c/c0;

    iput-object p3, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->g:Ls1/z/c/a0;

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

    new-instance p1, Lcom/truecaller/service/MissedCallsNotificationService$d$a;

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->e:Ls1/z/c/c0;

    iget-object v1, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->f:Ls1/z/c/c0;

    iget-object v2, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->g:Ls1/z/c/a0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/service/MissedCallsNotificationService$d$a;-><init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->e:Ls1/z/c/c0;

    iget-object v1, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->f:Ls1/z/c/c0;

    iget-object v2, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->g:Ls1/z/c/a0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Le/a/i4/u;

    iget-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-direct {p2, v3}, Le/a/i4/u;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object p2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/service/MissedCallsNotificationService;

    .line 7
    iget-object v0, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    const-string v1, "missedCall"

    const/16 v3, 0x3039

    .line 8
    iget v2, v2, Ls1/z/c/a0;->a:I

    .line 9
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 10
    sget-object v4, Lr3/a/a/c;->a:Ljava/util/List;

    .line 11
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "notification"

    .line 12
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    const/4 v4, 0x0

    .line 13
    invoke-static {p2, v1, v3, v0, v4}, Lr3/a/a/c;->b(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 14
    invoke-static {p2, v1, v3, v0, v2}, Lr3/a/a/c;->b(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/service/MissedCallsNotificationService;

    iget v0, v2, Ls1/z/c/a0;->a:I

    invoke-static {p2, v0}, Le/a/e/a2;->c0(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Le/a/i4/u;

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->e:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-direct {p1, v0}, Le/a/i4/u;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->e:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/service/MissedCallsNotificationService;

    .line 5
    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    const-string v1, "missedCall"

    const/16 v2, 0x3039

    .line 6
    iget-object v3, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->g:Ls1/z/c/a0;

    iget v3, v3, Ls1/z/c/a0;->a:I

    .line 7
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 8
    sget-object v4, Lr3/a/a/c;->a:Ljava/util/List;

    .line 9
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "notification"

    .line 10
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 v4, 0x0

    .line 11
    invoke-static {p1, v1, v2, v0, v4}, Lr3/a/a/c;->b(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 12
    invoke-static {p1, v1, v2, v0, v3}, Lr3/a/a/c;->b(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->e:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/service/MissedCallsNotificationService;

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d$a;->g:Ls1/z/c/a0;

    iget v0, v0, Ls1/z/c/a0;->a:I

    invoke-static {p1, v0}, Le/a/e/a2;->c0(Landroid/content/Context;I)V

    .line 14
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
