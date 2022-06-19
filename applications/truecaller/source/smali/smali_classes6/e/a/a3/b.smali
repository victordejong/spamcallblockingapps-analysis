.class public final Le/a/a3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a3/a;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h0/j;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/h0/j;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "filterManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a3/b;->a:Lo3/a;

    iput-object p2, p0, Le/a/a3/b;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/a3/b$d;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/a3/b$d;

    iget v1, v0, Le/a/a3/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a3/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a3/b$d;

    invoke-direct {v0, p0, p4}, Le/a/a3/b$d;-><init>(Le/a/a3/b;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/a3/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a3/b$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/a3/b;->b:Ls1/w/f;

    new-instance v2, Le/a/a3/b$e;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v4 .. v9}, Le/a/a3/b$e;-><init>(Le/a/a3/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    iput v3, v0, Le/a/a3/b$d;->e:I

    invoke-static {p4, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "withContext(asyncContext\u2026 adjustForSettings)\n    }"

    invoke-static {p4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p4
.end method

.method public b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Ljava/lang/Long;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v11, p0

    .line 1
    iget-object v12, v11, Le/a/a3/b;->b:Ls1/w/f;

    new-instance v13, Le/a/a3/b$a;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Le/a/a3/b$a;-><init>(Le/a/a3/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)V

    move-object/from16 v0, p9

    invoke-static {v12, v13, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-object v9, v8, Le/a/a3/b;->b:Ls1/w/f;

    new-instance v10, Le/a/a3/b$f;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Le/a/a3/b$f;-><init>(Le/a/a3/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    move-object/from16 v0, p6

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Ljava/lang/Long;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v10, p0

    .line 1
    iget-object v11, v10, Le/a/a3/b;->b:Ls1/w/f;

    new-instance v12, Le/a/a3/b$b;

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Le/a/a3/b$b;-><init>(Le/a/a3/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ls1/w/d;)V

    move-object/from16 v0, p8

    invoke-static {v11, v12, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Collection<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a3/b;->b:Ls1/w/f;

    new-instance v7, Le/a/a3/b$c;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a3/b$c;-><init>(Le/a/a3/b;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
