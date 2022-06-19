.class public final Le/a/d5/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final b:Le/a/p5/g;

.field public final c:Le/a/z4/d;

.field public final d:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/z4/d;Le/a/b0/q/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/g;->b:Le/a/p5/g;

    iput-object p2, p0, Le/a/d5/h/g;->c:Le/a/z4/d;

    iput-object p3, p0, Le/a/d5/h/g;->d:Le/a/b0/q/l0;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->DIALOG_MDAU_PROMO:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/g;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

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
    iget-object v0, p0, Le/a/d5/h/g;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/g;->c:Le/a/z4/d;

    iget-object v1, p0, Le/a/d5/h/g;->d:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    const-string v3, "key_mdau_promo_shown_timestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Le/a/d5/h/g;->c:Le/a/z4/d;

    const-string v1, "key_mdau_promo_shown_times"

    invoke-interface {v0, v1}, Le/a/z4/d;->l(Ljava/lang/String;)I

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
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
    iget-object p1, p0, Le/a/d5/h/g;->b:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/d5/h/g;->c:Le/a/z4/d;

    const/4 v0, 0x3

    const-string v1, "key_mdau_promo_shown_timestamp"

    const-string v2, "key_upgrade_timestamp"

    const-string v3, "key_init_timestamp"

    .line 4
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v7, v2

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 5
    aget-object v6, v1, v5

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    .line 6
    invoke-interface {p1, v6, v2, v3}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d5/h/g;->c:Le/a/z4/d;

    const-string v0, "key_mdau_promo_shown_times"

    invoke-interface {p1, v0, v4}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v6, p0, Le/a/d5/h/g;->d:Le/a/b0/q/l0;

    const-wide/16 v9, 0x1e

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v6 .. v11}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    goto :goto_1

    .line 9
    :cond_4
    iget-object v6, p0, Le/a/d5/h/g;->d:Le/a/b0/q/l0;

    const-wide/16 v9, 0x7

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v6 .. v11}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    goto :goto_1

    .line 10
    :cond_5
    iget-object v6, p0, Le/a/d5/h/g;->d:Le/a/b0/q/l0;

    const-wide/16 v9, 0x1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v6 .. v11}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 11
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/d5/g/i;

    invoke-direct {v0}, Le/a/d5/g/i;-><init>()V

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
