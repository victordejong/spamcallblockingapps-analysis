.class public Le/a/f4/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/b<",
        "Le/a/f4/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/b<",
            "Lcom/truecaller/data/dto/ContactDto;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Ljava/util/UUID;

.field public final g:Le/a/b0/b/e;

.field public final h:Le/m/f/a/j;


# direct methods
.method public constructor <init>(Lx3/b;Ljava/lang/String;ZZILjava/util/UUID;Le/a/b0/b/e;Le/m/f/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lcom/truecaller/data/dto/ContactDto;",
            ">;",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/UUID;",
            "Le/a/b0/b/e;",
            "Le/m/f/a/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/f4/g/o;->a:Lx3/b;

    .line 3
    iput-object p2, p0, Le/a/f4/g/o;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Le/a/f4/g/o;->c:Z

    .line 5
    iput-boolean p4, p0, Le/a/f4/g/o;->d:Z

    .line 6
    iput p5, p0, Le/a/f4/g/o;->e:I

    .line 7
    iput-object p6, p0, Le/a/f4/g/o;->f:Ljava/util/UUID;

    .line 8
    iput-object p7, p0, Le/a/f4/g/o;->g:Le/a/b0/b/e;

    .line 9
    iput-object p8, p0, Le/a/f4/g/o;->h:Le/m/f/a/j;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/f4/g/o;->clone()Lx3/b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lx3/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v9, Le/a/f4/g/o;

    iget-object v0, p0, Le/a/f4/g/o;->a:Lx3/b;

    .line 3
    invoke-interface {v0}, Lx3/b;->clone()Lx3/b;

    move-result-object v1

    iget-object v2, p0, Le/a/f4/g/o;->b:Ljava/lang/String;

    iget-boolean v3, p0, Le/a/f4/g/o;->c:Z

    iget-boolean v4, p0, Le/a/f4/g/o;->d:Z

    iget v5, p0, Le/a/f4/g/o;->e:I

    iget-object v6, p0, Le/a/f4/g/o;->f:Ljava/util/UUID;

    iget-object v7, p0, Le/a/f4/g/o;->g:Le/a/b0/b/e;

    iget-object v8, p0, Le/a/f4/g/o;->h:Le/m/f/a/j;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/a/f4/g/o;-><init>(Lx3/b;Ljava/lang/String;ZZILjava/util/UUID;Le/a/b0/b/e;Le/m/f/a/j;)V

    return-object v9
.end method

.method public enqueue(Lx3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/d<",
            "Le/a/f4/g/t;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    .line 1
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public execute()Lx3/a0;
    .locals 22
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

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/f4/g/o;->a:Lx3/b;

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3
    iget-object v2, v1, Lx3/a0;->b:Ljava/lang/Object;

    .line 4
    check-cast v2, Lcom/truecaller/data/dto/ContactDto;

    if-eqz v2, :cond_6

    .line 5
    iget-object v9, v0, Le/a/f4/g/o;->b:Ljava/lang/String;

    iget-boolean v10, v0, Le/a/f4/g/o;->c:Z

    iget-boolean v11, v0, Le/a/f4/g/o;->d:Z

    iget-object v12, v0, Le/a/f4/g/o;->g:Le/a/b0/b/e;

    iget-object v13, v0, Le/a/f4/g/o;->h:Le/m/f/a/j;

    .line 6
    sget-object v3, Le/a/f4/g/l;->a:Ljava/util/Set;

    .line 7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 9
    iget-object v3, v2, Lcom/truecaller/data/dto/ContactDto;->data:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-eqz v6, :cond_0

    move-object v3, v6

    move-wide v4, v7

    move-object v0, v6

    move-object v6, v9

    move-wide/from16 v20, v7

    move-object v7, v12

    move-object v8, v13

    .line 11
    invoke-static/range {v3 .. v8}, Le/a/f4/g/l;->a(Lcom/truecaller/data/dto/ContactDto$Contact;JLjava/lang/String;Le/a/b0/b/e;Le/m/f/a/j;)V

    .line 12
    new-instance v3, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v3, v0}, Lcom/truecaller/data/entity/Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v0}, Le/a/f4/g/l;->b(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    move-object/from16 v0, p0

    move-wide/from16 v7, v20

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    move-wide/from16 v20, v7

    if-eqz v10, :cond_4

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v4, v2, Lcom/truecaller/data/dto/ContactDto;->data:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    .line 18
    invoke-static {v0, v3, v5}, Le/a/l4/k;->f(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Contact;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v11, :cond_3

    .line 20
    invoke-static {v9}, Le/a/b0/q/b0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v5, v20

    .line 21
    invoke-static {v0, v9, v4, v5, v6}, Le/a/l4/k;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    :cond_3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v4

    invoke-static {v4, v0, v3}, Le/a/l4/k;->i(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 23
    :cond_4
    iget-object v0, v1, Lx3/a0;->a:Lu3/k0;

    .line 24
    iget-object v0, v0, Lu3/k0;->g:Lu3/z;

    const-string v3, "tc-event-id"

    .line 25
    invoke-virtual {v0, v3}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 26
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 28
    :cond_5
    new-instance v0, Le/a/f4/g/t;

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/truecaller/data/dto/ContactDto;->pagination:Lcom/truecaller/data/dto/ContactDto$Pagination;

    iget-object v2, v2, Lcom/truecaller/data/dto/ContactDto;->campaigns:Le/a/k3/k/a;

    move-object v14, v0

    move-object v5, v15

    move v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Le/a/f4/g/t;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Pagination;Le/a/k3/k/a;)V

    .line 29
    iget-object v1, v1, Lx3/a0;->a:Lu3/k0;

    .line 30
    invoke-static {v0, v1}, Lx3/a0;->d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;

    move-result-object v0

    return-object v0

    .line 31
    :cond_6
    iget-object v0, v1, Lx3/a0;->c:Lu3/l0;

    .line 32
    iget-object v1, v1, Lx3/a0;->a:Lu3/k0;

    .line 33
    invoke-static {v0, v1}, Lx3/a0;->a(Lu3/l0;Lu3/k0;)Lx3/a0;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/o;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request()Lu3/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/o;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->request()Lu3/g0;

    move-result-object v0

    return-object v0
.end method
