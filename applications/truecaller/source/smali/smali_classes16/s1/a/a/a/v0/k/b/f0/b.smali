.class public final Ls1/a/a/a/v0/k/b/f0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/a/a;


# instance fields
.field public final b:Ls1/a/a/a/v0/k/b/f0/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/k/b/f0/d;

    invoke-direct {v0}, Ls1/a/a/a/v0/k/b/f0/d;-><init>()V

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/f0/b;->b:Ls1/a/a/a/v0/k/b/f0/d;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ljava/lang/Iterable;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/b/g1/a;Z)Ls1/a/a/a/v0/b/d0;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/a/a/a/v0/b/a0;",
            "Ljava/lang/Iterable<",
            "+",
            "Ls1/a/a/a/v0/b/g1/b;",
            ">;",
            "Ls1/a/a/a/v0/b/g1/c;",
            "Ls1/a/a/a/v0/b/g1/a;",
            "Z)",
            "Ls1/a/a/a/v0/b/d0;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "builtInsModule"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "classDescriptorFactories"

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "platformDependentDeclarationFilter"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "additionalClassPartsProvider"

    invoke-static {v14, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v6, Ls1/a/a/a/v0/a/k;->o:Ljava/util/Set;

    .line 2
    new-instance v7, Ls1/a/a/a/v0/k/b/f0/b$a;

    move-object/from16 v13, p0

    iget-object v8, v13, Ls1/a/a/a/v0/k/b/f0/b;->b:Ls1/a/a/a/v0/k/b/f0/d;

    invoke-direct {v7, v8}, Ls1/a/a/a/v0/k/b/f0/b$a;-><init>(Ls1/a/a/a/v0/k/b/f0/d;)V

    .line 3
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFqNames"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadResource"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v6, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ls1/a/a/a/v0/f/b;

    .line 7
    sget-object v4, Ls1/a/a/a/v0/k/b/f0/a;->m:Ls1/a/a/a/v0/k/b/f0/a;

    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/k/b/f0/a;->a(Ls1/a/a/a/v0/f/b;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v7, v4}, Ls1/a/a/a/v0/k/b/f0/b$a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    if-eqz v5, :cond_0

    move/from16 v6, p6

    .line 9
    invoke-static {v3, v1, v2, v5, v6}, Ls1/a/a/a/v0/k/b/f0/c;->O0(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ljava/io/InputStream;Z)Ls1/a/a/a/v0/k/b/f0/c;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource not found in classpath: "

    invoke-static {v1, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v9, Ls1/a/a/a/v0/b/e0;

    move-object v6, v9

    invoke-direct {v9, v10}, Ls1/a/a/a/v0/b/e0;-><init>(Ljava/util/Collection;)V

    .line 12
    new-instance v7, Ls1/a/a/a/v0/b/b0;

    move-object v12, v7

    invoke-direct {v7, v1, v2}, Ls1/a/a/a/v0/b/b0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V

    .line 13
    new-instance v8, Ls1/a/a/a/v0/k/b/j;

    move-object v0, v8

    .line 14
    sget-object v3, Ls1/a/a/a/v0/k/b/k$a;->a:Ls1/a/a/a/v0/k/b/k$a;

    .line 15
    new-instance v5, Ls1/a/a/a/v0/k/b/m;

    move-object v4, v5

    invoke-direct {v5, v9}, Ls1/a/a/a/v0/k/b/m;-><init>(Ls1/a/a/a/v0/b/d0;)V

    .line 16
    new-instance v5, Ls1/a/a/a/v0/k/b/d;

    move-object/from16 p6, v5

    sget-object v11, Ls1/a/a/a/v0/k/b/f0/a;->m:Ls1/a/a/a/v0/k/b/f0/a;

    move-object/from16 v16, v8

    move-object/from16 v8, p6

    invoke-direct {v8, v2, v7, v11}, Ls1/a/a/a/v0/k/b/d;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/a;)V

    .line 17
    sget-object v7, Ls1/a/a/a/v0/k/b/t$a;->a:Ls1/a/a/a/v0/k/b/t$a;

    .line 18
    sget-object v8, Ls1/a/a/a/v0/k/b/p;->a:Ls1/a/a/a/v0/k/b/p;

    move-object/from16 p6, v8

    move-object/from16 v21, v16

    const-string v2, "ErrorReporter.DO_NOTHING"

    move-object/from16 v16, v9

    move-object/from16 v9, p6

    invoke-static {v9, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v9, Ls1/a/a/a/v0/c/a/c$a;->a:Ls1/a/a/a/v0/c/a/c$a;

    move-object/from16 v22, v16

    .line 20
    sget-object v2, Ls1/a/a/a/v0/k/b/q$a;->a:Ls1/a/a/a/v0/k/b/q$a;

    move-object/from16 v23, v10

    move-object v10, v2

    .line 21
    sget-object v2, Ls1/a/a/a/v0/k/b/i;->a:Ls1/a/a/a/v0/k/b/i$a;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Ls1/a/a/a/v0/k/b/i$a;->a:Ls1/a/a/a/v0/k/b/i;

    move-object v13, v2

    .line 24
    iget-object v2, v11, Ls1/a/a/a/v0/k/a;->a:Ls1/a/a/a/v0/h/f;

    move-object/from16 v16, v2

    const/16 v17, 0x0

    .line 25
    new-instance v2, Ls1/a/a/a/v0/j/x/b;

    move-object/from16 v18, v2

    sget-object v11, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {v2, v1, v11}, Ls1/a/a/a/v0/j/x/b;-><init>(Ls1/a/a/a/v0/l/m;Ljava/lang/Iterable;)V

    const/16 v19, 0x0

    const/high16 v20, 0x50000

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p4

    .line 26
    invoke-direct/range {v0 .. v20}, Ls1/a/a/a/v0/k/b/j;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/k/b/k;Ls1/a/a/a/v0/k/b/g;Ls1/a/a/a/v0/k/b/c;Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/k/b/t;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/k/b/q;Ljava/lang/Iterable;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/b/i;Ls1/a/a/a/v0/b/g1/a;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/m/l1/k;Ls1/a/a/a/v0/j/x/a;Ls1/a/a/a/v0/b/g1/e;I)V

    .line 27
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/k/b/f0/c;

    move-object/from16 v2, v21

    .line 28
    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/k/b/o;->N0(Ls1/a/a/a/v0/k/b/j;)V

    goto :goto_1

    :cond_2
    return-object v22
.end method
