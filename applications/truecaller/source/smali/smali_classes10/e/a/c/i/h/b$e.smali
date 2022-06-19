.class public final Le/a/c/i/h/b$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/h/b;->a()V
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
    c = "com.truecaller.insights.core.migrations.InsightsMigrationManagerImpl$setupMigration$1$1"
    f = "MigrationManager.kt"
    l = {
        0x41,
        0x42,
        0x43,
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/i/h/b;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/c/i/h/b;)V
    .locals 0

    iput-object p2, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/c/i/h/b$e;

    iget-object v0, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    invoke-direct {p1, p2, v0}, Le/a/c/i/h/b$e;-><init>(Ls1/w/d;Le/a/c/i/h/b;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/h/b$e;

    iget-object v0, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    invoke-direct {p1, p2, v0}, Le/a/c/i/h/b$e;-><init>(Ls1/w/d;Le/a/c/i/h/b;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/h/b$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/h/b$e;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    iput v5, p0, Le/a/c/i/h/b$e;->e:I

    invoke-virtual {p1, p0}, Le/a/c/i/h/b;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 5
    :cond_5
    :goto_0
    iget-object p1, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    iput v4, p0, Le/a/c/i/h/b$e;->e:I

    invoke-virtual {p1, p0}, Le/a/c/i/h/b;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 6
    :cond_6
    :goto_1
    iget-object p1, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    iput v3, p0, Le/a/c/i/h/b$e;->e:I

    invoke-virtual {p1, p0}, Le/a/c/i/h/b;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 7
    :cond_7
    :goto_2
    iget-object p1, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_0
    iget-object p1, p1, Le/a/c/i/h/b;->c:Landroid/content/Context;

    const-string v1, "smsCategorizerDb.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 10
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, p1, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    :goto_3
    iget-object p1, p0, Le/a/c/i/h/b$e;->f:Le/a/c/i/h/b;

    iput v2, p0, Le/a/c/i/h/b$e;->e:I

    invoke-virtual {p1, p0}, Le/a/c/i/h/b;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 13
    :cond_8
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
