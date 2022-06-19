.class public Le/a/f4/g/d;
.super Le/a/f4/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/g/b<",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/k3/j/b;

.field public final c:Z

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/h0/j;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/UUID;

.field public final j:Le/a/q2/a;

.field public final k:Le/a/p5/u;

.field public final l:Le/a/p5/c;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/a/g5/p;

.field public final o:Z


# direct methods
.method public constructor <init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/lang/String;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;",
            "Le/a/k3/j/b;",
            "Z",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/h0/j;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/p5/u;",
            "Le/a/p5/c;",
            "Z",
            "Le/a/g5/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/a/f4/g/b;-><init>(Lx3/b;)V

    .line 2
    iput-object p2, p0, Le/a/f4/g/d;->b:Le/a/k3/j/b;

    .line 3
    iput-boolean p3, p0, Le/a/f4/g/d;->c:Z

    .line 4
    iput-object p4, p0, Le/a/f4/g/d;->d:Le/a/r2/f;

    .line 5
    iput-object p5, p0, Le/a/f4/g/d;->e:Le/a/h0/j;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/f4/g/d;->f:Ljava/util/List;

    .line 7
    iput p7, p0, Le/a/f4/g/d;->g:I

    .line 8
    iput-object p8, p0, Le/a/f4/g/d;->h:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Le/a/f4/g/d;->i:Ljava/util/UUID;

    .line 10
    iput-object p10, p0, Le/a/f4/g/d;->m:Ljava/util/List;

    .line 11
    iput-object p11, p0, Le/a/f4/g/d;->j:Le/a/q2/a;

    .line 12
    iput-object p12, p0, Le/a/f4/g/d;->k:Le/a/p5/u;

    .line 13
    iput-object p13, p0, Le/a/f4/g/d;->l:Le/a/p5/c;

    .line 14
    iput-boolean p14, p0, Le/a/f4/g/d;->o:Z

    .line 15
    iput-object p15, p0, Le/a/f4/g/d;->n:Le/a/g5/p;

    .line 16
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/util/List;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;",
            "Le/a/k3/j/b;",
            "Z",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/h0/j;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/p5/u;",
            "Le/a/p5/c;",
            "Z",
            "Le/a/g5/p;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Le/a/f4/g/b;-><init>(Lx3/b;)V

    .line 18
    iput-object p2, p0, Le/a/f4/g/d;->b:Le/a/k3/j/b;

    .line 19
    iput-boolean p3, p0, Le/a/f4/g/d;->c:Z

    .line 20
    iput-object p4, p0, Le/a/f4/g/d;->d:Le/a/r2/f;

    .line 21
    iput-object p5, p0, Le/a/f4/g/d;->e:Le/a/h0/j;

    .line 22
    iput-object p6, p0, Le/a/f4/g/d;->f:Ljava/util/List;

    .line 23
    iput p7, p0, Le/a/f4/g/d;->g:I

    .line 24
    iput-object p8, p0, Le/a/f4/g/d;->h:Ljava/lang/String;

    .line 25
    iput-object p9, p0, Le/a/f4/g/d;->i:Ljava/util/UUID;

    .line 26
    iput-object p10, p0, Le/a/f4/g/d;->m:Ljava/util/List;

    .line 27
    iput-object p11, p0, Le/a/f4/g/d;->j:Le/a/q2/a;

    .line 28
    iput-object p12, p0, Le/a/f4/g/d;->k:Le/a/p5/u;

    .line 29
    iput-object p13, p0, Le/a/f4/g/d;->l:Le/a/p5/c;

    .line 30
    iput-boolean p14, p0, Le/a/f4/g/d;->o:Z

    .line 31
    iput-object p15, p0, Le/a/f4/g/d;->n:Le/a/g5/p;

    return-void
.end method


# virtual methods
.method public final b(Le/a/l5/a/m3$b;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f4/g/d;->e:Le/a/h0/j;

    invoke-interface {v0, p2}, Le/a/h0/j;->e(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    return-void
.end method

.method public final c(Ljava/util/Collection;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/util/List<",
            "Le/a/l5/a/e4;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/AvroRuntimeException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Number;

    .line 4
    iget v6, v4, Lcom/truecaller/data/entity/Number;->a:I

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v1, p0, Le/a/f4/g/d;->c:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Le/a/f4/g/d;->b:Le/a/k3/j/b;

    invoke-virtual {v1, v0}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "[AppSearchLoggingCall] fillEntitiesBySearchResult searchQuery is null"

    .line 9
    invoke-static {v4}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/data/entity/Contact;->V0(Ljava/lang/String;)V

    move-object v0, v1

    .line 11
    :cond_3
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v1

    invoke-static {v1, v0, v2}, Le/a/m0/a1$k;->W0(Le/a/l5/a/m3$b;Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v1, v4}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    invoke-virtual {v1, v4}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    move v6, v5

    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Le/a/f4/g/d;->b(Le/a/l5/a/m3$b;Ljava/lang/String;)V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->d0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/Tag;

    .line 22
    invoke-virtual {v9}, Lcom/truecaller/data/entity/RowEntity;->getSource()I

    move-result v10

    if-ne v10, v5, :cond_6

    .line 23
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_7
    iget-object v5, p0, Le/a/f4/g/d;->n:Le/a/g5/p;

    invoke-interface {v5, v0}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 26
    iget-wide v8, v5, Le/a/b0/p/c;->a:J

    .line 27
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_8
    invoke-static {}, Le/a/l5/a/i4;->a()Le/a/l5/a/i4$b;

    move-result-object v5

    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v4, v2

    :cond_9
    invoke-virtual {v5, v4}, Le/a/l5/a/i4$b;->c(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 30
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v6, v2

    :cond_a
    invoke-virtual {v5, v6}, Le/a/l5/a/i4$b;->b(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v7, v2

    :cond_b
    invoke-virtual {v5, v7}, Le/a/l5/a/i4$b;->d(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 32
    invoke-virtual {v5}, Le/a/l5/a/i4$b;->a()Le/a/l5/a/i4;

    move-result-object v4

    .line 33
    invoke-static {}, Le/a/l5/a/e4;->a()Le/a/l5/a/e4$b;

    move-result-object v5

    .line 34
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/a/l5/a/e4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 35
    invoke-virtual {v5, v4}, Le/a/l5/a/e4$b;->e(Le/a/l5/a/i4;)Le/a/l5/a/e4$b;

    .line 36
    invoke-virtual {v1}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v1

    invoke-virtual {v5, v1}, Le/a/l5/a/e4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/e4$b;

    if-eqz p4, :cond_c

    const-string v2, "validCacheResult"

    .line 37
    :cond_c
    invoke-virtual {v5, v2}, Le/a/l5/a/e4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 38
    invoke-virtual {v5, v3}, Le/a/l5/a/e4$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 39
    invoke-virtual {v5}, Le/a/l5/a/e4$b;->a()Le/a/l5/a/e4;

    move-result-object v1

    .line 40
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public clone()Lx3/b;
    .locals 18
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
    new-instance v17, Le/a/f4/g/d;

    iget-object v2, v0, Le/a/f4/g/b;->a:Lx3/b;

    iget-object v3, v0, Le/a/f4/g/d;->b:Le/a/k3/j/b;

    iget-boolean v4, v0, Le/a/f4/g/d;->c:Z

    iget-object v5, v0, Le/a/f4/g/d;->d:Le/a/r2/f;

    iget-object v6, v0, Le/a/f4/g/d;->e:Le/a/h0/j;

    iget-object v7, v0, Le/a/f4/g/d;->f:Ljava/util/List;

    iget v8, v0, Le/a/f4/g/d;->g:I

    iget-object v9, v0, Le/a/f4/g/d;->h:Ljava/lang/String;

    iget-object v10, v0, Le/a/f4/g/d;->i:Ljava/util/UUID;

    iget-object v11, v0, Le/a/f4/g/d;->m:Ljava/util/List;

    iget-object v12, v0, Le/a/f4/g/d;->j:Le/a/q2/a;

    iget-object v13, v0, Le/a/f4/g/d;->k:Le/a/p5/u;

    iget-object v14, v0, Le/a/f4/g/d;->l:Le/a/p5/c;

    iget-boolean v15, v0, Le/a/f4/g/d;->o:Z

    iget-object v1, v0, Le/a/f4/g/d;->n:Le/a/g5/p;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Le/a/f4/g/d;-><init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/util/List;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V

    return-object v17
.end method

.method public final e(Le/a/l5/a/y1$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/AvroRuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Le/a/l5/a/y1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Le/a/l5/a/y1$b;->g(Z)Le/a/l5/a/y1$b;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Le/a/l5/a/y1$b;->h(Z)Le/a/l5/a/y1$b;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v4, p0, Le/a/f4/g/d;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {v5}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v6, p0, Le/a/f4/g/d;->b:Le/a/k3/j/b;

    invoke-virtual {v6, v5}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    .line 8
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v7

    invoke-static {v7, v6, v0}, Le/a/m0/a1$k;->W0(Le/a/l5/a/m3$b;Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    invoke-virtual {v7, v8}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    invoke-virtual {v7, v8}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    if-nez v6, :cond_3

    move v8, v2

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v8

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    if-eqz v6, :cond_4

    .line 12
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_4

    :cond_4
    move v8, v2

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v1

    goto :goto_5

    :cond_5
    move v8, v2

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 14
    invoke-virtual {p0, v7, v5}, Le/a/f4/g/d;->b(Le/a/l5/a/m3$b;Ljava/lang/String;)V

    if-eqz v6, :cond_c

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->d0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/data/entity/Tag;

    .line 19
    invoke-virtual {v12}, Lcom/truecaller/data/entity/RowEntity;->getSource()I

    move-result v13

    if-ne v13, v1, :cond_6

    .line 20
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 21
    :cond_6
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 22
    :cond_7
    iget-object v11, p0, Le/a/f4/g/d;->n:Le/a/g5/p;

    invoke-interface {v11, v6}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 23
    iget-wide v11, v6, Le/a/b0/p/c;->a:J

    .line 24
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8
    invoke-static {}, Le/a/l5/a/i4;->a()Le/a/l5/a/i4$b;

    move-result-object v6

    .line 26
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v8, v0

    :cond_9
    invoke-virtual {v6, v8}, Le/a/l5/a/i4$b;->c(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 27
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v9, v0

    :cond_a
    invoke-virtual {v6, v9}, Le/a/l5/a/i4$b;->b(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 28
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v10, v0

    :cond_b
    invoke-virtual {v6, v10}, Le/a/l5/a/i4$b;->d(Ljava/util/List;)Le/a/l5/a/i4$b;

    .line 29
    invoke-virtual {v6}, Le/a/l5/a/i4$b;->a()Le/a/l5/a/i4;

    move-result-object v6

    goto :goto_7

    :cond_c
    move-object v6, v0

    .line 30
    :goto_7
    invoke-static {}, Le/a/l5/a/e4;->a()Le/a/l5/a/e4$b;

    move-result-object v8

    .line 31
    invoke-virtual {v8, v5}, Le/a/l5/a/e4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 32
    invoke-virtual {v8, v6}, Le/a/l5/a/e4$b;->e(Le/a/l5/a/i4;)Le/a/l5/a/e4$b;

    .line 33
    invoke-virtual {v7}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v5

    invoke-virtual {v8, v5}, Le/a/l5/a/e4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/e4$b;

    .line 34
    invoke-virtual {v8, v0}, Le/a/l5/a/e4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 35
    invoke-virtual {v8, v0}, Le/a/l5/a/e4$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 36
    invoke-virtual {v8}, Le/a/l5/a/e4$b;->a()Le/a/l5/a/e4;

    move-result-object v5

    .line 37
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :cond_d
    invoke-virtual {p1, v3}, Le/a/l5/a/y1$b;->e(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 39
    iget-object v0, p0, Le/a/f4/g/d;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-virtual {p1}, Le/a/l5/a/y1$b;->a()Le/a/l5/a/y1;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public execute()Lx3/a0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/l5/a/y1;->a()Le/a/l5/a/y1$b;

    move-result-object v0

    iget-object v1, p0, Le/a/f4/g/d;->i:Ljava/util/UUID;

    .line 2
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    iget-object v1, p0, Le/a/f4/g/d;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->i(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    iget v1, p0, Le/a/f4/g/d;->g:I

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->j(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    iget-object v1, p0, Le/a/f4/g/d;->m:Ljava/util/List;

    .line 5
    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->b(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 6
    iget-object v1, p0, Le/a/f4/g/d;->l:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v1

    .line 7
    :try_start_0
    invoke-super {p0}, Le/a/f4/g/b;->execute()Lx3/a0;

    move-result-object v3

    .line 8
    iget-object v4, p0, Le/a/f4/g/d;->l:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->a()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/l5/a/y1$b;->c(Ljava/lang/Long;)Le/a/l5/a/y1$b;

    .line 10
    iget-object v4, v3, Lx3/a0;->b:Ljava/lang/Object;

    .line 11
    check-cast v4, Le/a/f4/g/t;

    .line 12
    invoke-virtual {v3}, Lx3/a0;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {p0, v4, v0}, Le/a/f4/g/d;->f(Le/a/f4/g/t;Le/a/l5/a/y1$b;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Le/a/f4/g/d;->e(Le/a/l5/a/y1$b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 15
    :try_start_1
    iget-object v4, p0, Le/a/f4/g/d;->l:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->a()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/y1$b;->c(Ljava/lang/Long;)Le/a/l5/a/y1$b;

    .line 17
    invoke-virtual {p0, v0}, Le/a/f4/g/d;->e(Le/a/l5/a/y1$b;)V

    .line 18
    throw v3
    :try_end_1
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v1, "Unable to log the search event."

    .line 19
    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final f(Le/a/f4/g/t;Le/a/l5/a/y1$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/avro/AvroRuntimeException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Le/a/f4/g/d;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    iget v1, p1, Le/a/f4/g/t;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p1, Le/a/f4/g/t;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Le/a/l5/a/y1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    .line 4
    invoke-virtual {p2, v3}, Le/a/l5/a/y1$b;->g(Z)Le/a/l5/a/y1$b;

    .line 5
    invoke-virtual {p2, v3}, Le/a/l5/a/y1$b;->h(Z)Le/a/l5/a/y1$b;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2, v4}, Le/a/l5/a/y1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/y1$b;

    .line 7
    invoke-virtual {p2, v2}, Le/a/l5/a/y1$b;->g(Z)Le/a/l5/a/y1$b;

    .line 8
    invoke-virtual {p2, v2}, Le/a/l5/a/y1$b;->h(Z)Le/a/l5/a/y1$b;

    .line 9
    :goto_1
    iget v1, p1, Le/a/f4/g/t;->g:I

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 10
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 14
    iget-object v7, p0, Le/a/f4/g/d;->b:Le/a/k3/j/b;

    invoke-virtual {v7, v6}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 15
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->V()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v8, "[AppSearchLoggingCall] fillEntitiesByAggregatedContacts searchQuery is null"

    .line 17
    invoke-static {v8}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7, v6}, Lcom/truecaller/data/entity/Contact;->V0(Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {p0, p1, v5, v0, v1}, Le/a/f4/g/d;->c(Ljava/util/Collection;Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-gt v6, v3, :cond_7

    iget-object v6, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v3, :cond_6

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v3, :cond_8

    iget-object p1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_8

    .line 22
    invoke-static {}, Le/a/l5/a/e4;->a()Le/a/l5/a/e4$b;

    move-result-object p1

    iget-object v1, p0, Le/a/f4/g/d;->f:Ljava/util/List;

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Le/a/l5/a/e4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 24
    invoke-virtual {p1, v4}, Le/a/l5/a/e4$b;->e(Le/a/l5/a/i4;)Le/a/l5/a/e4$b;

    .line 25
    invoke-virtual {p1, v4}, Le/a/l5/a/e4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/e4$b;

    .line 26
    invoke-virtual {p1, v4}, Le/a/l5/a/e4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 27
    invoke-virtual {p1, v4}, Le/a/l5/a/e4$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 28
    invoke-virtual {p1}, Le/a/l5/a/e4$b;->a()Le/a/l5/a/e4;

    move-result-object p1

    .line 29
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_5

    .line 31
    :cond_7
    :goto_4
    iget-object p1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-virtual {p0, p1, v5, v0, v1}, Le/a/f4/g/d;->c(Ljava/util/Collection;Ljava/util/List;Ljava/util/Set;Z)V

    .line 32
    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 36
    invoke-virtual {v1, v2}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 37
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 39
    invoke-virtual {v1, v3}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 40
    invoke-virtual {p0, v1, v0}, Le/a/f4/g/d;->b(Le/a/l5/a/m3$b;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Le/a/l5/a/e4;->a()Le/a/l5/a/e4$b;

    move-result-object v3

    .line 42
    invoke-virtual {v3, v0}, Le/a/l5/a/e4$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 43
    invoke-virtual {v3, v4}, Le/a/l5/a/e4$b;->e(Le/a/l5/a/i4;)Le/a/l5/a/e4$b;

    .line 44
    invoke-virtual {v1}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v0

    invoke-virtual {v3, v0}, Le/a/l5/a/e4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/e4$b;

    .line 45
    invoke-virtual {v3, v4}, Le/a/l5/a/e4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 46
    invoke-virtual {v3, v4}, Le/a/l5/a/e4$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/e4$b;

    .line 47
    invoke-virtual {v3}, Le/a/l5/a/e4$b;->a()Le/a/l5/a/e4;

    move-result-object v0

    .line 48
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 49
    :cond_a
    invoke-virtual {p2, v5}, Le/a/l5/a/y1$b;->e(Ljava/util/List;)Le/a/l5/a/y1$b;

    .line 50
    iget-object p1, p0, Le/a/f4/g/d;->d:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {p2}, Le/a/l5/a/y1$b;->a()Le/a/l5/a/y1;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
