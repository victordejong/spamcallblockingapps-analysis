.class public final Le/a/b/k/a/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/a/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.covidDirectory.config.CovidDirectoryConfigManagerImpl$updateDBAsync$2$1"
    f = "CovidDirectoryConfigManager.kt"
    l = {
        0x43,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/k/a/c;


# direct methods
.method public constructor <init>(Le/a/b/k/a/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/k/a/c$a;

    iget-object v1, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    invoke-direct {v0, v1, p2}, Le/a/b/k/a/c$a;-><init>(Le/a/b/k/a/c;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/k/a/c$a;

    iget-object v1, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    invoke-direct {v0, v1, p2}, Le/a/b/k/a/c$a;-><init>(Le/a/b/k/a/c;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/k/a/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/k/a/c$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/i0;

    .line 4
    :try_start_2
    iget-object p1, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-object p1, p1, Le/a/b/k/a/c;->f:Le/a/b/k/a/d;

    .line 5
    iget-object p1, p1, Le/a/b/k/a/d;->b:Le/a/u3/g;

    .line 6
    iget-object v4, p1, Le/a/u3/g;->E4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x126

    aget-object v6, v5, v6

    invoke-virtual {v4, p1, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 7
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    const-string v4, "$this$toHttpUrlOrNull"

    .line 8
    invoke-static {p1, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x0

    :try_start_3
    const-string v6, "$this$toHttpUrl"

    .line 9
    invoke-static {p1, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Lu3/a0$a;

    invoke-direct {v6}, Lu3/a0$a;-><init>()V

    invoke-virtual {v6, v4, p1}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v6}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_0
    move-object v6, v4

    :goto_0
    if-eqz v6, :cond_8

    .line 11
    :try_start_4
    iget-object v6, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-object v6, v6, Le/a/b/k/a/c;->f:Le/a/b/k/a/d;

    .line 12
    iget-object v6, v6, Le/a/b/k/a/d;->b:Le/a/u3/g;

    .line 13
    iget-object v7, v6, Le/a/u3/g;->I4:Le/a/u3/g$a;

    const/16 v8, 0x12c

    aget-object v5, v5, v8

    invoke-virtual {v7, v6, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    check-cast v5, Le/a/u3/i;

    .line 14
    invoke-interface {v5}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_3
    const/16 v5, 0xc

    .line 15
    :goto_1
    iget-object v6, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-object v6, v6, Le/a/b/k/a/c;->f:Le/a/b/k/a/d;

    .line 16
    iget-object v6, v6, Le/a/b/k/a/d;->g:Le/a/b/p/c;

    const-string v7, "covid_dir_last_sync_time"

    const-wide/16 v8, 0x0

    .line 17
    invoke-interface {v6, v7, v8, v9}, Le/a/b/p/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 19
    iget-object v10, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-boolean v10, v10, Le/a/b/k/a/c;->g:Z

    if-nez v10, :cond_4

    sub-long/2addr v8, v6

    int-to-long v5, v5

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v5, v10

    cmp-long v5, v8, v5

    if-lez v5, :cond_9

    .line 20
    :cond_4
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-object p1, p1, Le/a/b/k/a/c;->f:Le/a/b/k/a/d;

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 23
    :try_start_5
    new-instance p1, Le/p/a/q;

    invoke-direct {p1}, Le/p/a/q;-><init>()V

    .line 24
    new-instance v6, Le/p/a/s$b;

    invoke-direct {v6}, Le/p/a/s$b;-><init>()V

    .line 25
    invoke-virtual {v6, v5}, Le/p/a/s$b;->e(Ljava/net/URL;)Le/p/a/s$b;

    .line 26
    invoke-virtual {v6}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v5

    .line 27
    new-instance v6, Le/p/a/d;

    invoke-direct {v6, p1, v5}, Le/p/a/d;-><init>(Le/p/a/q;Le/p/a/s;)V

    .line 28
    invoke-virtual {v6}, Le/p/a/d;->a()Le/p/a/u;

    move-result-object p1

    .line 29
    iget-object p1, p1, Le/p/a/u;->g:Le/p/a/v;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p1}, Le/p/a/v;->k()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :cond_5
    move-object p1, v4

    goto :goto_2

    :catch_1
    move-exception p1

    .line 31
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_8

    .line 32
    iget-object v5, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-object v5, v5, Le/a/b/k/a/c;->f:Le/a/b/k/a/d;

    .line 33
    iget-object v5, v5, Le/a/b/k/a/d;->a:Le/m/e/k;

    .line 34
    new-instance v6, Le/a/b/k/a/c$a$a;

    invoke-direct {v6}, Le/a/b/k/a/c$a$a;-><init>()V

    .line 35
    iget-object v6, v6, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 36
    invoke-virtual {v5, p1, v6}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 37
    iget-object v5, p0, Le/a/b/k/a/c$a;->g:Le/a/b/k/a/c;

    iget-object v5, v5, Le/a/b/k/a/c;->f:Le/a/b/k/a/d;

    iput-object v1, p0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/b/k/a/c$a;->f:I

    .line 38
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v6, Le/a/b/k/a/b;

    invoke-direct {v6, v5, p1, v4}, Le/a/b/k/a/b;-><init>(Le/a/b/k/a/d;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v6, p0}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 40
    :cond_6
    :goto_3
    check-cast p1, Lq3/a/n0;

    iput-object v1, p0, Le/a/b/k/a/c$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/b/k/a/c$a;->f:I

    invoke-interface {p1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 41
    :cond_7
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz p1, :cond_8

    goto :goto_5

    :catch_2
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    const-string v0, "Exception in covid dir sync while loading data"

    .line 43
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    const/4 v3, 0x0

    .line 44
    :cond_9
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
