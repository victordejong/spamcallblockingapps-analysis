.class public final Le/a/c/i/d/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/d/b;->f()Z
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
    c = "com.truecaller.insights.core.enrichment.InsightsEnrichmentManagerImpl$areThereNewEntriesToEnrich$1"
    f = "InsightsEnrichmentManager.kt"
    l = {
        0xd9,
        0xd9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public final synthetic h:Le/a/c/i/d/b;


# direct methods
.method public constructor <init>(Le/a/c/i/d/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/d/b$b;->h:Le/a/c/i/d/b;

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

    new-instance v0, Le/a/c/i/d/b$b;

    iget-object v1, p0, Le/a/c/i/d/b$b;->h:Le/a/c/i/d/b;

    invoke-direct {v0, v1, p2}, Le/a/c/i/d/b$b;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/i/d/b$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/i/d/b$b;

    iget-object v1, p0, Le/a/c/i/d/b$b;->h:Le/a/c/i/d/b;

    invoke-direct {v0, v1, p2}, Le/a/c/i/d/b$b;-><init>(Le/a/c/i/d/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/i/d/b$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/i/d/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/d/b$b;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget v1, v0, Le/a/c/i/d/b$b;->f:I

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Le/a/c/i/d/b$b;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/n0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/c/i/d/b$b;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4
    new-instance v9, Le/a/c/i/d/b$b$b;

    invoke-direct {v9, v0, v4}, Le/a/c/i/d/b$b$b;-><init>(Le/a/c/i/d/b$b;Ls1/w/d;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v16

    .line 5
    new-instance v9, Le/a/c/i/d/b$b$a;

    invoke-direct {v9, v0, v4}, Le/a/c/i/d/b$b$a;-><init>(Le/a/c/i/d/b$b;Ls1/w/d;)V

    move-object v7, v12

    move-object v8, v13

    move v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v2

    .line 6
    iput-object v2, v0, Le/a/c/i/d/b$b;->e:Ljava/lang/Object;

    iput v5, v0, Le/a/c/i/d/b$b;->g:I

    move-object/from16 v6, v16

    check-cast v6, Lq3/a/o0;

    .line 7
    invoke-virtual {v6, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_0
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput-object v4, v0, Le/a/c/i/d/b$b;->e:Ljava/lang/Object;

    iput v6, v0, Le/a/c/i/d/b$b;->f:I

    iput v3, v0, Le/a/c/i/d/b$b;->g:I

    invoke-interface {v2, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move v1, v6

    :goto_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 9
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method
