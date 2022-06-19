.class public final Le/a/l/p2/s0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/s0;->b(Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/k<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Le/a/l/p2/x;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumRepositoryImpl$fetchStatus$2"
    f = "PremiumRepositoryImpl.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/s0;


# direct methods
.method public constructor <init>(Le/a/l/p2/s0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/s0$a;->f:Le/a/l/p2/s0;

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

    new-instance p1, Le/a/l/p2/s0$a;

    iget-object v0, p0, Le/a/l/p2/s0$a;->f:Le/a/l/p2/s0;

    invoke-direct {p1, v0, p2}, Le/a/l/p2/s0$a;-><init>(Le/a/l/p2/s0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/s0$a;

    iget-object v0, p0, Le/a/l/p2/s0$a;->f:Le/a/l/p2/s0;

    invoke-direct {p1, v0, p2}, Le/a/l/p2/s0$a;-><init>(Le/a/l/p2/s0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/s0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/s0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/l/p2/s0$a;->f:Le/a/l/p2/s0;

    .line 5
    iget-object v2, v2, Le/a/l/p2/s0;->a:Le/a/l/p2/i0;

    .line 6
    iput v3, v0, Le/a/l/p2/s0$a;->e:I

    check-cast v2, Le/a/l/p2/j0;

    invoke-virtual {v2, v0}, Le/a/l/p2/j0;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast v2, Le/a/l/r2/a;

    .line 8
    instance-of v1, v2, Le/a/l/r2/a$c;

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v0, Le/a/l/p2/s0$a;->f:Le/a/l/p2/s0;

    check-cast v2, Le/a/l/r2/a$c;

    .line 10
    iget-object v2, v2, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 11
    check-cast v2, Le/a/l/p2/o1;

    .line 12
    invoke-virtual {v1, v2}, Le/a/l/p2/s0;->f(Le/a/l/p2/o1;)Le/a/l/p2/x;

    move-result-object v1

    .line 13
    iget-object v2, v0, Le/a/l/p2/s0$a;->f:Le/a/l/p2/s0;

    .line 14
    invoke-virtual {v2, v1}, Le/a/l/p2/s0;->h(Le/a/l/p2/x;)V

    .line 15
    new-instance v2, Ls1/k;

    const/4 v3, 0x0

    .line 16
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 17
    invoke-direct {v2, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_3
    instance-of v1, v2, Le/a/l/r2/a$a;

    if-eqz v1, :cond_4

    new-instance v2, Ls1/k;

    const/4 v1, -0x2

    .line 19
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    new-instance v1, Le/a/l/p2/x;

    move-object v4, v1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1fff

    invoke-direct/range {v4 .. v21}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    new-instance v2, Ls1/k;

    const/4 v1, -0x1

    .line 22
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 23
    new-instance v1, Le/a/l/p2/x;

    move-object v4, v1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1fff

    invoke-direct/range {v4 .. v21}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v2
.end method
