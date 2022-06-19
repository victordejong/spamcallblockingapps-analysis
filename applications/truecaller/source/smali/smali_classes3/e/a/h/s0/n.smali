.class public final Le/a/h/s0/n;
.super Le/a/u2/a/d;
.source "SourceFile"

# interfaces
.implements Le/a/h/s0/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/d<",
        "Le/a/h/s0/l;",
        "Le/a/h/s0/m;",
        ">;",
        "Le/a/h/s0/k;"
    }
.end annotation


# instance fields
.field public c:Lcom/truecaller/data/entity/Contact;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Le/a/h/s0/b;

.field public final o:Le/a/h/b0;

.field public final p:Le/a/e4/p;

.field public final q:Le/a/l0/c;

.field public final r:Le/a/p5/c0;

.field public final s:Le/a/k3/j/j;

.field public final t:Le/a/h/d/d;

.field public final u:Ls1/w/f;

.field public final v:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/h/b0;Le/a/e4/p;Le/a/l0/c;Le/a/p5/c0;Le/a/k3/j/j;Le/a/h/d/d;Ls1/w/f;Ls1/w/f;)V
    .locals 10
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .param p8    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    const-string v9, "simSelectionHelper"

    invoke-static {p1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "multiSimManager"

    invoke-static {p2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "callHistoryManager"

    invoke-static {p3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "resourceProvider"

    invoke-static {p4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "rawContactDao"

    invoke-static {p5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "numberForCallHelper"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "asyncContext"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "uiContext"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/d;-><init>()V

    iput-object v1, v0, Le/a/h/s0/n;->o:Le/a/h/b0;

    iput-object v2, v0, Le/a/h/s0/n;->p:Le/a/e4/p;

    iput-object v3, v0, Le/a/h/s0/n;->q:Le/a/l0/c;

    iput-object v4, v0, Le/a/h/s0/n;->r:Le/a/p5/c0;

    iput-object v5, v0, Le/a/h/s0/n;->s:Le/a/k3/j/j;

    iput-object v6, v0, Le/a/h/s0/n;->t:Le/a/h/d/d;

    iput-object v7, v0, Le/a/h/s0/n;->u:Ls1/w/f;

    iput-object v8, v0, Le/a/h/s0/n;->v:Ls1/w/f;

    const-string v2, ""

    .line 2
    iput-object v2, v0, Le/a/h/s0/n;->d:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Le/a/h/s0/n;->e:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Le/a/h/b0;->b()I

    move-result v1

    .line 5
    iput v1, v0, Le/a/h/s0/n;->k:I

    .line 6
    new-instance v1, Le/a/h/s0/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    move-object p1, v1

    move p2, v2

    move p3, v3

    move p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    invoke-direct/range {p1 .. p8}, Le/a/h/s0/b;-><init>(ZZZLjava/util/ArrayList;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Lcom/truecaller/data/entity/Contact;I)V

    iput-object v1, v0, Le/a/h/s0/n;->n:Le/a/h/s0/b;

    return-void
.end method


# virtual methods
.method public H4(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/h/s0/n;->l:Z

    return-void
.end method

.method public I6(Lcom/truecaller/data/entity/Number;Ljava/lang/String;ILcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v8, Lq3/a/h1;->a:Lq3/a/h1;

    const-string v2, "number"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callContextOption"

    move-object/from16 v15, p4

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/h/s0/n;->t:Le/a/h/d/d;

    iget-boolean v3, v0, Le/a/h/s0/n;->j:Z

    invoke-interface {v2, v1, v3}, Le/a/h/d/d;->a(Lcom/truecaller/data/entity/Number;Z)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 2
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 3
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/h/s0/l;->t()V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-boolean v2, v0, Le/a/h/s0/n;->l:Z

    const/4 v14, 0x0

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    iget-object v3, v0, Le/a/h/s0/n;->u:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/h/s0/o;

    invoke-direct {v5, v0, v2, v14}, Le/a/h/s0/o;-><init>(Le/a/h/s0/n;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    :cond_3
    :goto_0
    iget-boolean v2, v0, Le/a/h/s0/n;->m:Z

    if-eqz v2, :cond_5

    .line 8
    iget-object v2, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 9
    check-cast v2, Le/a/h/s0/l;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Le/a/h/s0/l;->Ln(Lcom/truecaller/data/entity/Number;)V

    :cond_4
    move-object v2, v14

    goto :goto_1

    .line 10
    :cond_5
    iget-boolean v1, v0, Le/a/h/s0/n;->f:Z

    if-eqz v1, :cond_6

    .line 11
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 12
    move-object v9, v1

    check-cast v9, Le/a/h/s0/l;

    if-eqz v9, :cond_4

    iget-boolean v13, v0, Le/a/h/s0/n;->g:Z

    iget-object v1, v0, Le/a/h/s0/n;->e:Ljava/lang/String;

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-object v2, v14

    move-object v14, v1

    move-object/from16 v15, p4

    invoke-interface/range {v9 .. v15}, Le/a/h/s0/l;->Vv(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    goto :goto_1

    :cond_6
    move-object v2, v14

    .line 13
    iget-boolean v1, v0, Le/a/h/s0/n;->i:Z

    if-eqz v1, :cond_7

    .line 14
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 15
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_8

    iget-object v3, v0, Le/a/h/s0/n;->e:Ljava/lang/String;

    invoke-interface {v1, v10, v3}, Le/a/h/s0/l;->Q4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_7
    iget-boolean v1, v0, Le/a/h/s0/n;->j:Z

    if-eqz v1, :cond_8

    .line 17
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 18
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_8

    iget-object v3, v0, Le/a/h/s0/n;->e:Ljava/lang/String;

    invoke-interface {v1, v10, v3}, Le/a/h/s0/l;->Uy(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_8
    :goto_1
    iget-object v3, v0, Le/a/h/s0/n;->v:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/h/s0/n$a;

    invoke-direct {v5, v0, v2}, Le/a/h/s0/n$a;-><init>(Le/a/h/s0/n;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public X8()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/h/s0/n;->h:Z

    return v0
.end method

.method public ba(Lcom/truecaller/data/entity/Contact;Ljava/util/ArrayList;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/data/entity/Number;",
            ">;ZZZZZ",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v7, p1

    move/from16 v1, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v6, p8

    move-object/from16 v2, p9

    move/from16 v5, p10

    const-string v8, "callContextOption"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "analyticsContext"

    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_1

    .line 1
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/h/s0/l;->t()V

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_3

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    move v10, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v10, v9

    :goto_1
    if-eqz v10, :cond_5

    .line 4
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 5
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le/a/h/s0/l;->t()V

    :cond_4
    return-void

    .line 6
    :cond_5
    iput-object v7, v0, Le/a/h/s0/n;->c:Lcom/truecaller/data/entity/Contact;

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_6

    .line 8
    iget-object v11, v0, Le/a/h/s0/n;->r:Le/a/p5/c0;

    const v12, 0x7f120d34

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 9
    iget-object v11, v0, Le/a/h/s0/n;->r:Le/a/p5/c0;

    const v12, 0x7f120d37

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 10
    :cond_7
    iget-object v11, v0, Le/a/h/s0/n;->r:Le/a/p5/c0;

    const v12, 0x7f120d28

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 11
    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_8

    const-string v13, " - "

    invoke-static {v13, v11}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_8
    move-object v11, v12

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Le/a/h/s0/n;->d:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Le/a/h/s0/n;->e:Ljava/lang/String;

    .line 14
    iput-boolean v1, v0, Le/a/h/s0/n;->h:Z

    .line 15
    iput-boolean v3, v0, Le/a/h/s0/n;->i:Z

    move/from16 v2, p5

    .line 16
    iput-boolean v2, v0, Le/a/h/s0/n;->g:Z

    .line 17
    iput-boolean v4, v0, Le/a/h/s0/n;->j:Z

    move/from16 v2, p4

    .line 18
    iput-boolean v2, v0, Le/a/h/s0/n;->f:Z

    .line 19
    iput-boolean v5, v0, Le/a/h/s0/n;->m:Z

    .line 20
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v9, :cond_a

    .line 21
    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Le/a/h/s0/n;->k:I

    invoke-virtual {p0, v1, v2, v3, v6}, Le/a/h/s0/n;->I6(Lcom/truecaller/data/entity/Number;Ljava/lang/String;ILcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 22
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 23
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Le/a/h/s0/l;->t()V

    :cond_9
    return-void

    .line 24
    :cond_a
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_c

    invoke-virtual {v11}, Lcom/truecaller/data/entity/RowEntity;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_c

    move v11, v9

    goto :goto_4

    :cond_c
    move v11, v8

    :goto_4
    if-eqz v11, :cond_b

    move-object v12, v10

    :cond_d
    check-cast v12, Lcom/truecaller/data/entity/Number;

    if-eqz v12, :cond_f

    .line 25
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Le/a/h/s0/n;->k:I

    invoke-virtual {p0, v12, v1, v2, v6}, Le/a/h/s0/n;->I6(Lcom/truecaller/data/entity/Number;Ljava/lang/String;ILcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 26
    iget-object v1, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 27
    check-cast v1, Le/a/h/s0/l;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Le/a/h/s0/l;->t()V

    :cond_e
    return-void

    .line 28
    :cond_f
    new-instance v9, Le/a/h/s0/b;

    .line 29
    iget-object v1, v0, Le/a/h/s0/n;->p:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->h()Z

    move-result v1

    xor-int/lit8 v2, v5, 0x1

    and-int/2addr v2, v1

    const/4 v5, 0x0

    const/16 v8, 0x8

    move-object v1, v9

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v6, p8

    move-object v7, p1

    .line 30
    invoke-direct/range {v1 .. v8}, Le/a/h/s0/b;-><init>(ZZZLjava/util/ArrayList;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Lcom/truecaller/data/entity/Contact;I)V

    iput-object v9, v0, Le/a/h/s0/n;->n:Le/a/h/s0/b;

    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 32
    iget-object v3, v0, Le/a/h/s0/n;->q:Le/a/l0/c;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Le/a/l0/c;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v3

    new-instance v4, Le/a/h/s0/n$b;

    invoke-direct {v4, v2, p0}, Le/a/h/s0/n$b;-><init>(Lcom/truecaller/data/entity/Number;Le/a/h/s0/n;)V

    invoke-virtual {v3, v4}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    goto :goto_5

    :cond_10
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/s0/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public rc(Le/a/h/s0/h;Ls1/a/l;)Le/a/h/s0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/s0/h;",
            "Ls1/a/l<",
            "*>;)",
            "Le/a/h/s0/b;"
        }
    .end annotation

    const-string v0, "itemPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/s0/n;->n:Le/a/h/s0/b;

    return-object p1
.end method
