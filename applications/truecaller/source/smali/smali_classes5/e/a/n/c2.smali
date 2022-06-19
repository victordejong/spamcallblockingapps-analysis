.class public final Le/a/n/c2;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/n/a2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/n/b2;",
        ">;",
        "Le/a/n/a2;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/n/m;

.field public final g:Le/a/n/m;

.field public final h:Le/a/u3/g;

.field public final i:Le/a/n/d2;

.field public final j:Le/a/q2/a;

.field public final k:Le/a/n/j;

.field public final l:Le/a/d4/a;

.field public final m:Le/a/p5/c;

.field public final n:Le/a/h4/n;

.field public final o:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/n/m;Le/a/u3/g;Le/a/n/d2;Le/a/q2/a;Le/a/n/j;Le/a/d4/a;Le/a/p5/c;Le/a/h4/n;Le/a/b0/o/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Le/a/n/m;
        .annotation runtime Ljavax/inject/Named;
            value = "V1"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManagerCompat"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsBackupManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupListener"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMarketUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/n/c2;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/n/c2;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/n/c2;->f:Le/a/n/m;

    iput-object p4, p0, Le/a/n/c2;->g:Le/a/n/m;

    iput-object p5, p0, Le/a/n/c2;->h:Le/a/u3/g;

    iput-object p6, p0, Le/a/n/c2;->i:Le/a/n/d2;

    iput-object p7, p0, Le/a/n/c2;->j:Le/a/q2/a;

    iput-object p8, p0, Le/a/n/c2;->k:Le/a/n/j;

    iput-object p9, p0, Le/a/n/c2;->l:Le/a/d4/a;

    iput-object p10, p0, Le/a/n/c2;->m:Le/a/p5/c;

    iput-object p11, p0, Le/a/n/c2;->n:Le/a/h4/n;

    iput-object p12, p0, Le/a/n/c2;->o:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/backup/BackupResult;JLs1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/backup/BackupResult;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Le/a/n/c2$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/n/c2$a;

    iget v3, v2, Le/a/n/c2$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/n/c2$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/n/c2$a;

    invoke-direct {v2, v0, v1}, Le/a/n/c2$a;-><init>(Le/a/n/c2;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/n/c2$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/n/c2$a;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v6, v2, Le/a/n/c2$a;->l:J

    iget-object v4, v2, Le/a/n/c2$a;->k:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v9, v2, Le/a/n/c2$a;->j:Ljava/lang/Object;

    check-cast v9, Ls1/z/c/c0;

    iget-object v10, v2, Le/a/n/c2$a;->i:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v2, Le/a/n/c2$a;->h:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/y;

    iget-object v12, v2, Le/a/n/c2$a;->g:Ljava/lang/Object;

    check-cast v12, Le/a/n/c2;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v9, v2, Le/a/n/c2$a;->l:J

    iget-object v4, v2, Le/a/n/c2$a;->k:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v7, v2, Le/a/n/c2$a;->j:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    iget-object v11, v2, Le/a/n/c2$a;->i:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/c0;

    iget-object v12, v2, Le/a/n/c2$a;->h:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/y;

    iget-object v13, v2, Le/a/n/c2$a;->g:Ljava/lang/Object;

    check-cast v13, Le/a/n/c2;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v12, Ls1/z/c/y;

    invoke-direct {v12}, Ls1/z/c/y;-><init>()V

    iget-object v1, v0, Le/a/n/c2;->h:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->e()Le/a/u3/i;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/i;->isEnabled()Z

    move-result v1

    iput-boolean v1, v12, Ls1/z/c/y;->a:Z

    .line 5
    new-instance v11, Ls1/z/c/c0;

    invoke-direct {v11}, Ls1/z/c/c0;-><init>()V

    iput-object v8, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    new-instance v4, Ls1/z/c/c0;

    invoke-direct {v4}, Ls1/z/c/c0;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v9, 0x11

    if-eq v1, v9, :cond_6

    .line 7
    iget-object v1, v0, Le/a/n/c2;->g:Le/a/n/m;

    iput-object v0, v2, Le/a/n/c2$a;->g:Ljava/lang/Object;

    iput-object v12, v2, Le/a/n/c2$a;->h:Ljava/lang/Object;

    iput-object v11, v2, Le/a/n/c2$a;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/n/c2$a;->j:Ljava/lang/Object;

    iput-object v4, v2, Le/a/n/c2$a;->k:Ljava/lang/Object;

    move-wide/from16 v9, p2

    iput-wide v9, v2, Le/a/n/c2$a;->l:J

    iput v7, v2, Le/a/n/c2$a;->e:I

    invoke-interface {v1, v8, v2}, Le/a/n/m;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v13, v0

    move-object v7, v4

    .line 8
    :goto_1
    check-cast v1, Lcom/truecaller/backup/BackupResult;

    goto :goto_2

    :cond_6
    move-wide/from16 v9, p2

    move-object/from16 v1, p1

    move-object v13, v0

    move-object v7, v4

    .line 9
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_7

    move-wide v14, v9

    move-object v6, v11

    move-object v10, v13

    move-object v11, v7

    goto :goto_4

    .line 10
    :cond_7
    iget-object v1, v13, Le/a/n/c2;->i:Le/a/n/d2;

    iput-object v13, v2, Le/a/n/c2$a;->g:Ljava/lang/Object;

    iput-object v12, v2, Le/a/n/c2$a;->h:Ljava/lang/Object;

    iput-object v11, v2, Le/a/n/c2$a;->i:Ljava/lang/Object;

    iput-object v7, v2, Le/a/n/c2$a;->j:Ljava/lang/Object;

    iput-object v4, v2, Le/a/n/c2$a;->k:Ljava/lang/Object;

    iput-wide v9, v2, Le/a/n/c2$a;->l:J

    iput v6, v2, Le/a/n/c2$a;->e:I

    .line 11
    invoke-interface {v1, v8, v2}, Le/a/n/d2;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    :cond_8
    move-wide/from16 v17, v9

    move-object v9, v7

    move-wide/from16 v6, v17

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    .line 12
    :goto_3
    check-cast v1, Ls1/k;

    .line 13
    iget-object v13, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 14
    check-cast v13, Lcom/truecaller/backup/BackupResult;

    .line 15
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 16
    check-cast v1, Ljava/util/Set;

    .line 17
    iput-object v1, v10, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-wide v14, v6

    move-object v6, v10

    move-object v10, v12

    move-object v1, v13

    move-object v12, v11

    move-object v11, v9

    .line 18
    :goto_4
    iput-object v1, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 19
    new-instance v13, Ls1/z/c/b0;

    invoke-direct {v13}, Ls1/z/c/b0;-><init>()V

    iget-object v1, v10, Le/a/n/c2;->m:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v8

    iput-wide v8, v13, Ls1/z/c/b0;->a:J

    .line 20
    iget-object v1, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/backup/BackupResult;

    sget-object v4, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne v1, v4, :cond_9

    .line 21
    iget-object v1, v10, Le/a/n/c2;->k:Le/a/n/j;

    iget-object v4, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v1, v4}, Le/a/n/j;->a(Ljava/util/Set;)V

    .line 22
    :cond_9
    iget-object v1, v10, Le/a/n/c2;->e:Ls1/w/f;

    new-instance v4, Le/a/n/c2$b;

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Le/a/n/c2$b;-><init>(Le/a/n/c2;Ls1/z/c/c0;Ls1/z/c/y;Ls1/z/c/b0;JLs1/w/d;)V

    const/4 v6, 0x0

    iput-object v6, v2, Le/a/n/c2$a;->g:Ljava/lang/Object;

    iput-object v6, v2, Le/a/n/c2$a;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/n/c2$a;->i:Ljava/lang/Object;

    iput-object v6, v2, Le/a/n/c2$a;->j:Ljava/lang/Object;

    iput-object v6, v2, Le/a/n/c2$a;->k:Ljava/lang/Object;

    iput v5, v2, Le/a/n/c2$a;->e:I

    invoke-static {v1, v4, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    .line 23
    :cond_a
    :goto_5
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.method public final synthetic Jj(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/n/c2$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/c2$d;

    iget v1, v0, Le/a/n/c2$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/c2$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/c2$d;

    invoke-direct {v0, p0, p1}, Le/a/n/c2$d;-><init>(Le/a/n/c2;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/c2$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/c2$d;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide v4, v0, Le/a/n/c2$d;->h:J

    iget-object v2, v0, Le/a/n/c2$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/c2;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/c2;->m:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v7

    .line 5
    iget-object p1, p0, Le/a/n/c2;->h:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->e()Le/a/u3/i;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/i;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Le/a/n/c2;->f:Le/a/n/m;

    new-instance v2, Le/a/n/c2$e;

    invoke-direct {v2, p0, v7, v8, v6}, Le/a/n/c2$e;-><init>(Le/a/n/c2;JLs1/w/d;)V

    iput v5, v0, Le/a/n/c2$d;->e:I

    invoke-interface {p1, v6, v2, v0}, Le/a/n/m;->e(Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 7
    :cond_5
    iget-object p1, p0, Le/a/n/c2;->f:Le/a/n/m;

    iput-object p0, v0, Le/a/n/c2$d;->g:Ljava/lang/Object;

    iput-wide v7, v0, Le/a/n/c2$d;->h:J

    iput v4, v0, Le/a/n/c2$d;->e:I

    invoke-interface {p1, v6, v0}, Le/a/n/m;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move-wide v4, v7

    .line 8
    :goto_2
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    .line 9
    iput-object v6, v0, Le/a/n/c2$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/c2$d;->e:I

    invoke-virtual {v2, p1, v4, v5, v0}, Le/a/n/c2;->Ij(Lcom/truecaller/backup/BackupResult;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 10
    :cond_7
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public hg()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/n/c2;->n:Le/a/h4/n;

    const-string v1, "backup"

    invoke-interface {v0, v1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/b2;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/n/b2;->c(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/b2;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Le/a/n/b2;->g(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/b2;

    if-eqz v0, :cond_2

    const v1, 0x7f120ec9

    invoke-interface {v0, v1}, Le/a/n/b2;->a(I)V

    .line 5
    :cond_2
    iget-object v3, p0, Le/a/n/c2;->d:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/n/c2$c;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Le/a/n/c2$c;-><init>(Le/a/n/c2;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
