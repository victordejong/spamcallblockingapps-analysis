.class public final Le/a/d5/h/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final b:Le/a/z4/d;

.field public final c:Le/a/j4/b/a/f;

.field public final d:Le/a/b0/q/l0;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/z4/d;Le/a/j4/b/a/f;Le/a/b0/q/l0;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAppVersion"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/s;->b:Le/a/z4/d;

    iput-object p2, p0, Le/a/d5/h/s;->c:Le/a/j4/b/a/f;

    iput-object p3, p0, Le/a/d5/h/s;->d:Le/a/b0/q/l0;

    iput-object p4, p0, Le/a/d5/h/s;->e:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->POPUP_SOFTWARE_UPDATE:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/s;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/l4/k;->o(Landroid/app/Activity;)Landroid/content/Intent;

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/s;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/s;->b:Le/a/z4/d;

    .line 2
    iget-object v1, p0, Le/a/d5/h/s;->d:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    const-string v3, "key_new_version_last_time"

    .line 3
    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Le/a/d5/h/s;->b:Le/a/z4/d;

    const-string v1, "key_new_version_promo_times"

    invoke-interface {v0, v1}, Le/a/z4/d;->l(Ljava/lang/String;)I

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Le/a/d5/h/s;->c:Le/a/j4/b/a/f;

    invoke-virtual {v0}, Le/a/j4/b/a/f;->m()Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "notificationDao.software\u2026dateIfAny ?: return false"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "v"

    .line 2
    invoke-virtual {v0, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "notification.getApplicat\u2026.VERSION) ?: return false"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/d5/h/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/d5/h/s;->b:Le/a/z4/d;

    const-wide/16 v0, 0x0

    const-string v2, "key_new_version_last_time"

    invoke-interface {p1, v2, v0, v1}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5
    iget-object p1, p0, Le/a/d5/h/s;->b:Le/a/z4/d;

    const/4 v0, 0x0

    const-string v1, "key_new_version_promo_times"

    invoke-interface {p1, v1, v0}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 6
    iget-object v3, p0, Le/a/d5/h/s;->d:Le/a/b0/q/l0;

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Le/a/d5/h/s;->d:Le/a/b0/q/l0;

    const-wide/16 v6, 0x7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, p0, Le/a/d5/h/s;->d:Le/a/b0/q/l0;

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 9
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->SOFTWARE_UPDATE:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const-string v1, "action"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;

    invoke-direct {v2}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;-><init>()V

    .line 4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
