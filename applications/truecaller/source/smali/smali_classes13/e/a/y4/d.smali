.class public final Le/a/y4/d;
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
        "Lcom/truecaller/service/MissedCallsNotificationService$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.service.MissedCallsNotificationService$getNotificationType$2"
    f = "MissedCallsNotificationService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/service/MissedCallsNotificationService;


# direct methods
.method public constructor <init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

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

    new-instance p1, Le/a/y4/d;

    iget-object v0, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-direct {p1, v0, p2}, Le/a/y4/d;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->c:Lcom/truecaller/service/MissedCallsNotificationService$b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/b0/g/a;

    .line 6
    invoke-virtual {p2}, Le/a/b0/g/a;->W()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/service/MissedCallsNotificationService;->c()Lcom/truecaller/settings/CallingSettings;

    move-result-object p2

    const-string v1, "showMissedCallsNotifications"

    invoke-interface {p2, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 8
    iget-object v1, p1, Lcom/truecaller/service/MissedCallsNotificationService;->g:Le/a/p5/a0;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1}, Le/a/p5/a0;->b()Z

    move-result v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 10
    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->a:Lcom/truecaller/service/MissedCallsNotificationService$b;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/service/MissedCallsNotificationService;->c()Lcom/truecaller/settings/CallingSettings;

    move-result-object p2

    const/4 v1, 0x1

    const-string v2, "showMissedCallsNotificationPromo"

    invoke-interface {p2, v2, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/service/MissedCallsNotificationService;->c()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v2, p2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->b:Lcom/truecaller/service/MissedCallsNotificationService$b;

    goto :goto_0

    :cond_1
    const-string p1, "permissionUtil"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->c:Lcom/truecaller/service/MissedCallsNotificationService$b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/b0/g/a;

    .line 3
    invoke-virtual {p1}, Le/a/b0/g/a;->W()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {p1}, Lcom/truecaller/service/MissedCallsNotificationService;->c()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    const-string v1, "showMissedCallsNotifications"

    invoke-interface {p1, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 5
    iget-object v1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    .line 6
    iget-object v1, v1, Lcom/truecaller/service/MissedCallsNotificationService;->g:Le/a/p5/a0;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Le/a/p5/a0;->b()Z

    move-result v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 8
    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->a:Lcom/truecaller/service/MissedCallsNotificationService$b;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {p1}, Lcom/truecaller/service/MissedCallsNotificationService;->c()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "showMissedCallsNotificationPromo"

    invoke-interface {p1, v2, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Le/a/y4/d;->e:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {p1}, Lcom/truecaller/service/MissedCallsNotificationService;->c()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    sget-object v0, Lcom/truecaller/service/MissedCallsNotificationService$b;->b:Lcom/truecaller/service/MissedCallsNotificationService$b;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string p1, "permissionUtil"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    return-object v0
.end method
