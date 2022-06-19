.class public final Le/a/c/g/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/w;


# instance fields
.field public final a:Le/a/c/g/g0/a;

.field public final b:Le/a/c/g/y/q;

.field public final c:Le/a/c/g/g0/c;

.field public final d:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/g/g0/a;Le/a/c/g/y/q;Le/a/c/g/g0/c;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "multiClassMetadataVersionProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesModelDataSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesModelRemoteProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/x;->a:Le/a/c/g/g0/a;

    iput-object p2, p0, Le/a/c/g/x;->b:Le/a/c/g/y/q;

    iput-object p3, p0, Le/a/c/g/x;->c:Le/a/c/g/g0/c;

    iput-object p4, p0, Le/a/c/g/x;->d:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/c/g/x$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/c/g/x$a;

    iget v2, v1, Le/a/c/g/x$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/g/x$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/g/x$a;

    invoke-direct {v1, p0, p1}, Le/a/c/g/x$a;-><init>(Le/a/c/g/x;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/c/g/x$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/c/g/x$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v6, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/c/g/x$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/g/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v3, v1, Le/a/c/g/x$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/g/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/g/x;->d:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->k()Z

    move-result p1

    if-nez p1, :cond_5

    return-object v0

    .line 5
    :cond_5
    iget-object p1, p0, Le/a/c/g/x;->a:Le/a/c/g/g0/a;

    iput-object p0, v1, Le/a/c/g/x$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/c/g/x$a;->e:I

    check-cast p1, Le/a/c/g/g0/b;

    invoke-virtual {p1, v1}, Le/a/c/g/g0/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v3, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    if-le v6, p1, :cond_a

    .line 7
    :cond_7
    iget-object p1, v3, Le/a/c/g/x;->b:Le/a/c/g/y/q;

    iput-object v3, v1, Le/a/c/g/x$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/c/g/x$a;->e:I

    check-cast p1, Le/a/c/g/y/r;

    invoke-virtual {p1, v1}, Le/a/c/g/y/r;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    return-object v2

    .line 8
    :cond_8
    :goto_2
    check-cast p1, Le/a/c/g/a0/f;

    .line 9
    iget-object v3, v3, Le/a/c/g/x;->b:Le/a/c/g/y/q;

    .line 10
    invoke-interface {p1}, Le/a/c/g/a0/f;->getVersion()I

    move-result v4

    const/4 v5, 0x0

    iput-object v5, v1, Le/a/c/g/x$a;->g:Ljava/lang/Object;

    iput v6, v1, Le/a/c/g/x$a;->e:I

    .line 11
    check-cast v3, Le/a/c/g/y/r;

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v6, Le/a/c/g/y/s;

    invoke-direct {v6, v3, p1, v4, v5}, Le/a/c/g/y/s;-><init>(Le/a/c/g/y/r;Le/a/c/g/a0/f;ILs1/w/d;)V

    invoke-virtual {v3, v6, v1}, Le/a/c/g/y/r;->d(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    goto :goto_3

    :cond_9
    move-object p1, v0

    :goto_3
    if-ne p1, v2, :cond_a

    return-object v2

    :cond_a
    :goto_4
    return-object v0
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/w$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/c/g/w$a$a;->a:Le/a/c/g/w$a$a;

    sget-object v1, Le/a/c/g/w$a$b;->a:Le/a/c/g/w$a$b;

    instance-of v2, p1, Le/a/c/g/x$b;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Le/a/c/g/x$b;

    iget v3, v2, Le/a/c/g/x$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/g/x$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/g/x$b;

    invoke-direct {v2, p0, p1}, Le/a/c/g/x$b;-><init>(Le/a/c/g/x;Ls1/w/d;)V

    :goto_0
    iget-object p1, v2, Le/a/c/g/x$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/g/x$b;->e:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/g/x;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    iget-object v4, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/g/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/g/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/g/x;->d:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->k()Z

    move-result p1

    if-nez p1, :cond_6

    return-object v1

    .line 5
    :cond_6
    iput-object p0, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    iput v8, v2, Le/a/c/g/x$b;->e:I

    invoke-virtual {p0, v2}, Le/a/c/g/x;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, p0

    .line 6
    :goto_1
    iget-object p1, v4, Le/a/c/g/x;->a:Le/a/c/g/g0/a;

    iput-object v4, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    iput v7, v2, Le/a/c/g/x$b;->e:I

    check-cast p1, Le/a/c/g/g0/b;

    invoke-virtual {p1, v2}, Le/a/c/g/g0/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_8

    return-object v3

    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 7
    :try_start_2
    iget-object v7, v4, Le/a/c/g/x;->c:Le/a/c/g/g0/c;

    iput-object v4, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    iput v6, v2, Le/a/c/g/x$b;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v7, Le/a/c/g/g0/d;

    :try_start_3
    invoke-virtual {v7, p1, v2}, Le/a/c/g/g0/d;->a(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_9

    return-object v3

    .line 8
    :cond_9
    :goto_3
    check-cast p1, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;

    if-eqz p1, :cond_c

    .line 9
    invoke-static {p1}, Le/a/c/p/a;->P1(Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;)Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;

    move-result-object p1

    .line 10
    iget-object v4, v4, Le/a/c/g/x;->b:Le/a/c/g/y/q;

    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;->getVersion()I

    move-result v6

    iput-object v9, v2, Le/a/c/g/x$b;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/c/g/x$b;->e:I

    check-cast v4, Le/a/c/g/y/r;

    .line 11
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v5, Le/a/c/g/y/s;

    invoke-direct {v5, v4, p1, v6, v9}, Le/a/c/g/y/s;-><init>(Le/a/c/g/y/r;Le/a/c/g/a0/f;ILs1/w/d;)V

    invoke-virtual {v4, v5, v2}, Le/a/c/g/y/r;->d(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_a

    goto :goto_4

    .line 13
    :cond_a
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-ne p1, v3, :cond_b

    return-object v3

    :cond_b
    :goto_5
    move-object v0, v1

    :cond_c
    return-object v0

    :catchall_0
    move-exception p1

    .line 14
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 15
    invoke-virtual {v1, p1, v9}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method
