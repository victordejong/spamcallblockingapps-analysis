.class public final Le/a/b0/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;

.field public static final b:Ls1/g;

.field public static c:Le/a/f4/i/d;

.field public static d:Le/a/f4/c/a;

.field public static final e:Ls1/g;

.field public static final f:Le/a/b0/b/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/b0/b/a/a$a;->e:Le/a/b0/b/a/a$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/b0/b/a/a;->a:Ls1/g;

    .line 2
    sget-object v0, Le/a/b0/b/a/a$a;->c:Le/a/b0/b/a/a$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/b0/b/a/a;->b:Ls1/g;

    .line 3
    sget-object v0, Le/a/b0/b/a/a$a;->d:Le/a/b0/b/a/a$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/b0/b/a/a;->e:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/b0/b/g/b;)Lu3/e0;
    .locals 1

    const-string v0, "config"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/b0/b/a/a;->b(Le/a/b0/b/g/b;)Lu3/e0$a;

    move-result-object p0

    .line 2
    new-instance v0, Lu3/e0;

    invoke-direct {v0, p0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    return-object v0
.end method

.method public static final b(Le/a/b0/b/g/b;)Lu3/e0$a;
    .locals 17

    const-string v0, "config"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/b0/b/a/a;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/e0;

    .line 2
    invoke-virtual {v0}, Lu3/e0;->b()Lu3/e0$a;

    move-result-object v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/b0/b/g/b;->a()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/b/g/a;

    .line 4
    sget-object v3, Le/a/b0/b/a/a;->c:Le/a/f4/i/d;

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    const-string v5, "attr"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attribute"

    .line 5
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v5, v2, Le/a/b0/b/g/a$f;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    new-instance v5, Le/a/b0/b/j/d;

    iget-object v3, v3, Le/a/f4/i/d;->c:Landroid/content/Context;

    invoke-direct {v5, v3}, Le/a/b0/b/j/d;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 7
    :cond_1
    instance-of v5, v2, Le/a/b0/b/g/a$b;

    const-string v8, "restCrossDcSupport.get()"

    if-eqz v5, :cond_2

    new-instance v5, Le/a/f4/a/g;

    move-object v9, v2

    check-cast v9, Le/a/b0/b/g/a$b;

    .line 8
    iget-boolean v9, v9, Le/a/b0/b/g/a$b;->d:Z

    .line 9
    iget-object v10, v3, Le/a/f4/i/d;->h:Lo3/a;

    iget-object v3, v3, Le/a/f4/i/d;->m:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/f4/b/d;

    invoke-direct {v5, v9, v10, v3}, Le/a/f4/a/g;-><init>(ZLo3/a;Le/a/f4/b/d;)V

    goto/16 :goto_5

    .line 10
    :cond_2
    instance-of v5, v2, Le/a/b0/b/g/a$h;

    const-string v9, "accountManager.get()"

    const-string v10, "analytics.get()"

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Le/a/b0/b/g/a$h;

    .line 11
    iget-boolean v5, v5, Le/a/b0/b/g/a$h;->d:Z

    if-eqz v5, :cond_a

    .line 12
    new-instance v5, Le/a/f4/a/i;

    iget-object v8, v3, Le/a/f4/i/d;->g:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    const-string v11, "accountSettings.get()"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Le/a/b0/e/r/a;

    iget-object v11, v3, Le/a/f4/i/d;->e:Lo3/a;

    invoke-interface {v11}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Le/a/q2/a;

    iget-object v3, v3, Le/a/f4/i/d;->f:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/b0/e/l;

    invoke-direct {v5, v8, v11, v3}, Le/a/f4/a/i;-><init>(Le/a/b0/e/r/a;Le/a/q2/a;Le/a/b0/e/l;)V

    goto/16 :goto_5

    .line 13
    :cond_3
    instance-of v5, v2, Le/a/b0/b/g/a$a;

    if-eqz v5, :cond_7

    .line 14
    move-object v5, v2

    check-cast v5, Le/a/b0/b/g/a$a;

    .line 15
    iget-object v5, v5, Le/a/b0/b/g/a$a;->d:Lcom/truecaller/common/network/util/AuthRequirement;

    .line 16
    sget-object v10, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    if-eq v5, v10, :cond_4

    move v5, v7

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    if-eqz v5, :cond_5

    move-object v5, v2

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    check-cast v5, Le/a/b0/b/g/a$a;

    if-eqz v5, :cond_a

    .line 17
    new-instance v16, Le/a/b0/b/b;

    .line 18
    iget-object v10, v5, Le/a/b0/b/g/a$a;->d:Lcom/truecaller/common/network/util/AuthRequirement;

    .line 19
    sget-object v11, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    if-ne v10, v11, :cond_6

    move v11, v7

    goto :goto_3

    :cond_6
    move v11, v6

    .line 20
    :goto_3
    iget-object v15, v5, Le/a/b0/b/g/a$a;->e:Ljava/lang/String;

    .line 21
    iget-object v5, v3, Le/a/f4/i/d;->f:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v5

    check-cast v12, Le/a/b0/e/l;

    .line 22
    iget-object v13, v3, Le/a/f4/i/d;->l:Lo3/a;

    .line 23
    iget-object v3, v3, Le/a/f4/i/d;->m:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v3

    check-cast v14, Le/a/f4/b/a;

    move-object/from16 v10, v16

    .line 24
    invoke-direct/range {v10 .. v15}, Le/a/b0/b/b;-><init>(ZLe/a/b0/e/l;Lo3/a;Le/a/f4/b/a;Ljava/lang/String;)V

    move-object/from16 v5, v16

    goto/16 :goto_5

    .line 25
    :cond_7
    instance-of v5, v2, Le/a/b0/b/g/a$g;

    if-eqz v5, :cond_8

    move-object v5, v2

    check-cast v5, Le/a/b0/b/g/a$g;

    .line 26
    iget-boolean v5, v5, Le/a/b0/b/g/a$g;->d:Z

    if-eqz v5, :cond_a

    .line 27
    new-instance v5, Le/a/f4/a/h;

    iget-object v8, v3, Le/a/f4/i/d;->i:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "configManager.get()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Le/a/r2/f;

    iget-object v3, v3, Le/a/f4/i/d;->n:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v9, "forcedUpdateManager.get()"

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/x3/c;

    invoke-direct {v5, v8, v3}, Le/a/f4/a/h;-><init>(Le/a/r2/f;Le/a/x3/c;)V

    goto/16 :goto_5

    .line 28
    :cond_8
    instance-of v5, v2, Le/a/b0/b/g/a$e;

    if-eqz v5, :cond_9

    .line 29
    new-instance v5, Le/a/f4/d/a;

    iget-object v9, v3, Le/a/f4/i/d;->j:Lo3/a;

    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    const-string v11, "edgeLocationsManager.get()"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v9

    check-cast v12, Le/a/f4/b/g/b;

    iget-object v9, v3, Le/a/f4/i/d;->e:Lo3/a;

    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v9

    check-cast v13, Le/a/q2/a;

    iget-object v9, v3, Le/a/f4/i/d;->d:Lo3/a;

    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "domainResolver.get()"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v9

    check-cast v14, Le/a/f4/b/b;

    iget-object v3, v3, Le/a/f4/i/d;->m:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v3

    check-cast v15, Le/a/f4/b/d;

    move-object v3, v2

    check-cast v3, Le/a/b0/b/g/a$e;

    .line 30
    iget-boolean v3, v3, Le/a/b0/b/g/a$e;->d:Z

    move-object v11, v5

    move/from16 v16, v3

    .line 31
    invoke-direct/range {v11 .. v16}, Le/a/f4/d/a;-><init>(Le/a/f4/b/g/b;Le/a/q2/a;Le/a/f4/b/b;Le/a/f4/b/d;Z)V

    goto :goto_5

    .line 32
    :cond_9
    instance-of v5, v2, Le/a/b0/b/g/a$d;

    if-eqz v5, :cond_b

    iget-object v5, v3, Le/a/f4/i/d;->k:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/f4/b/f/b;

    if-eqz v5, :cond_a

    .line 33
    invoke-interface {v5}, Le/a/f4/b/f/b;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Le/a/f4/b/f/a;

    iget-object v3, v3, Le/a/f4/i/d;->m:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/f4/b/d;

    invoke-direct {v9, v5, v3}, Le/a/f4/b/f/a;-><init>(Le/a/f4/b/f/b;Le/a/f4/b/d;)V

    move-object v5, v9

    goto :goto_5

    :cond_a
    move-object v5, v4

    goto :goto_5

    .line 34
    :cond_b
    instance-of v5, v2, Le/a/b0/b/g/a$c;

    if-eqz v5, :cond_18

    new-instance v5, Le/a/b0/b/j/e/c;

    move-object v8, v2

    check-cast v8, Le/a/b0/b/g/a$c;

    .line 35
    iget-object v8, v8, Le/a/b0/b/g/a$c;->d:Lcom/truecaller/common/network/interceptor/useragent/UserAgentType;

    .line 36
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_d

    if-ne v8, v7, :cond_c

    .line 37
    new-instance v8, Le/a/b0/b/j/e/a;

    iget-object v3, v3, Le/a/f4/i/d;->c:Landroid/content/Context;

    invoke-direct {v8, v3}, Le/a/b0/b/j/e/a;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 38
    :cond_d
    new-instance v8, Le/a/b0/b/j/e/b;

    iget-object v9, v3, Le/a/f4/i/d;->a:Ljava/lang/String;

    iget-object v3, v3, Le/a/f4/i/d;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v3}, Le/a/b0/b/j/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_4
    invoke-direct {v5, v8}, Le/a/b0/b/j/e/c;-><init>(Le/a/b0/b/j/e/d;)V

    :goto_5
    if-eqz v5, :cond_0

    .line 40
    iget-boolean v3, v2, Le/a/b0/b/g/a;->b:Z

    if-eqz v3, :cond_e

    const-string v3, "interceptor"

    .line 41
    invoke-static {v5, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v3, v0, Lu3/e0$a;->d:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_e
    invoke-virtual {v0, v5}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    .line 44
    :goto_6
    iget-object v2, v2, Le/a/b0/b/g/a;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    const-string v3, "protocols"

    .line 45
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 47
    sget-object v3, Lu3/f0;->f:Lu3/f0;

    move-object v5, v2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    sget-object v8, Lu3/f0;->c:Lu3/f0;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_7

    :cond_f
    move v8, v6

    goto :goto_8

    :cond_10
    :goto_7
    move v8, v7

    :goto_8
    if-eqz v8, :cond_17

    .line 48
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v7, :cond_12

    :cond_11
    move v6, v7

    :cond_12
    if-eqz v6, :cond_16

    .line 49
    sget-object v3, Lu3/f0;->b:Lu3/f0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_15

    .line 50
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_14

    .line 51
    sget-object v3, Lu3/f0;->d:Lu3/f0;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v3, v0, Lu3/e0$a;->t:Ljava/util/List;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_13

    .line 53
    iput-object v4, v0, Lu3/e0$a;->D:Lu3/p0/g/k;

    .line 54
    :cond_13
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Collections.unmodifiableList(protocolsCopy)"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lu3/e0$a;->t:Ljava/util/List;

    goto/16 :goto_0

    .line 55
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols must not contain http/1.0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_18
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_19
    const-string v0, "interceptorFactory"

    .line 63
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_1a
    new-instance v1, Le/a/b0/b/j/c;

    invoke-direct {v1}, Le/a/b0/b/j/c;-><init>()V

    invoke-virtual {v0, v1}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    return-object v0
.end method

.method public static final c()Lu3/e0;
    .locals 1

    sget-object v0, Le/a/b0/b/a/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/e0;

    return-object v0
.end method
