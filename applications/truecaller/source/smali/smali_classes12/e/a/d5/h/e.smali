.class public final Le/a/d5/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/b0/o/a;

.field public final d:Le/a/f/b;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/o/a;Le/a/f/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUI"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/e;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/d5/h/e;->c:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/d5/h/e;->d:Le/a/f/b;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->DIALOG_WHATS_NEW:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/e;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

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
    iget-object v0, p0, Le/a/d5/h/e;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d5/h/e;->d:Le/a/f/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/f/b;->o(Z)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object p1, p0, Le/a/d5/h/e;->b:Le/a/u3/g;

    .line 2
    iget-object v0, p1, Le/a/u3/g;->q1:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x78

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/d5/h/e;->d:Le/a/f/b;

    invoke-interface {p1}, Le/a/f/b;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/d5/h/e;->c:Le/a/b0/o/a;

    const-string v0, "core_isReturningUser"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/d5/h/e;->d:Le/a/f/b;

    invoke-interface {p1}, Le/a/f/b;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Le/a/d5/h/e;->d:Le/a/f/b;

    invoke-interface {p1}, Le/a/f/b;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;->INCALLUI_PROMO:Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;

    const-string v1, "analyticsContext"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Le/a/f/a/u/g;->hB(Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;)Le/a/f/a/u/g;

    move-result-object v0

    return-object v0
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
