.class public Le/a/f4/g/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

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
            "Lcom/truecaller/search/KeyedContactDto;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public f:Le/m/f/a/j;


# direct methods
.method public constructor <init>(Lx3/b;Ljava/util/Collection;ZZZLe/m/f/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lcom/truecaller/search/KeyedContactDto;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Le/m/f/a/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/f4/g/i$a;->a:Lx3/b;

    .line 3
    iput-object p2, p0, Le/a/f4/g/i$a;->b:Ljava/util/Collection;

    .line 4
    iput-boolean p3, p0, Le/a/f4/g/i$a;->c:Z

    .line 5
    iput-boolean p4, p0, Le/a/f4/g/i$a;->d:Z

    .line 6
    iput-boolean p5, p0, Le/a/f4/g/i$a;->e:Z

    .line 7
    iput-object p6, p0, Le/a/f4/g/i$a;->f:Le/m/f/a/j;

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
    invoke-virtual {p0}, Le/a/f4/g/i$a;->clone()Lx3/b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lx3/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v7, Le/a/f4/g/i$a;

    iget-object v0, p0, Le/a/f4/g/i$a;->a:Lx3/b;

    .line 3
    invoke-interface {v0}, Lx3/b;->clone()Lx3/b;

    move-result-object v1

    iget-object v2, p0, Le/a/f4/g/i$a;->b:Ljava/util/Collection;

    iget-boolean v3, p0, Le/a/f4/g/i$a;->c:Z

    iget-boolean v4, p0, Le/a/f4/g/i$a;->d:Z

    iget-boolean v5, p0, Le/a/f4/g/i$a;->e:Z

    iget-object v6, p0, Le/a/f4/g/i$a;->f:Le/m/f/a/j;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/a/f4/g/i$a;-><init>(Lx3/b;Ljava/util/Collection;ZZZLe/m/f/a/j;)V

    return-object v7
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
    .locals 23
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
    iget-object v1, v0, Le/a/f4/g/i$a;->a:Lx3/b;

    invoke-interface {v1}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3
    iget-object v2, v1, Lx3/a0;->b:Ljava/lang/Object;

    .line 4
    check-cast v2, Lcom/truecaller/search/KeyedContactDto;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/truecaller/search/KeyedContactDto;->data:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 5
    iget-object v3, v0, Le/a/f4/g/i$a;->b:Ljava/util/Collection;

    iget-boolean v4, v0, Le/a/f4/g/i$a;->c:Z

    iget-boolean v5, v0, Le/a/f4/g/i$a;->d:Z

    iget-boolean v6, v0, Le/a/f4/g/i$a;->e:Z

    sget-object v13, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    iget-object v14, v0, Le/a/f4/g/i$a;->f:Le/m/f/a/j;

    .line 6
    sget-object v7, Le/a/f4/g/l;->a:Ljava/util/Set;

    .line 7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v7, v2, Lcom/truecaller/search/KeyedContactDto;->data:Ljava/util/List;

    if-eqz v7, :cond_8

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 10
    iget-object v7, v2, Lcom/truecaller/search/KeyedContactDto;->data:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "*"

    if-eqz v7, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/truecaller/search/KeyedContactDto$KeyedContact;

    if-eqz v4, :cond_0

    .line 11
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v10, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    iget-object v7, v10, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->key:Ljava/lang/String;

    :goto_1
    move-object/from16 v17, v7

    .line 12
    iget-object v7, v10, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->value:Lcom/truecaller/data/dto/ContactDto$Contact;

    move-wide v8, v11

    move-object v0, v10

    move-object/from16 v10, v17

    move-wide/from16 v21, v11

    move-object v11, v13

    move-object v12, v14

    invoke-static/range {v7 .. v12}, Le/a/f4/g/l;->a(Lcom/truecaller/data/dto/ContactDto$Contact;JLjava/lang/String;Le/a/b0/b/e;Le/m/f/a/j;)V

    .line 13
    new-instance v7, Lcom/truecaller/data/entity/Contact;

    iget-object v8, v0, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->value:Lcom/truecaller/data/dto/ContactDto$Contact;

    invoke-direct {v7, v8}, Lcom/truecaller/data/entity/Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, v0, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->value:Lcom/truecaller/data/dto/ContactDto$Contact;

    invoke-static {v0}, Le/a/f4/g/l;->b(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    move-object/from16 v0, p0

    move-wide/from16 v11, v21

    goto :goto_0

    :cond_1
    move-wide/from16 v21, v11

    if-eqz v5, :cond_8

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_2

    .line 17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v7

    .line 18
    :goto_2
    iget-object v2, v2, Lcom/truecaller/search/KeyedContactDto;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/search/KeyedContactDto$KeyedContact;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 20
    iget-object v10, v7, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->value:Lcom/truecaller/data/dto/ContactDto$Contact;

    invoke-static {v0, v5, v10}, Le/a/l4/k;->f(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Contact;)V

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v9, :cond_3

    if-eqz v4, :cond_4

    .line 22
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, v7, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->key:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    iget-object v7, v7, Lcom/truecaller/search/KeyedContactDto$KeyedContact;->key:Ljava/lang/String;

    :goto_4
    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_7

    .line 23
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    .line 25
    :cond_6
    invoke-static {v3}, Le/a/b0/q/b0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    move-wide/from16 v7, v21

    .line 26
    invoke-static {v0, v3, v6, v7, v8}, Le/a/l4/k;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    move-wide/from16 v21, v7

    goto :goto_5

    .line 27
    :cond_7
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v2

    invoke-static {v2, v0, v5}, Le/a/l4/k;->i(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 28
    :cond_8
    iget-object v0, v1, Lx3/a0;->a:Lu3/k0;

    .line 29
    iget-object v0, v0, Lu3/k0;->g:Lu3/z;

    const-string v2, "tc-event-id"

    .line 30
    invoke-virtual {v0, v2}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 31
    new-instance v0, Le/a/f4/g/t;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v2, v15

    move-object v15, v0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v20}, Le/a/f4/g/t;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Pagination;Le/a/k3/k/a;)V

    .line 32
    iget-object v1, v1, Lx3/a0;->a:Lu3/k0;

    .line 33
    iget-object v1, v1, Lu3/k0;->g:Lu3/z;

    .line 34
    invoke-static {v0, v1}, Lx3/a0;->c(Ljava/lang/Object;Lu3/z;)Lx3/a0;

    move-result-object v0

    return-object v0

    .line 35
    :cond_9
    iget-object v0, v1, Lx3/a0;->c:Lu3/l0;

    .line 36
    iget-object v1, v1, Lx3/a0;->a:Lu3/k0;

    .line 37
    invoke-static {v0, v1}, Lx3/a0;->a(Lu3/l0;Lu3/k0;)Lx3/a0;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/i$a;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request()Lu3/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/i$a;->a:Lx3/b;

    invoke-interface {v0}, Lx3/b;->request()Lu3/g0;

    move-result-object v0

    return-object v0
.end method
