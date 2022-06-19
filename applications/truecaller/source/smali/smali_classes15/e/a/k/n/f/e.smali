.class public final Le/a/k/n/f/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$addVideo$2"
    f = "IncomingVideoRepository.kt"
    l = {
        0x1c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/n/f/f;

.field public final synthetic g:Le/a/k/l/b;


# direct methods
.method public constructor <init>(Le/a/k/n/f/f;Le/a/k/l/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/f/e;->f:Le/a/k/n/f/f;

    iput-object p2, p0, Le/a/k/n/f/e;->g:Le/a/k/l/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/n/f/e;

    iget-object v1, p0, Le/a/k/n/f/e;->f:Le/a/k/n/f/f;

    iget-object v2, p0, Le/a/k/n/f/e;->g:Le/a/k/l/b;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/f/e;-><init>(Le/a/k/n/f/f;Le/a/k/l/b;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/n/f/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/n/f/e;

    iget-object v1, p0, Le/a/k/n/f/e;->f:Le/a/k/n/f/f;

    iget-object v2, p0, Le/a/k/n/f/e;->g:Le/a/k/l/b;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/f/e;-><init>(Le/a/k/n/f/f;Le/a/k/l/b;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/f/e;->e:I

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
    iget-object v2, v0, Le/a/k/n/f/e;->f:Le/a/k/n/f/f;

    .line 5
    iget-object v2, v2, Le/a/k/n/f/f;->a:Lo3/a;

    .line 6
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/k/n/f/b;

    iget-object v4, v0, Le/a/k/n/f/e;->f:Le/a/k/n/f/f;

    iget-object v5, v0, Le/a/k/n/f/e;->g:Le/a/k/l/b;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v4, Le/a/k/n/f/a;

    .line 9
    iget-object v7, v5, Le/a/k/l/b;->b:Ljava/lang/String;

    .line 10
    iget-object v8, v5, Le/a/k/l/b;->a:Ljava/lang/String;

    .line 11
    iget-wide v11, v5, Le/a/k/l/b;->c:J

    .line 12
    iget-object v10, v5, Le/a/k/l/b;->d:Ljava/lang/String;

    .line 13
    iget-object v5, v5, Le/a/k/l/b;->e:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 14
    iget-object v9, v5, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    .line 15
    iget-wide v13, v5, Lcom/truecaller/videocallerid/data/VideoDetails;->b:J

    move-object/from16 v18, v1

    move-object/from16 p1, v2

    .line 16
    iget-wide v1, v5, Lcom/truecaller/videocallerid/data/VideoDetails;->c:J

    .line 17
    iget-boolean v5, v5, Lcom/truecaller/videocallerid/data/VideoDetails;->d:Z

    move-object v6, v4

    move-wide v15, v1

    move/from16 v17, v5

    .line 18
    invoke-direct/range {v6 .. v17}, Le/a/k/n/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZ)V

    .line 19
    iput v3, v0, Le/a/k/n/f/e;->e:I

    move-object/from16 v2, p1

    invoke-interface {v2, v4, v0}, Le/a/k/n/f/b;->d(Le/a/k/n/f/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_2

    return-object v2

    .line 20
    :cond_2
    :goto_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
