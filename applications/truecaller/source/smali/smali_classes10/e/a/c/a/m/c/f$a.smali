.class public final Le/a/c/a/m/c/f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/f;->OA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.truecaller.insights.ui.qa.view.InsightsClassifierSeedFetchFragment$fetchSeedData$1"
    f = "InsightsClassifierSeedFetchFragment.kt"
    l = {
        0x2f,
        0x36,
        0x38,
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/c/a/m/c/f;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/f$a;->h:Le/a/c/a/m/c/f;

    iput-object p2, p0, Le/a/c/a/m/c/f$a;->i:Ljava/lang/String;

    iput-object p3, p0, Le/a/c/a/m/c/f$a;->j:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/a/m/c/f$a;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/c/a/m/c/f$a;

    iget-object v1, p0, Le/a/c/a/m/c/f$a;->h:Le/a/c/a/m/c/f;

    iget-object v2, p0, Le/a/c/a/m/c/f$a;->i:Ljava/lang/String;

    iget-object v3, p0, Le/a/c/a/m/c/f$a;->j:Ljava/lang/String;

    iget-object v4, p0, Le/a/c/a/m/c/f$a;->k:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/a/m/c/f$a;-><init>(Le/a/c/a/m/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/m/c/f$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/m/c/f$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/c/f$a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_2
    iget-object v1, p0, Le/a/c/a/m/c/f$a;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v5, p0, Le/a/c/a/m/c/f$a;->e:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/m/c/f$a;->h:Le/a/c/a/m/c/f;

    invoke-virtual {p1}, Le/a/c/a/m/c/f;->UA()Ls1/w/f;

    move-result-object p1

    new-instance v1, Le/a/c/a/m/c/f$a$a;

    invoke-direct {v1, p0, v2}, Le/a/c/a/m/c/f$a$a;-><init>(Le/a/c/a/m/c/f$a;Ls1/w/d;)V

    iput v6, p0, Le/a/c/a/m/c/f$a;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 5
    :cond_5
    :goto_0
    :try_start_2
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    iget-object p1, p0, Le/a/c/a/m/c/f$a;->h:Le/a/c/a/m/c/f;

    .line 6
    iget-object p1, p1, Le/a/c/a/m/c/f;->f:Le/a/c/s/a/c;

    if-eqz p1, :cond_b

    .line 7
    iget-object v7, p0, Le/a/c/a/m/c/f$a;->i:Ljava/lang/String;

    .line 8
    iget-object v8, p0, Le/a/c/a/m/c/f$a;->j:Ljava/lang/String;

    .line 9
    iget-object v9, p0, Le/a/c/a/m/c/f$a;->k:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-static {v9}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_1

    :cond_6
    move v11, v10

    goto :goto_2

    :cond_7
    :goto_1
    move v11, v6

    :goto_2
    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    move v6, v10

    .line 10
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move-object v9, v2

    :goto_4
    iput-object v1, p0, Le/a/c/a/m/c/f$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/c/a/m/c/f$a;->f:Ljava/lang/Object;

    iput v5, p0, Le/a/c/a/m/c/f$a;->g:I

    .line 12
    invoke-interface {p1, v7, v8, v9, p0}, Le/a/c/s/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v5, v1

    .line 13
    :goto_5
    check-cast p1, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Le/a/c/a/m/c/f$a;->h:Le/a/c/a/m/c/f;

    invoke-virtual {p1}, Le/a/c/a/m/c/f;->UA()Ls1/w/f;

    move-result-object p1

    new-instance v1, Le/a/c/a/m/c/f$a$b;

    invoke-direct {v1, p0, v5, v2}, Le/a/c/a/m/c/f$a$b;-><init>(Le/a/c/a/m/c/f$a;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v2, p0, Le/a/c/a/m/c/f$a;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/c/a/m/c/f$a;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/c/a/m/c/f$a;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_b
    const-string p1, "classifierRestAdapter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_0
    move-exception p1

    .line 16
    iget-object v1, p0, Le/a/c/a/m/c/f$a;->h:Le/a/c/a/m/c/f;

    invoke-virtual {v1}, Le/a/c/a/m/c/f;->UA()Ls1/w/f;

    move-result-object v1

    new-instance v4, Le/a/c/a/m/c/f$a$c;

    invoke-direct {v4, p0, p1, v2}, Le/a/c/a/m/c/f$a$c;-><init>(Le/a/c/a/m/c/f$a;Ljava/lang/Throwable;Ls1/w/d;)V

    iput-object v2, p0, Le/a/c/a/m/c/f$a;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/c/a/m/c/f$a;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/c/a/m/c/f$a;->g:I

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 17
    :cond_c
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
