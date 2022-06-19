.class public final Le/a/d/y/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/a/d;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/y/a/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/d/y/a/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/y/a/h$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/y/a/h$a;

    iget v1, v0, Le/a/d/y/a/h$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/y/a/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/y/a/h$a;

    invoke-direct {v0, p0, p1}, Le/a/d/y/a/h$a;-><init>(Le/a/d/y/a/h;Ls1/w/d;)V

    :goto_0
    move-object v7, v0

    iget-object p1, v7, Le/a/d/y/a/h$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/d/y/a/h$a;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/d/y/a/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "context.contentResolver"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contact_name"

    const-string v2, "normalized_number"

    const-string v3, "timestamp"

    .line 5
    filled-new-array {p1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v2

    const-string p1, "HistoryTable.getContentWithAggregatedContactUri()"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subscription_component_name IN (\'com.truecaller.voip.manager.VOIP\',\'com.truecaller.voip.manager.GROUP_VOIP\') AND type=3 AND action=1 AND new=1 AND normalized_number IS NOT NULL"

    const/4 v5, 0x0

    const-string v6, "timestamp DESC LIMIT 100"

    const/16 v8, 0x8

    .line 7
    iput v10, v7, Le/a/d/y/a/h$a;->e:I

    .line 8
    invoke-static/range {v1 .. v8}, Le/a/p5/s0/f;->B(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_1
    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_9

    .line 10
    new-instance v0, Le/a/d/y/a/a;

    invoke-direct {v0, p1}, Le/a/d/y/a/a;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_2
    invoke-virtual {v0}, Le/a/d/y/a/a;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13
    iget-object v1, v0, Le/a/d/y/a/a;->a:Le/a/p5/s0/e;

    sget-object v2, Le/a/d/y/a/a;->e:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v0, v4}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v0, Le/a/d/y/a/a;->a:Le/a/p5/s0/e;

    aget-object v5, v2, v3

    invoke-virtual {v4, v0, v5}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 14
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v3, v10

    :cond_5
    xor-int/2addr v3, v10

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    iget-object v1, v0, Le/a/d/y/a/a;->b:Le/a/p5/s0/e;

    aget-object v3, v2, v10

    invoke-virtual {v1, v0, v3}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    :goto_4
    new-instance v3, Le/a/d/y/a/b;

    .line 19
    iget-object v4, v0, Le/a/d/y/a/a;->c:Le/a/p5/s0/e;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v4, v0, v2}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 20
    invoke-direct {v3, v1, v4, v5}, Le/a/d/y/a/b;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 21
    :cond_8
    :try_start_3
    invoke-static {v0, v9}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 22
    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 23
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-object v9
.end method
