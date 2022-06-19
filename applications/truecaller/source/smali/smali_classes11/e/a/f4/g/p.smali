.class public Le/a/f4/g/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/i/b$a;
.implements Le/a/f4/i/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f4/g/p$b;,
        Le/a/f4/g/p$a;,
        Le/a/f4/g/p$d;,
        Le/a/f4/g/p$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/f4/i/b$a<",
        "Le/a/f4/g/t;",
        ">;",
        "Le/a/f4/i/f;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/q/z;

.field public final c:Le/a/b0/q/w;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/UUID;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Le/a/f4/g/p$b;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/Double;

.field public u:Ljava/lang/Double;

.field public v:I

.field public w:Ljava/util/concurrent/TimeUnit;

.field public final x:Le/a/f4/g/u;

.field public final y:Le/a/k3/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/f4/g/p;->f:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/f4/g/p;->g:Z

    .line 4
    iput-boolean v0, p0, Le/a/f4/g/p;->h:Z

    .line 5
    iput-boolean v0, p0, Le/a/f4/g/p;->i:Z

    .line 6
    iput-boolean v0, p0, Le/a/f4/g/p;->j:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Le/a/f4/g/p;->k:Z

    .line 8
    iput-boolean v0, p0, Le/a/f4/g/p;->l:Z

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Le/a/f4/g/p;->m:I

    const/16 v0, 0x3e7

    .line 10
    iput v0, p0, Le/a/f4/g/p;->o:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Le/a/f4/g/p;->a:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Le/a/f4/g/p;->d:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Le/a/f4/g/p;->e:Ljava/util/UUID;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/truecaller/TrueApp;

    invoke-virtual {p2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p2

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 16
    invoke-interface {p2}, Le/a/b0/c;->m()Le/a/b0/q/z;

    move-result-object p3

    iput-object p3, p0, Le/a/f4/g/p;->b:Le/a/b0/q/z;

    .line 17
    invoke-interface {p2}, Le/a/b0/c;->j0()Le/a/b0/q/w;

    move-result-object p3

    iput-object p3, p0, Le/a/f4/g/p;->c:Le/a/b0/q/w;

    .line 18
    invoke-interface {p2}, Le/a/b0/c;->b()Le/a/u3/g;

    .line 19
    invoke-interface {p1}, Le/a/j2;->M0()Le/a/f4/g/u;

    move-result-object p2

    iput-object p2, p0, Le/a/f4/g/p;->x:Le/a/f4/g/u;

    .line 20
    invoke-interface {p1}, Le/a/j2;->s5()Le/a/k3/e;

    move-result-object p1

    iput-object p1, p0, Le/a/f4/g/p;->y:Le/a/k3/e;

    return-void
.end method


# virtual methods
.method public a()Le/a/f4/g/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/f4/g/p;->e()Le/a/b0/b/e;

    move-result-object v0

    instance-of v0, v0, Le/a/b0/b/e$a;

    const/16 v1, 0x1ad

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/f4/g/p;->x:Le/a/f4/g/u;

    invoke-interface {v0}, Le/a/f4/g/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/f4/g/p;->x:Le/a/f4/g/u;

    invoke-virtual {p0}, Le/a/f4/g/p;->b()Lx3/b;

    move-result-object v1

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    new-instance v2, Le/a/f4/g/a;

    invoke-direct {v2, p0}, Le/a/f4/g/a;-><init>(Le/a/f4/g/p;)V

    invoke-interface {v0, v1, v2}, Le/a/f4/g/u;->f(Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Le/a/f4/i/e$a;

    invoke-direct {v0, v1}, Le/a/f4/i/e$a;-><init>(I)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/f4/g/p;->x:Le/a/f4/g/u;

    invoke-interface {v0}, Le/a/f4/g/u;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/f4/g/p;->x:Le/a/f4/g/u;

    invoke-virtual {p0}, Le/a/f4/g/p;->b()Lx3/b;

    move-result-object v1

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    new-instance v2, Le/a/f4/g/a;

    invoke-direct {v2, p0}, Le/a/f4/g/a;-><init>(Le/a/f4/g/p;)V

    invoke-interface {v0, v1, v2}, Le/a/f4/g/u;->e(Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Le/a/f4/i/e$a;

    invoke-direct {v0, v1}, Le/a/f4/i/e$a;-><init>(I)V

    throw v0
.end method

.method public b()Lx3/b;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/f4/g/p;->o:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "You must specify a search type"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v4, "You must specify a search query"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le/a/f4/g/p;->t:Ljava/lang/Double;

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/a/f4/g/p;->u:Ljava/lang/Double;

    if-nez v1, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    invoke-static {v1}, Le/a/e/a2;->y(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v0, Le/a/f4/g/p;->t:Ljava/lang/Double;

    .line 6
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Le/a/f4/g/p;->u:Ljava/lang/Double;

    .line 7
    :cond_2
    iget-object v1, v0, Le/a/f4/g/p;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/i/w/e;->a(Landroid/content/Context;)Le/a/i/w/d;

    move-result-object v1

    .line 8
    iget v4, v0, Le/a/f4/g/p;->o:I

    const/16 v5, 0x14

    const/4 v6, 0x0

    if-eq v4, v2, :cond_6

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6

    const/4 v7, 0x4

    if-eq v4, v7, :cond_5

    const/16 v7, 0xa

    if-eq v4, v7, :cond_5

    const/16 v7, 0xf

    if-eq v4, v7, :cond_5

    if-eq v4, v5, :cond_3

    const/4 v7, 0x6

    if-eq v4, v7, :cond_6

    const/4 v7, 0x7

    if-eq v4, v7, :cond_6

    goto :goto_1

    .line 9
    :cond_3
    iget-object v4, v0, Le/a/f4/g/p;->d:Ljava/lang/String;

    const-string v7, "detailView"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-interface {v1, v2}, Le/a/i/w/d;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v19, v6

    goto :goto_3

    .line 11
    :cond_5
    invoke-interface {v1, v2}, Le/a/i/w/d;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 12
    :cond_6
    invoke-interface {v1, v3}, Le/a/i/w/d;->e(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v19, v4

    .line 13
    :goto_3
    invoke-virtual/range {p0 .. p0}, Le/a/f4/g/p;->e()Le/a/b0/b/e;

    move-result-object v4

    if-eqz v19, :cond_7

    .line 14
    instance-of v7, v4, Le/a/b0/b/e$a;

    if-eqz v7, :cond_7

    .line 15
    invoke-interface {v1}, Le/a/i/w/d;->a()Ljava/lang/String;

    move-result-object v6

    :cond_7
    move-object/from16 v20, v6

    .line 16
    iget v1, v0, Le/a/f4/g/p;->v:I

    iget-object v6, v0, Le/a/f4/g/p;->w:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v6}, Le/a/w4/l;->b(ILjava/util/concurrent/TimeUnit;)Le/a/w4/m;

    move-result-object v7

    iget-object v8, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    iget-object v10, v0, Le/a/f4/g/p;->q:Ljava/lang/String;

    iget v1, v0, Le/a/f4/g/p;->o:I

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Le/a/f4/g/p;->r:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Le/a/f4/g/p;->t:Ljava/lang/Double;

    iget-object v1, v0, Le/a/f4/g/p;->u:Ljava/lang/Double;

    iget-object v6, v0, Le/a/f4/g/p;->s:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v9, v4

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    invoke-interface/range {v7 .. v20}, Le/a/w4/m;->c(Ljava/lang/String;Le/a/b0/b/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v8

    .line 18
    iget-boolean v1, v0, Le/a/f4/g/p;->i:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Le/a/f4/g/p;->s:Ljava/lang/String;

    if-nez v1, :cond_8

    move v10, v2

    goto :goto_4

    :cond_8
    move v10, v3

    :goto_4
    if-eqz v10, :cond_9

    .line 19
    iget-boolean v1, v0, Le/a/f4/g/p;->j:Z

    if-eqz v1, :cond_9

    move v11, v2

    goto :goto_5

    :cond_9
    move v11, v3

    .line 20
    :goto_5
    iget-object v1, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-static {v1}, Le/a/p5/g0;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Le/a/f4/g/p;->o:I

    if-ne v5, v1, :cond_a

    goto :goto_6

    :cond_a
    move v1, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v1, v2

    .line 21
    :goto_7
    iget-boolean v5, v0, Le/a/f4/g/p;->g:Z

    if-eqz v5, :cond_c

    iget-object v5, v0, Le/a/f4/g/p;->s:Ljava/lang/String;

    if-nez v5, :cond_c

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_8

    :cond_c
    move v1, v3

    .line 22
    :goto_8
    iget-object v5, v0, Le/a/f4/g/p;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Le/a/w1;

    invoke-interface {v5}, Le/a/w1;->s()Le/a/j2;

    move-result-object v5

    .line 23
    new-instance v6, Le/a/f4/g/o;

    iget-object v9, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    iget v12, v0, Le/a/f4/g/p;->o:I

    iget-object v13, v0, Le/a/f4/g/p;->e:Ljava/util/UUID;

    .line 24
    invoke-interface {v5}, Le/a/j2;->q3()Le/m/f/a/j;

    move-result-object v15

    move-object v7, v6

    move-object v14, v4

    invoke-direct/range {v7 .. v15}, Le/a/f4/g/o;-><init>(Lx3/b;Ljava/lang/String;ZZILjava/util/UUID;Le/a/b0/b/e;Le/m/f/a/j;)V

    if-eqz v1, :cond_d

    .line 25
    new-instance v7, Le/a/f4/g/k;

    iget-object v8, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Le/a/f4/g/k;-><init>(Lx3/b;Ljava/lang/String;)V

    move-object v6, v7

    .line 26
    :cond_d
    iget-boolean v7, v0, Le/a/f4/g/p;->h:Z

    if-eqz v7, :cond_e

    .line 27
    new-instance v7, Le/a/f4/g/c;

    iget-object v8, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Le/a/f4/g/c;-><init>(Lx3/b;Ljava/lang/String;)V

    move-object v6, v7

    .line 28
    :cond_e
    iget-boolean v7, v0, Le/a/f4/g/p;->k:Z

    if-eqz v7, :cond_f

    .line 29
    new-instance v7, Le/a/f4/g/m;

    invoke-interface {v5}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v8

    iget v9, v0, Le/a/f4/g/p;->m:I

    iget-object v10, v0, Le/a/f4/g/p;->y:Le/a/k3/e;

    invoke-direct {v7, v6, v8, v9, v10}, Le/a/f4/g/m;-><init>(Lx3/b;Le/a/r2/f;ILe/a/k3/e;)V

    move-object v12, v7

    goto :goto_9

    :cond_f
    move-object v12, v6

    .line 30
    :goto_9
    iget-boolean v6, v0, Le/a/f4/g/p;->l:Z

    if-eqz v6, :cond_11

    .line 31
    new-instance v6, Le/a/f4/g/d;

    new-instance v13, Le/a/k3/j/b;

    iget-object v7, v0, Le/a/f4/g/p;->a:Landroid/content/Context;

    invoke-direct {v13, v7}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v14, v1, 0x1

    invoke-interface {v5}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v15

    invoke-interface {v5}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v16

    iget-object v1, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    iget v7, v0, Le/a/f4/g/p;->o:I

    iget-object v8, v0, Le/a/f4/g/p;->d:Ljava/lang/String;

    iget-object v9, v0, Le/a/f4/g/p;->e:Ljava/util/UUID;

    iget-object v10, v0, Le/a/f4/g/p;->f:Ljava/util/List;

    .line 32
    invoke-interface {v5}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v22

    invoke-interface {v5}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v23

    .line 33
    invoke-interface {v5}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v24

    sget-object v11, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    if-eq v4, v11, :cond_10

    move/from16 v25, v2

    goto :goto_a

    :cond_10
    move/from16 v25, v3

    :goto_a
    invoke-interface {v5}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v26

    move-object v11, v6

    move-object/from16 v17, v1

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v11 .. v26}, Le/a/f4/g/d;-><init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/lang/String;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V

    move-object v12, v6

    :cond_11
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Constructed search call(s) for "

    .line 34
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    return-object v12
.end method

.method public c(Ljava/lang/String;)Le/a/f4/g/p;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/f4/g/p;->q:Ljava/lang/String;

    return-object p0
.end method

.method public d()Le/a/f4/g/p;
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/f4/g/p;->q:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Le/a/b0/b/e;
    .locals 3

    .line 1
    sget-object v0, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    .line 2
    iget-object v1, p0, Le/a/f4/g/p;->b:Le/a/b0/q/z;

    iget-object v2, p0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-interface {v1, v2}, Le/a/b0/q/z;->f(Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/f4/g/p;->c:Le/a/b0/q/w;

    invoke-interface {v0, v1}, Le/a/b0/q/w;->b(Le/m/f/a/o;)Le/a/b0/b/e;

    move-result-object v0

    :cond_0
    const-string v1, "Target domain for "

    .line 4
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/f4/g/p;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public f(Le/a/j4/a/d;ZZLe/a/f4/g/p$c;)Landroid/os/AsyncTask;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j4/a/d;",
            "ZZ",
            "Le/a/f4/g/p$c;",
            ")",
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation

    move-object v11, p0

    .line 1
    new-instance v12, Le/a/f4/g/q;

    iget-object v1, v11, Le/a/f4/g/p;->a:Landroid/content/Context;

    iget-object v6, v11, Le/a/f4/g/p;->p:Ljava/lang/String;

    iget-object v7, v11, Le/a/f4/g/p;->q:Ljava/lang/String;

    iget-object v9, v11, Le/a/f4/g/p;->n:Le/a/f4/g/p$b;

    move-object v0, v12

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object v5, p0

    move-object/from16 v8, p4

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Le/a/f4/g/q;-><init>(Landroid/content/Context;Le/a/j4/a/d;ZZLe/a/f4/i/b$a;Ljava/lang/String;Ljava/lang/String;Le/a/f4/g/p$c;Le/a/f4/g/p$b;Le/a/f4/i/f;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 2
    sget-object v1, Le/a/j4/a/b;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v12, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v12
.end method
