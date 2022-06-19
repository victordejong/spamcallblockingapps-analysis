.class public final Le/a/r3/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r3/h;->d(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Le/a/r3/b;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.dynamicfeaturesupport.DynamicFeatureManagerImpl$install$1"
    f = "DynamicFeatureManagerImpl.kt"
    l = {
        0x48,
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/r3/h;

.field public final synthetic i:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;


# direct methods
.method public constructor <init>(Le/a/r3/h;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    iput-object p2, p0, Le/a/r3/h$a;->i:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/r3/h$a;

    iget-object v1, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    iget-object v2, p0, Le/a/r3/h$a;->i:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-direct {v0, v1, v2, p2}, Le/a/r3/h$a;-><init>(Le/a/r3/h;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V

    iput-object p1, v0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/r3/h$a;

    iget-object v1, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    iget-object v2, p0, Le/a/r3/h$a;->i:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-direct {v0, v1, v2, p2}, Le/a/r3/h$a;-><init>(Le/a/r3/h;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Ls1/w/d;)V

    iput-object p1, v0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/r3/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/r3/h$a;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/r3/h$a;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/a0;

    iget-object v2, p0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/x;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/w2/x;

    .line 4
    iget-object p1, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    iget-object v6, p0, Le/a/r3/h$a;->i:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-virtual {p1, v6}, Le/a/r3/h;->b(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    sget-object p1, Le/a/r3/b$d;->a:Le/a/r3/b$d;

    iput-object v2, p0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/r3/h$a;->g:I

    invoke-interface {v2, p1, p0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    .line 6
    :goto_0
    invoke-interface {v1}, Lq3/a/w2/x;->Z1()Lq3/a/w2/d0;

    move-result-object p1

    invoke-static {p1, v4, v5, v4}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-object v0

    .line 7
    :cond_4
    new-instance p1, Ls1/z/c/a0;

    invoke-direct {p1}, Ls1/z/c/a0;-><init>()V

    const/4 v6, -0x1

    iput v6, p1, Ls1/z/c/a0;->a:I

    .line 8
    :try_start_1
    new-instance v6, Le/a/r3/h$a$d;

    invoke-direct {v6, p0, v2, p1}, Le/a/r3/h$a$d;-><init>(Le/a/r3/h$a;Lq3/a/w2/x;Ls1/z/c/a0;)V

    .line 9
    iget-object v7, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    .line 10
    iget-object v7, v7, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    .line 11
    invoke-interface {v7, v6}, Le/m/a/h/a/g/b;->d(Le/m/a/h/a/g/e;)V

    .line 12
    new-instance v7, Le/m/a/h/a/g/c$a;

    .line 13
    invoke-direct {v7}, Le/m/a/h/a/g/c$a;-><init>()V

    .line 14
    iget-object v8, p0, Le/a/r3/h$a;->i:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    invoke-virtual {v8}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v8

    .line 15
    iget-object v9, v7, Le/m/a/h/a/g/c$a;->a:Ljava/util/List;

    .line 16
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v8, Le/m/a/h/a/g/c;

    .line 18
    invoke-direct {v8, v7}, Le/m/a/h/a/g/c;-><init>(Le/m/a/h/a/g/c$a;)V

    const-string v7, "SplitInstallRequest\n    \u2026\n                .build()"

    .line 19
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v7, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    .line 21
    iget-object v7, v7, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    .line 22
    invoke-interface {v7, v8}, Le/m/a/h/a/g/b;->a(Le/m/a/h/a/g/c;)Le/m/a/h/a/h/r;

    move-result-object v7

    .line 23
    new-instance v8, Le/a/r3/h$a$a;

    invoke-direct {v8, p1}, Le/a/r3/h$a$a;-><init>(Ls1/z/c/a0;)V

    .line 24
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v9, Le/m/a/h/a/h/e;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v7, v9, v8}, Le/m/a/h/a/h/r;->b(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/c;)Le/m/a/h/a/h/r;

    .line 26
    new-instance v8, Le/a/r3/h$a$b;

    invoke-direct {v8, v2}, Le/a/r3/h$a$b;-><init>(Lq3/a/w2/x;)V

    .line 27
    invoke-virtual {v7, v9, v8}, Le/m/a/h/a/h/r;->a(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/b;)Le/m/a/h/a/h/r;

    .line 28
    new-instance v7, Le/a/r3/h$a$c;

    invoke-direct {v7, p0, v6}, Le/a/r3/h$a$c;-><init>(Le/a/r3/h$a;Le/m/a/h/a/g/e;)V

    iput-object v2, p0, Le/a/r3/h$a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/r3/h$a;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/r3/h$a;->g:I

    invoke-static {v2, v7, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_6

    return-object v1

    :catch_0
    move-exception p1

    .line 29
    invoke-interface {v2}, Lq3/a/w2/x;->Z1()Lq3/a/w2/d0;

    move-result-object v1

    invoke-interface {v1}, Lq3/a/w2/d0;->i()Z

    move-result v1

    if-nez v1, :cond_6

    .line 30
    new-instance v1, Le/a/r3/b$b;

    const/16 v3, -0x64

    invoke-direct {v1, p1, v3}, Le/a/r3/b$b;-><init>(Ljava/lang/Exception;I)V

    .line 31
    :try_start_2
    invoke-interface {v2}, Lq3/a/w2/d0;->i()Z

    move-result p1

    if-nez p1, :cond_5

    .line 32
    invoke-interface {v2, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lq3/a/w2/q; {:try_start_2 .. :try_end_2} :catch_1

    .line 33
    :catch_1
    :cond_5
    invoke-interface {v2}, Lq3/a/w2/x;->Z1()Lq3/a/w2/d0;

    move-result-object p1

    invoke-static {p1, v4, v5, v4}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_1

    :catch_2
    move-object v1, p1

    .line 34
    :catch_3
    iget p1, v1, Ls1/z/c/a0;->a:I

    if-ltz p1, :cond_6

    .line 35
    iget-object v1, p0, Le/a/r3/h$a;->h:Le/a/r3/h;

    .line 36
    iget-object v1, v1, Le/a/r3/h;->b:Le/m/a/h/a/g/b;

    .line 37
    invoke-interface {v1, p1}, Le/m/a/h/a/g/b;->f(I)Le/m/a/h/a/h/r;

    :cond_6
    :goto_1
    return-object v0
.end method
