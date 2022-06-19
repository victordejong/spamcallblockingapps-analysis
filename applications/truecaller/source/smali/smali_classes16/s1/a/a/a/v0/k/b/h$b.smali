.class public final Ls1/a/a/a/v0/k/b/h$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/h;-><init>(Ls1/a/a/a/v0/k/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/k/b/h$a;",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/h$b;->b:Ls1/a/a/a/v0/k/b/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Ls1/a/a/a/v0/k/b/h$a;

    const-string v1, "key"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Ls1/a/a/a/v0/k/b/h$b;->b:Ls1/a/a/a/v0/k/b/h;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, v0, Ls1/a/a/a/v0/k/b/h$a;->a:Ls1/a/a/a/v0/f/a;

    .line 6
    iget-object v4, v2, Ls1/a/a/a/v0/k/b/h;->b:Ls1/a/a/a/v0/k/b/j;

    .line 7
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/j;->l:Ljava/lang/Iterable;

    .line 8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/g1/b;

    .line 9
    invoke-interface {v5, v3}, Ls1/a/a/a/v0/b/g1/b;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object v6

    if-eqz v6, :cond_0

    goto/16 :goto_7

    .line 10
    :cond_1
    sget-object v4, Ls1/a/a/a/v0/k/b/h;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    .line 11
    :cond_2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/h$a;->b:Ls1/a/a/a/v0/k/b/f;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, v2, Ls1/a/a/a/v0/k/b/h;->b:Ls1/a/a/a/v0/k/b/j;

    .line 13
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->e:Ls1/a/a/a/v0/k/b/g;

    .line 14
    invoke-interface {v0, v3}, Ls1/a/a/a/v0/k/b/g;->a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/k/b/f;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_c

    .line 15
    iget-object v4, v0, Ls1/a/a/a/v0/k/b/f;->a:Ls1/a/a/a/v0/e/z/c;

    .line 16
    iget-object v5, v0, Ls1/a/a/a/v0/k/b/f;->b:Ls1/a/a/a/v0/e/c;

    .line 17
    iget-object v14, v0, Ls1/a/a/a/v0/k/b/f;->c:Ls1/a/a/a/v0/e/z/a;

    .line 18
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/f;->d:Ls1/a/a/a/v0/b/r0;

    .line 19
    invoke-virtual {v3}, Ls1/a/a/a/v0/f/a;->g()Ls1/a/a/a/v0/f/a;

    move-result-object v7

    const-string v8, "name"

    const-string v9, "classId.shortClassName"

    if-eqz v7, :cond_6

    const/4 v10, 0x2

    .line 20
    invoke-static {v2, v7, v6, v10}, Ls1/a/a/a/v0/k/b/h;->a(Ls1/a/a/a/v0/k/b/h;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/k/b/f;I)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    instance-of v7, v2, Ls1/a/a/a/v0/k/b/g0/d;

    if-nez v7, :cond_4

    move-object v2, v6

    :cond_4
    check-cast v2, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz v2, :cond_c

    .line 21
    invoke-virtual {v3}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v7, v2, Ls1/a/a/a/v0/k/b/g0/d;->l:Ls1/a/a/a/v0/b/o0;

    iget-object v8, v2, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 24
    iget-object v8, v8, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 25
    iget-object v8, v8, Ls1/a/a/a/v0/k/b/j;->r:Ls1/a/a/a/v0/m/l1/k;

    .line 26
    invoke-interface {v8}, Ls1/a/a/a/v0/m/l1/k;->c()Ls1/a/a/a/v0/m/l1/e;

    move-result-object v8

    invoke-virtual {v7, v8}, Ls1/a/a/a/v0/b/o0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/k/b/g0/d$a;

    .line 27
    invoke-virtual {v7}, Ls1/a/a/a/v0/k/b/g0/h;->m()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_6

    .line 28
    :cond_5
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    :goto_1
    move-object v8, v2

    goto/16 :goto_5

    .line 29
    :cond_6
    iget-object v7, v2, Ls1/a/a/a/v0/k/b/h;->b:Ls1/a/a/a/v0/k/b/j;

    .line 30
    iget-object v7, v7, Ls1/a/a/a/v0/k/b/j;->g:Ls1/a/a/a/v0/b/d0;

    .line 31
    invoke-virtual {v3}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    const-string v11, "classId.packageFqName"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Le/q/f/a/d/a;->g2(Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/f/b;)Ljava/util/List;

    move-result-object v7

    .line 32
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ls1/a/a/a/v0/b/c0;

    .line 33
    instance-of v12, v11, Ls1/a/a/a/v0/k/b/n;

    const/4 v13, 0x0

    const/4 v15, 0x1

    if-eqz v12, :cond_8

    check-cast v11, Ls1/a/a/a/v0/k/b/n;

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v12

    invoke-static {v12, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    check-cast v11, Ls1/a/a/a/v0/k/b/o;

    invoke-virtual {v11}, Ls1/a/a/a/v0/k/b/o;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v11

    .line 36
    instance-of v6, v11, Ls1/a/a/a/v0/k/b/g0/h;

    if-eqz v6, :cond_7

    check-cast v11, Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v11}, Ls1/a/a/a/v0/k/b/g0/h;->m()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v15

    goto :goto_3

    :cond_7
    move v6, v13

    :goto_3
    if-eqz v6, :cond_9

    :cond_8
    move v13, v15

    :cond_9
    if-eqz v13, :cond_a

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    const/4 v10, 0x0

    .line 37
    :goto_4
    move-object v8, v10

    check-cast v8, Ls1/a/a/a/v0/b/c0;

    if-eqz v8, :cond_c

    .line 38
    iget-object v7, v2, Ls1/a/a/a/v0/k/b/h;->b:Ls1/a/a/a/v0/k/b/j;

    .line 39
    new-instance v10, Ls1/a/a/a/v0/e/z/e;

    .line 40
    iget-object v2, v5, Ls1/a/a/a/v0/e/c;->t:Ls1/a/a/a/v0/e/t;

    const-string v3, "classProto.typeTable"

    .line 41
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v2}, Ls1/a/a/a/v0/e/z/e;-><init>(Ls1/a/a/a/v0/e/t;)V

    .line 42
    sget-object v2, Ls1/a/a/a/v0/e/z/g;->c:Ls1/a/a/a/v0/e/z/g$a;

    .line 43
    iget-object v3, v5, Ls1/a/a/a/v0/e/c;->v:Ls1/a/a/a/v0/e/w;

    const-string v6, "classProto.versionRequirementTable"

    .line 44
    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/e/z/g$a;->a(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/z/g;

    move-result-object v11

    const/4 v13, 0x0

    move-object v9, v4

    move-object v12, v14

    .line 45
    invoke-virtual/range {v7 .. v13}, Ls1/a/a/a/v0/k/b/j;->a(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;)Ls1/a/a/a/v0/k/b/l;

    move-result-object v2

    goto/16 :goto_1

    .line 46
    :goto_5
    new-instance v6, Ls1/a/a/a/v0/k/b/g0/d;

    move-object v7, v6

    move-object v9, v5

    move-object v10, v4

    move-object v11, v14

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Ls1/a/a/a/v0/k/b/g0/d;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v6, 0x0

    :goto_7
    return-object v6
.end method
