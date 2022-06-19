.class public final Le/a/c/y/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/y/b;->a(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.smartcards.AlreadyPaidUseCase$execute$2"
    f = "ActionUsecaseRevamp.kt"
    l = {
        0x7c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/y/b;


# direct methods
.method public constructor <init>(Le/a/c/y/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/y/b$a;->f:Le/a/c/y/b;

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

    new-instance p1, Le/a/c/y/b$a;

    iget-object v0, p0, Le/a/c/y/b$a;->f:Le/a/c/y/b;

    invoke-direct {p1, v0, p2}, Le/a/c/y/b$a;-><init>(Le/a/c/y/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/y/b$a;

    iget-object v0, p0, Le/a/c/y/b$a;->f:Le/a/c/y/b;

    invoke-direct {p1, v0, p2}, Le/a/c/y/b$a;-><init>(Le/a/c/y/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/y/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/y/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object v2, v0, Le/a/c/y/b$a;->f:Le/a/c/y/b;

    .line 5
    iget-object v4, v2, Le/a/c/y/a;->b:Le/a/c/a0/e;

    .line 6
    new-instance v17, Le/a/c/r/j/b;

    const-wide/16 v6, 0x0

    .line 7
    iget-wide v8, v2, Le/a/c/y/b;->h:J

    .line 8
    sget-object v14, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 9
    iget v11, v2, Le/a/c/y/b;->i:I

    .line 10
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    .line 11
    invoke-virtual {v2, v3}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v2

    const-string v5, "DateTime.now().plusDays(EXPIRE_AFTER_DAYS)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, v4

    .line 12
    iget-wide v3, v2, Lw3/b/a/e0/e;->a:J

    .line 13
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x31

    const-string v10, "Bill"

    move-object/from16 v5, v17

    .line 14
    invoke-direct/range {v5 .. v16}, Le/a/c/r/j/b;-><init>(JJLjava/lang/String;ILjava/util/Date;Ljava/util/Date;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;I)V

    const/4 v2, 0x1

    iput v2, v0, Le/a/c/y/b$a;->e:I

    .line 15
    move-object/from16 v4, p1

    check-cast v4, Le/a/c/a0/f;

    .line 16
    iget-object v2, v4, Le/a/c/a0/f;->a:Le/a/c/c/d/g;

    invoke-static/range {v17 .. v17}, Le/a/c/p/a;->N2(Le/a/c/r/j/b;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Le/a/c/c/d/g;->g(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 17
    :cond_2
    :goto_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
