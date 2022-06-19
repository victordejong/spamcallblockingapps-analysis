.class public final Le/a/b/o/b/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/b/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.bizmon.governmentServices.config.GovernmentServicesConfigManagerImpl$checkVersionAndUpdateDBAsync$2$1"
    f = "GovernmentServicesConfigManager.kt"
    l = {
        0x3f,
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/o/b/b;


# direct methods
.method public constructor <init>(Le/a/b/o/b/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

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

    new-instance p1, Le/a/b/o/b/b$a;

    iget-object v0, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    invoke-direct {p1, v0, p2}, Le/a/b/o/b/b$a;-><init>(Le/a/b/o/b/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/o/b/b$a;

    iget-object v0, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    invoke-direct {p1, v0, p2}, Le/a/b/o/b/b$a;-><init>(Le/a/b/o/b/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/o/b/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/o/b/b$a;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    iget-object p1, p1, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    .line 5
    iget-object v1, p1, Le/a/b/o/b/d;->b:Le/m/e/k;

    .line 6
    iget-object p1, p1, Le/a/b/o/b/d;->c:Le/a/u3/g;

    .line 7
    iget-object v5, p1, Le/a/u3/g;->h4:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x10f

    aget-object v6, v6, v7

    invoke-virtual {v5, p1, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 8
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    const-class v5, Lcom/truecaller/bizmon/governmentServices/config/GovernmentServicesConfig;

    invoke-virtual {v1, p1, v5}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/bizmon/governmentServices/config/GovernmentServicesConfig;

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/bizmon/governmentServices/config/GovernmentServicesConfig;->getVersion()I

    move-result v1

    iget-object v5, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    iget-object v5, v5, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    .line 10
    iget-object v5, v5, Le/a/b/o/b/d;->g:Le/a/b/p/c;

    const-string v6, "government_services_version"

    .line 11
    invoke-interface {v5, v6, v3}, Le/a/b/p/c;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-le v1, v5, :cond_5

    .line 12
    iget-object v1, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    iget-object v1, v1, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/governmentServices/config/GovernmentServicesConfig;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object v5, v1, Le/a/b/o/b/d;->a:Ljava/net/URL;

    .line 14
    iget-object v1, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    iget-object v1, v1, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    .line 15
    iget-object v5, v1, Le/a/b/o/b/d;->b:Le/m/e/k;

    .line 16
    iget-object v1, v1, Le/a/b/o/b/d;->a:Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 17
    :try_start_3
    new-instance v7, Le/p/a/q;

    invoke-direct {v7}, Le/p/a/q;-><init>()V

    .line 18
    new-instance v8, Le/p/a/s$b;

    invoke-direct {v8}, Le/p/a/s$b;-><init>()V

    .line 19
    invoke-virtual {v8, v1}, Le/p/a/s$b;->e(Ljava/net/URL;)Le/p/a/s$b;

    .line 20
    invoke-virtual {v8}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v1

    .line 21
    new-instance v8, Le/p/a/d;

    invoke-direct {v8, v7, v1}, Le/p/a/d;-><init>(Le/p/a/q;Le/p/a/s;)V

    .line 22
    invoke-virtual {v8}, Le/p/a/d;->a()Le/p/a/u;

    move-result-object v1

    .line 23
    iget-object v1, v1, Le/p/a/u;->g:Le/p/a/v;

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v1}, Le/p/a/v;->k()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v6

    .line 26
    :goto_0
    new-instance v7, Le/a/b/o/b/b$a$a;

    invoke-direct {v7}, Le/a/b/o/b/b$a$a;-><init>()V

    .line 27
    iget-object v7, v7, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 28
    invoke-virtual {v5, v1, v7}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 29
    iget-object v5, p0, Le/a/b/o/b/b$a;->f:Le/a/b/o/b/b;

    iget-object v5, v5, Le/a/b/o/b/b;->f:Le/a/b/o/b/d;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/governmentServices/config/GovernmentServicesConfig;->getVersion()I

    move-result p1

    iput v4, p0, Le/a/b/o/b/b$a;->e:I

    .line 30
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v7, Le/a/b/o/b/c;

    invoke-direct {v7, v5, v1, p1, v6}, Le/a/b/o/b/c;-><init>(Le/a/b/o/b/d;Ljava/util/List;ILs1/w/d;)V

    invoke-static {v7, p0}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 32
    :cond_4
    :goto_1
    check-cast p1, Lq3/a/n0;

    iput v2, p0, Le/a/b/o/b/b$a;->e:I

    invoke-interface {p1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    move v3, v4

    goto :goto_3

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    const-string v0, "Exception in governmentServices while loading data"

    .line 34
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 35
    :cond_6
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
