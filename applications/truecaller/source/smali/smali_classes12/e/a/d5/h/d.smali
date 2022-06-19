.class public final Le/a/d5/h/d;
.super Le/a/d5/h/t;
.source "SourceFile"


# instance fields
.field public final d:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final e:Le/a/o5/f0;

.field public final f:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/b0/o/a;Le/a/z4/d;Le/a/b0/q/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_fill_profile_promo_last_time"

    .line 1
    invoke-direct {p0, v0, p3, p4}, Le/a/d5/h/t;-><init>(Ljava/lang/String;Le/a/z4/d;Le/a/b0/q/l0;)V

    iput-object p1, p0, Le/a/d5/h/d;->e:Le/a/o5/f0;

    iput-object p2, p0, Le/a/d5/h/d;->f:Le/a/b0/o/a;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->DIALOG_BLANK_PROFILE_NAME:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/d;->d:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-void
.end method


# virtual methods
.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/d;->d:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/d5/h/d$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d5/h/d$a;

    iget v3, v2, Le/a/d5/h/d$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d5/h/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d5/h/d$a;

    invoke-direct {v2, v0, v1}, Le/a/d5/h/d$a;-><init>(Le/a/d5/h/d;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d5/h/d$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d5/h/d$a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/d5/h/d;->e:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5
    iget-object v1, v0, Le/a/d5/h/d;->f:Le/a/b0/o/a;

    const-string v4, "profileFirstName"

    invoke-interface {v1, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v6

    :goto_2
    if-eqz v1, :cond_9

    .line 6
    iget-object v1, v0, Le/a/d5/h/d;->f:Le/a/b0/o/a;

    const-string v4, "profileLastName"

    invoke-interface {v1, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v6

    :goto_4
    if-eqz v1, :cond_9

    .line 7
    iput v6, v2, Le/a/d5/h/d$a;->e:I

    .line 8
    iget-object v1, v0, Le/a/d5/h/t;->b:Le/a/z4/d;

    const-wide/16 v7, 0x0

    const-string v2, "key_unimportant_promo_last_time"

    invoke-interface {v1, v2, v7, v8}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 9
    iget-object v1, v0, Le/a/d5/h/t;->b:Le/a/z4/d;

    const-wide/16 v12, 0x3

    const-string v2, "feature_global_unimportant_promo_period_days"

    invoke-interface {v1, v2, v12, v13}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 10
    iget-object v9, v0, Le/a/d5/h/t;->c:Le/a/b0/q/l0;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v14, v19

    invoke-virtual/range {v9 .. v14}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .line 12
    :cond_7
    iget-object v1, v0, Le/a/d5/h/t;->b:Le/a/z4/d;

    iget-object v2, v0, Le/a/d5/h/t;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v7, v8}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 13
    iget-object v1, v0, Le/a/d5/h/t;->b:Le/a/z4/d;

    const-wide/16 v7, 0x7

    const-string v2, "feature_unimportant_promo_period_days"

    invoke-interface {v1, v2, v7, v8}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 14
    iget-object v14, v0, Le/a/d5/h/t;->c:Le/a/b0/q/l0;

    invoke-virtual/range {v14 .. v19}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    if-ne v1, v3, :cond_8

    return-object v3

    .line 16
    :cond_8
    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    move v5, v6

    .line 17
    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/d5/g/g;

    invoke-direct {v0}, Le/a/d5/g/g;-><init>()V

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
