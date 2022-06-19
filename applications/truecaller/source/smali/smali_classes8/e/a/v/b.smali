.class public final Le/a/v/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/h;",
        ">;",
        "Le/a/v/g;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Le/a/k3/j/b;

.field public final i:Le/a/a3/a;

.field public final j:Le/a/u3/g;

.field public final k:Le/a/a/k0;

.field public final l:Le/a/l/t2/d;

.field public final m:Le/a/e0/c;

.field public final n:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/k3/j/b;Le/a/a3/a;Le/a/u3/g;Le/a/a/k0;Le/a/l/t2/d;Le/a/e0/c;Le/a/r2/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p5    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/k3/j/b;",
            "Le/a/a3/a;",
            "Le/a/u3/g;",
            "Le/a/a/k0;",
            "Le/a/l/t2/d;",
            "Le/a/e0/c;",
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsPermissionPromoManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportSpamPromoManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afterBlockPromoHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/b;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/v/b;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/v/b;->h:Le/a/k3/j/b;

    iput-object p4, p0, Le/a/v/b;->i:Le/a/a3/a;

    iput-object p5, p0, Le/a/v/b;->j:Le/a/u3/g;

    iput-object p6, p0, Le/a/v/b;->k:Le/a/a/k0;

    iput-object p7, p0, Le/a/v/b;->l:Le/a/l/t2/d;

    iput-object p8, p0, Le/a/v/b;->m:Le/a/e0/c;

    iput-object p9, p0, Le/a/v/b;->n:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public final Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    instance-of v3, v2, Le/a/v/b$e;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/v/b$e;

    iget v4, v3, Le/a/v/b$e;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/v/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/v/b$e;

    invoke-direct {v3, p0, v2}, Le/a/v/b$e;-><init>(Le/a/v/b;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/v/b$e;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/v/b$e;->e:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "it"

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Le/a/v/b$e;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, v3, Le/a/v/b$e;->k:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Le/a/v/b$e;->j:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Le/a/v/b$e;->i:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Le/a/v/b$e;->h:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v3, v3, Le/a/v/b$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/v/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Le/a/v/b$e;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Le/a/v/b$e;->k:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v3, Le/a/v/b$e;->j:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Le/a/v/b$e;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v3, Le/a/v/b$e;->h:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Le/a/v/b$e;->g:Ljava/lang/Object;

    check-cast v12, Le/a/v/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, v3, Le/a/v/b$e;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Le/a/v/b$e;->k:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, v3, Le/a/v/b$e;->j:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v3, Le/a/v/b$e;->i:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Le/a/v/b$e;->h:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v3, Le/a/v/b$e;->g:Ljava/lang/Object;

    check-cast v13, Le/a/v/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v1

    move-object v1, v13

    move-object v13, v5

    goto :goto_1

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    .line 4
    iget-object v2, v0, Le/a/v/b;->g:Ls1/w/f;

    new-instance v5, Le/a/v/b$b;

    invoke-direct {v5, v10, p0, v3, v1}, Le/a/v/b$b;-><init>(Ls1/w/d;Le/a/v/b;Ls1/w/d;Ljava/lang/String;)V

    iput-object v0, v3, Le/a/v/b$e;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/v/b$e;->h:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v3, Le/a/v/b$e;->i:Ljava/lang/Object;

    move-object/from16 v12, p3

    iput-object v12, v3, Le/a/v/b$e;->j:Ljava/lang/Object;

    move-object/from16 v13, p4

    iput-object v13, v3, Le/a/v/b$e;->k:Ljava/lang/Object;

    move-object/from16 v14, p5

    iput-object v14, v3, Le/a/v/b$e;->l:Ljava/lang/Object;

    iput v8, v3, Le/a/v/b$e;->e:I

    invoke-static {v2, v5, v3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-object v8, v12

    move-object v12, v1

    move-object v1, v0

    :goto_1
    check-cast v2, Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_7

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_6
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object v8, v12

    move-object v12, v1

    move-object v1, v0

    :cond_7
    if-eqz v13, :cond_a

    .line 5
    iget-object v2, v1, Le/a/v/b;->g:Ls1/w/f;

    new-instance v5, Le/a/v/b$c;

    invoke-direct {v5, v10, v1, v3, v13}, Le/a/v/b$c;-><init>(Ls1/w/d;Le/a/v/b;Ls1/w/d;Ljava/lang/String;)V

    iput-object v1, v3, Le/a/v/b$e;->g:Ljava/lang/Object;

    iput-object v12, v3, Le/a/v/b$e;->h:Ljava/lang/Object;

    iput-object v11, v3, Le/a/v/b$e;->i:Ljava/lang/Object;

    iput-object v8, v3, Le/a/v/b$e;->j:Ljava/lang/Object;

    iput-object v13, v3, Le/a/v/b$e;->k:Ljava/lang/Object;

    iput-object v14, v3, Le/a/v/b$e;->l:Ljava/lang/Object;

    iput v7, v3, Le/a/v/b$e;->e:I

    invoke-static {v2, v5, v3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    return-object v4

    :cond_8
    move-object v7, v8

    move-object v8, v11

    move-object v11, v12

    move-object v5, v13

    move-object v12, v1

    move-object v1, v14

    :goto_2
    check-cast v2, Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_9

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_9
    move-object v13, v5

    move-object v5, v7

    move-object v7, v11

    move-object v11, v8

    goto :goto_3

    :cond_a
    move-object v5, v8

    move-object v7, v12

    move-object v12, v1

    move-object v1, v14

    :goto_3
    if-eqz v11, :cond_d

    .line 6
    iget-object v2, v12, Le/a/v/b;->g:Ls1/w/f;

    new-instance v8, Le/a/v/b$d;

    invoke-direct {v8, v10, v12, v3, v11}, Le/a/v/b$d;-><init>(Ls1/w/d;Le/a/v/b;Ls1/w/d;Ljava/lang/String;)V

    iput-object v12, v3, Le/a/v/b$e;->g:Ljava/lang/Object;

    iput-object v7, v3, Le/a/v/b$e;->h:Ljava/lang/Object;

    iput-object v11, v3, Le/a/v/b$e;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/v/b$e;->j:Ljava/lang/Object;

    iput-object v13, v3, Le/a/v/b$e;->k:Ljava/lang/Object;

    iput-object v1, v3, Le/a/v/b$e;->l:Ljava/lang/Object;

    iput v6, v3, Le/a/v/b$e;->e:I

    invoke-static {v2, v8, v3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_b

    return-object v4

    :cond_b
    move-object v6, v11

    move-object v3, v12

    move-object v4, v13

    :goto_4
    check-cast v2, Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_c

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_c
    move-object v12, v3

    move-object v13, v4

    move-object v11, v6

    .line 7
    :cond_d
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v2}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 9
    invoke-virtual {v2, v7}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 10
    iget-object v3, v2, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v5, v3, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    .line 11
    invoke-static {v13, v11, v1}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v3, "this"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/truecaller/data/entity/Number;->setTcId(Ljava/lang/String;)V

    move-object v10, v1

    :cond_e
    if-eqz v10, :cond_f

    .line 12
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/truecaller/data/entity/Contact;->O0(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v10}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    :cond_f
    return-object v2
.end method

.method public final Jj(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/b;->j:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->p5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x14d

    aget-object v3, v2, v3

    invoke-virtual {v1, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/v/b;->j:Le/a/u3/g;

    .line 4
    iget-object v1, v0, Le/a/u3/g;->b4:Le/a/u3/g$a;

    const/16 v3, 0x109

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final Kj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/v/b;->d:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/v/b;->e:Ljava/lang/String;

    .line 4
    new-instance v3, Le/a/v/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Le/a/v/b$a;-><init>(ILjava/lang/Object;)V

    .line 5
    new-instance v4, Le/a/v/b$a;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Le/a/v/b$a;-><init>(ILjava/lang/Object;)V

    .line 6
    invoke-interface {v0, v1, v2, v3, v4}, Le/a/v/h;->O8(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;)V

    :cond_0
    return-void
.end method
