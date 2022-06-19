.class public final Le/a/l0/u/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/u/a;


# instance fields
.field public final a:Le/a/p5/a0;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/k3/l/f;

.field public final d:Le/a/l0/f;

.field public final e:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/p5/a0;Lo3/a;Le/a/k3/l/f;Le/a/l0/f;Le/a/u3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/a0;",
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;",
            "Le/a/k3/l/f;",
            "Le/a/l0/f;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/u/b;->a:Le/a/p5/a0;

    iput-object p2, p0, Le/a/l0/u/b;->b:Lo3/a;

    iput-object p3, p0, Le/a/l0/u/b;->c:Le/a/k3/l/f;

    iput-object p4, p0, Le/a/l0/u/b;->d:Le/a/l0/f;

    iput-object p5, p0, Le/a/l0/u/b;->e:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;J)Le/a/l0/u/d/d;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "resolver"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v1, Le/a/l0/u/b;->a:Le/a/p5/a0;

    const-string v3, "android.permission.READ_CALL_LOG"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v1, Le/a/l0/u/b;->a:Le/a/p5/a0;

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, v1, Le/a/l0/u/b;->d:Le/a/l0/f;

    invoke-virtual {v0}, Le/a/l0/f;->a()[Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, v1, Le/a/l0/u/b;->b:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "multiSimManager.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/e4/p;

    invoke-interface {v3}, Le/a/e4/p;->q()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v0, v3}, Lw3/c/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1
    move-object v4, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 5
    :try_start_0
    iget-object v0, v1, Le/a/l0/u/b;->d:Le/a/l0/f;

    invoke-virtual {v0}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date>=1 AND date<=? AND type IN("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Le/a/l0/u/c;->a:[I

    const-string v12, ","

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    invoke-static/range {v11 .. v18}, Le/q/f/a/d/a;->L1([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/String;

    .line 7
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    const-string v7, "date DESC, _id DESC"

    move-object/from16 v2, p1

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    :try_start_1
    new-instance v0, Le/a/l0/u/d/e;

    .line 10
    iget-object v3, v1, Le/a/l0/u/b;->c:Le/a/k3/l/f;

    .line 11
    iget-object v4, v1, Le/a/l0/u/b;->b:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/e4/p;

    invoke-interface {v4, v2}, Le/a/e4/p;->x(Landroid/database/Cursor;)Le/a/e4/l;

    move-result-object v4

    .line 12
    invoke-virtual/range {p0 .. p0}, Le/a/l0/u/b;->c()Z

    move-result v5

    .line 13
    invoke-virtual/range {p0 .. p0}, Le/a/l0/u/b;->d()Z

    move-result v6

    .line 14
    invoke-direct {v0, v3, v4, v5, v6}, Le/a/l0/u/d/e;-><init>(Le/a/k3/l/f;Le/a/e4/l;ZZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    :goto_0
    return-object v8

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v8

    :goto_1
    if-eqz v2, :cond_3

    .line 15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v8

    :catch_4
    move-exception v0

    move-object v2, v8

    :goto_2
    if-eqz v2, :cond_4

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v8

    :catch_5
    move-exception v0

    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_a

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2c

    if-nez v0, :cond_5

    move-object v0, v8

    goto :goto_5

    .line 20
    :cond_5
    array-length v4, v0

    add-int/lit8 v5, v4, 0x0

    if-gtz v5, :cond_6

    const-string v0, ""

    goto :goto_5

    .line 21
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v5, 0x10

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v5, v9

    :goto_4
    if-ge v5, v4, :cond_9

    if-lez v5, :cond_7

    .line 22
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_7
    aget-object v7, v0, v5

    if-eqz v7, :cond_8

    .line 24
    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 25
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "Can\'t create remote calls cursor. Available columns: "

    .line 26
    invoke-static {v4, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 28
    :cond_a
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    return-object v8
.end method

.method public b(Landroid/content/ContentResolver;J)Le/a/l0/u/d/b;
    .locals 7

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v5, p3

    const/4 v3, 0x0

    const-string v4, "type IN (1,2,3)  AND timestamp<=? AND tc_flag!=3 AND (subscription_component_name!=\'com.whatsapp\' OR subscription_component_name IS NULL) AND tc_flag!=2 AND (subscription_component_name NOT IN(\'com.truecaller.voip.manager.VOIP\',\'com.truecaller.voip.manager.GROUP_VOIP\') OR subscription_component_name IS NULL)"

    const-string v6, "timestamp DESC, call_log_id DESC"

    move-object v1, p1

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Content resolver returned null cursor"

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Le/a/l0/u/d/c;

    .line 6
    invoke-direct {v0, p1, p2, p2, p3}, Le/a/l0/u/d/c;-><init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/j/c;Z)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/u/b;->e:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->w2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xb2

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/u/b;->e:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->y2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xb4

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method
