.class public final Le/a/c/i/m/d$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/m/d;->f(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
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
        "Le/a/c/r/h/f;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.sync.InsightsSyncManagerImpl$processChunkInTransaction$2$1"
    f = "InsightsSyncManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ls1/o;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Le/a/c/i/m/d;

.field public final synthetic o:Ls1/z/c/c0;

.field public final synthetic p:Ls1/z/c/a0;

.field public final synthetic q:Ljava/util/List;

.field public final synthetic r:Le/a/c/c/e/a;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ls1/o;Ljava/lang/String;JJIILjava/lang/String;Ls1/w/d;Le/a/c/i/m/d;Ls1/z/c/c0;Ls1/z/c/a0;Ljava/util/List;Le/a/c/c/e/a;)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    iput-wide v1, v0, Le/a/c/i/m/d$d;->e:J

    move-object v1, p3

    iput-object v1, v0, Le/a/c/i/m/d$d;->f:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Le/a/c/i/m/d$d;->g:Ls1/o;

    move-object v1, p5

    iput-object v1, v0, Le/a/c/i/m/d$d;->h:Ljava/lang/String;

    move-wide v1, p6

    iput-wide v1, v0, Le/a/c/i/m/d$d;->i:J

    move-wide v1, p8

    iput-wide v1, v0, Le/a/c/i/m/d$d;->j:J

    move v1, p10

    iput v1, v0, Le/a/c/i/m/d$d;->k:I

    move v1, p11

    iput v1, v0, Le/a/c/i/m/d$d;->l:I

    move-object v1, p12

    iput-object v1, v0, Le/a/c/i/m/d$d;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Le/a/c/i/m/d$d;->n:Le/a/c/i/m/d;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/c/i/m/d$d;->o:Ls1/z/c/c0;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/c/i/m/d$d;->p:Ls1/z/c/a0;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/c/i/m/d$d;->q:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Le/a/c/i/m/d$d;->r:Le/a/c/c/e/a;

    const/4 v1, 0x2

    move-object/from16 v2, p13

    invoke-direct {p0, v1, v2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    const-string v1, "completion"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Le/a/c/i/m/d$d;

    move-object/from16 v1, v20

    iget-wide v2, v0, Le/a/c/i/m/d$d;->e:J

    iget-object v4, v0, Le/a/c/i/m/d$d;->f:Ljava/lang/String;

    iget-object v5, v0, Le/a/c/i/m/d$d;->g:Ls1/o;

    iget-object v6, v0, Le/a/c/i/m/d$d;->h:Ljava/lang/String;

    iget-wide v7, v0, Le/a/c/i/m/d$d;->i:J

    iget-wide v9, v0, Le/a/c/i/m/d$d;->j:J

    iget v11, v0, Le/a/c/i/m/d$d;->k:I

    iget v12, v0, Le/a/c/i/m/d$d;->l:I

    iget-object v13, v0, Le/a/c/i/m/d$d;->m:Ljava/lang/String;

    iget-object v15, v0, Le/a/c/i/m/d$d;->n:Le/a/c/i/m/d;

    move-object/from16 p1, v1

    iget-object v1, v0, Le/a/c/i/m/d$d;->o:Ls1/z/c/c0;

    move-object/from16 v16, v1

    iget-object v1, v0, Le/a/c/i/m/d$d;->p:Ls1/z/c/a0;

    move-object/from16 v17, v1

    iget-object v1, v0, Le/a/c/i/m/d$d;->q:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Le/a/c/i/m/d$d;->r:Le/a/c/c/e/a;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Le/a/c/i/m/d$d;-><init>(JLjava/lang/String;Ls1/o;Ljava/lang/String;JJIILjava/lang/String;Ls1/w/d;Le/a/c/i/m/d;Ls1/z/c/c0;Ls1/z/c/a0;Ljava/util/List;Le/a/c/c/e/a;)V

    return-object v20
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/i/m/d$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/i/m/d$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/m/d$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object v1, v0, Le/a/c/i/m/d$d;->n:Le/a/c/i/m/d;

    .line 3
    iget-object v1, v1, Le/a/c/i/m/d;->d:Le/a/c/i/i/a;

    .line 4
    iget-object v2, v0, Le/a/c/i/m/d$d;->r:Le/a/c/c/e/a;

    .line 5
    new-instance v15, Le/a/c/h/m/c;

    .line 6
    iget-wide v4, v0, Le/a/c/i/m/d$d;->e:J

    iget-object v6, v0, Le/a/c/i/m/d$d;->f:Ljava/lang/String;

    iget-object v3, v0, Le/a/c/i/m/d$d;->g:Ls1/o;

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, v3, Ls1/o;->a:Ljava/lang/Object;

    .line 8
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Le/a/c/i/m/d$d;->h:Ljava/lang/String;

    :goto_0
    move-object v7, v3

    .line 9
    new-instance v8, Ljava/util/Date;

    iget-wide v9, v0, Le/a/c/i/m/d$d;->i:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 10
    iget-wide v9, v0, Le/a/c/i/m/d$d;->j:J

    .line 11
    iget v11, v0, Le/a/c/i/m/d$d;->k:I

    const/4 v12, 0x0

    .line 12
    iget v13, v0, Le/a/c/i/m/d$d;->l:I

    const/4 v14, 0x0

    .line 13
    iget-object v3, v0, Le/a/c/i/m/d$d;->g:Ls1/o;

    if-eqz v3, :cond_1

    .line 14
    iget-object v3, v3, Ls1/o;->a:Ljava/lang/Object;

    .line 15
    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move/from16 v16, v3

    .line 16
    iget-object v3, v0, Le/a/c/i/m/d$d;->m:Ljava/lang/String;

    const/16 v17, 0x100

    move-object/from16 v18, v3

    move-object v3, v15

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    .line 17
    invoke-direct/range {v3 .. v17}, Le/a/c/h/m/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;JILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v3, v19

    .line 18
    invoke-interface {v1, v2, v3}, Le/a/c/i/i/a;->p(Le/a/c/c/e/a;Le/a/c/h/m/c;)Le/a/c/r/h/f;

    move-result-object v1

    return-object v1
.end method
