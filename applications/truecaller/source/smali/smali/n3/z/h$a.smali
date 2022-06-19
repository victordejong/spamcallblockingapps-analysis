.class public final Ln3/z/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h;-><init>(Lq3/a/x2/f;Lq3/a/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/z/y2<",
        "Ln3/z/c1<",
        "TT;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1"
    f = "CachedPageEventFlow.kt"
    l = {
        0x53,
        0x75
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/h;


# direct methods
.method public constructor <init>(Ln3/z/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h$a;->g:Ln3/z/h;

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

    new-instance v0, Ln3/z/h$a;

    iget-object v1, p0, Ln3/z/h$a;->g:Ln3/z/h;

    invoke-direct {v0, v1, p2}, Ln3/z/h$a;-><init>(Ln3/z/h;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/h$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/h$a;

    iget-object v1, p0, Ln3/z/h$a;->g:Ln3/z/h;

    invoke-direct {v0, v1, p2}, Ln3/z/h$a;-><init>(Ln3/z/h;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/h$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v7, p0

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v7, Ln3/z/h$a;->f:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v10, :cond_1

    if-ne v0, v9, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v7, Ln3/z/h$a;->e:Ljava/lang/Object;

    check-cast v0, Ln3/z/y2;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v7, Ln3/z/h$a;->e:Ljava/lang/Object;

    check-cast v0, Ln3/z/y2;

    .line 4
    iget-object v1, v7, Ln3/z/h$a;->g:Ln3/z/h;

    .line 5
    iget-object v1, v1, Ln3/z/h;->a:Ln3/z/z;

    .line 6
    iput-object v0, v7, Ln3/z/h$a;->e:Ljava/lang/Object;

    iput v10, v7, Ln3/z/h$a;->f:I

    invoke-virtual {v1, v7}, Ln3/z/z;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_3

    return-object v8

    :cond_3
    :goto_0
    move-object v6, v0

    .line 7
    move-object v3, v1

    check-cast v3, Ln3/z/e3;

    .line 8
    new-instance v5, Ls1/z/c/a0;

    invoke-direct {v5}, Ls1/z/c/a0;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, v5, Ls1/z/c/a0;->a:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 9
    new-instance v14, Ln3/z/h$a$b;

    const/4 v4, 0x0

    invoke-direct {v14, v6, v3, v5, v4}, Ln3/z/h$a$b;-><init>(Ln3/z/y2;Ln3/z/e3;Ls1/z/c/a0;Ls1/w/d;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v6

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v19

    .line 10
    new-instance v14, Ln3/z/h$a$a;

    const/4 v11, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v15, v4

    move-object/from16 v4, v19

    move-object v12, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Ln3/z/h$a$a;-><init>(Ln3/z/h$a;Ln3/z/y2;Ln3/z/e3;Lq3/a/p1;Ls1/z/c/a0;Ls1/w/d;)V

    const/4 v0, 0x3

    move-object v11, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object v1, v15

    move v15, v0

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    new-array v2, v9, [Lq3/a/p1;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object v19, v2, v10

    .line 11
    iput-object v1, v7, Ln3/z/h$a;->e:Ljava/lang/Object;

    iput v9, v7, Ln3/z/h$a;->f:I

    invoke-static {v2, v7}, Ls1/a/a/a/v0/f/d;->u2([Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    return-object v8

    .line 12
    :cond_4
    :goto_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
