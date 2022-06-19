.class public final Ls1/a/a/a/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ls1/a/a/a/t0;",
            "Ljava/lang/ref/WeakReference<",
            "Ls1/a/a/a/v0/b/j1/a/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ls1/a/a/a/j0;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ls1/a/a/a/v0/b/j1/a/i;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls1/a/a/a/v0/b/j1/a/i;"
        }
    .end annotation

    const-string v0, "$this$getOrCreateModule"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p0 .. p0}, Ls1/a/a/a/v0/b/j1/b/b;->e(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    new-instance v1, Ls1/a/a/a/t0;

    invoke-direct {v1, v0}, Ls1/a/a/a/t0;-><init>(Ljava/lang/ClassLoader;)V

    .line 3
    sget-object v2, Ls1/a/a/a/j0;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/j1/a/i;

    if-eqz v4, :cond_0

    const-string v0, "it"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 5
    :cond_0
    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    :cond_1
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    const-string v3, "classLoader"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v14, Ls1/a/a/a/v0/l/e;

    move-object v13, v14

    const-string v4, "RuntimeModuleData"

    invoke-direct {v14, v4}, Ls1/a/a/a/v0/l/e;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v12, Ls1/a/a/a/v0/a/p/h;

    sget-object v4, Ls1/a/a/a/v0/a/p/h$a;->a:Ls1/a/a/a/v0/a/p/h$a;

    invoke-direct {v12, v14, v4}, Ls1/a/a/a/v0/a/p/h;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/p/h$a;)V

    .line 9
    new-instance v15, Ls1/a/a/a/v0/b/h1/a0;

    move-object/from16 v27, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<runtime module for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls1/a/a/a/v0/f/e;->h(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v4, "Name.special(\"<runtime module for $classLoader>\")"

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    move-object v4, v15

    move-object v6, v14

    move-object v7, v12

    invoke-direct/range {v4 .. v11}, Ls1/a/a/a/v0/b/h1/a0;-><init>(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/g/a;Ljava/util/Map;Ls1/a/a/a/v0/f/e;I)V

    .line 10
    iget-object v4, v12, Ls1/a/a/a/v0/a/g;->d:Ls1/a/a/a/v0/l/m;

    new-instance v5, Ls1/a/a/a/v0/a/h;

    invoke-direct {v5, v12, v15}, Ls1/a/a/a/v0/a/h;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/b/h1/a0;)V

    invoke-interface {v4, v5}, Ls1/a/a/a/v0/l/m;->f(Ls1/z/b/a;)Ljava/lang/Object;

    const-string v4, "moduleDescriptor"

    .line 11
    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v15, v12, Ls1/a/a/a/v0/a/p/h;->f:Ls1/a/a/a/v0/b/a0;

    const/4 v11, 0x1

    .line 13
    iput-boolean v11, v12, Ls1/a/a/a/v0/a/p/h;->g:Z

    .line 14
    new-instance v10, Ls1/a/a/a/v0/b/j1/a/f;

    move-object v9, v15

    move-object v15, v10

    invoke-direct {v10, v0}, Ls1/a/a/a/v0/b/j1/a/f;-><init>(Ljava/lang/ClassLoader;)V

    .line 15
    new-instance v8, Ls1/a/a/a/v0/d/b/d;

    move-object/from16 v16, v8

    invoke-direct {v8}, Ls1/a/a/a/v0/d/b/d;-><init>()V

    .line 16
    new-instance v7, Ls1/a/a/a/v0/d/a/d0/l;

    move-object/from16 v23, v7

    invoke-direct {v7}, Ls1/a/a/a/v0/d/a/d0/l;-><init>()V

    .line 17
    new-instance v6, Ls1/a/a/a/v0/b/b0;

    invoke-direct {v6, v14, v9}, Ls1/a/a/a/v0/b/b0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V

    .line 18
    sget-object v5, Ls1/a/a/a/v0/d/b/q$a;->a:Ls1/a/a/a/v0/d/b/q$a;

    move-object/from16 v24, v5

    .line 19
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "module"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "storageManager"

    invoke-static {v14, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v34, v1

    const-string v1, "notFoundClasses"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v35, v4

    const-string v4, "reflectKotlinClassFinder"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v36, v4

    const-string v4, "deserializedDescriptorResolver"

    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v12

    const-string v12, "singleModuleClassResolver"

    invoke-static {v7, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "packagePartProvider"

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v5, Ls1/a/a/a/v0/d/a/a;

    move-object/from16 v29, v5

    sget-object v12, Ls1/a/a/a/v0/o/i;->f:Ls1/a/a/a/v0/o/i;

    invoke-direct {v5, v14, v12}, Ls1/a/a/a/v0/d/a/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/o/i;)V

    move-object/from16 v37, v7

    .line 21
    new-instance v7, Ls1/a/a/a/v0/d/a/d0/c;

    move-object/from16 v39, v4

    move-object v4, v12

    move-object/from16 v38, v17

    move-object v12, v7

    move-object/from16 v40, v8

    .line 22
    new-instance v8, Ls1/a/a/a/v0/b/j1/a/d;

    move-object/from16 v41, v10

    move-object v10, v14

    move-object v14, v8

    invoke-direct {v8, v0}, Ls1/a/a/a/v0/b/j1/a/d;-><init>(Ljava/lang/ClassLoader;)V

    .line 23
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/j;->a:Ls1/a/a/a/v0/d/a/b0/j;

    move-object/from16 v17, v0

    const-string v8, "SignaturePropagator.DO_NOTHING"

    invoke-static {v0, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ls1/a/a/a/v0/b/j1/a/h;->b:Ls1/a/a/a/v0/b/j1/a/h;

    move-object/from16 v18, v0

    sget-object v8, Ls1/a/a/a/v0/d/a/b0/g;->a:Ls1/a/a/a/v0/d/a/b0/g;

    move-object/from16 v19, v8

    move-object/from16 v42, v0

    const-string v0, "JavaResolverCache.EMPTY"

    invoke-static {v8, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v20, Ls1/a/a/a/v0/d/a/b0/f$a;->a:Ls1/a/a/a/v0/d/a/b0/f$a;

    move-object/from16 v43, v8

    new-instance v8, Ls1/a/a/a/v0/j/x/b;

    move-object/from16 v21, v8

    invoke-direct {v8, v10, v2}, Ls1/a/a/a/v0/j/x/b;-><init>(Ls1/a/a/a/v0/l/m;Ljava/lang/Iterable;)V

    sget-object v22, Ls1/a/a/a/v0/b/j1/a/j;->a:Ls1/a/a/a/v0/b/j1/a/j;

    .line 25
    sget-object v25, Ls1/a/a/a/v0/b/u0$a;->a:Ls1/a/a/a/v0/b/u0$a;

    sget-object v8, Ls1/a/a/a/v0/c/a/c$a;->a:Ls1/a/a/a/v0/c/a/c$a;

    move-object/from16 v26, v8

    move-object/from16 v44, v0

    .line 26
    new-instance v0, Ls1/a/a/a/v0/a/j;

    move-object/from16 v28, v0

    invoke-direct {v0, v9, v6}, Ls1/a/a/a/v0/a/j;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;)V

    .line 27
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/l;

    move-object/from16 v30, v0

    move-object/from16 v45, v2

    new-instance v2, Ls1/a/a/a/v0/d/a/g0/d;

    move-object/from16 v46, v8

    sget-object v8, Ls1/a/a/a/v0/d/a/d0/d$a;->a:Ls1/a/a/a/v0/d/a/d0/d$a;

    move-object/from16 v32, v8

    invoke-direct {v2, v8}, Ls1/a/a/a/v0/d/a/g0/d;-><init>(Ls1/a/a/a/v0/d/a/d0/d;)V

    invoke-direct {v0, v5, v4, v2}, Ls1/a/a/a/v0/d/a/g0/l;-><init>(Ls1/a/a/a/v0/d/a/a;Ls1/a/a/a/v0/o/i;Ls1/a/a/a/v0/d/a/g0/d;)V

    .line 28
    sget-object v31, Ls1/a/a/a/v0/d/a/q$a;->a:Ls1/a/a/a/v0/d/a/q$a;

    sget-object v0, Ls1/a/a/a/v0/m/l1/k;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    move-object/from16 v33, v0

    .line 31
    invoke-direct/range {v12 .. v33}, Ls1/a/a/a/v0/d/a/d0/c;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/a/p;Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/d/b/d;Ls1/a/a/a/v0/d/a/b0/j;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/d/a/b0/g;Ls1/a/a/a/v0/d/a/b0/f;Ls1/a/a/a/v0/j/x/a;Ls1/a/a/a/v0/d/a/e0/b;Ls1/a/a/a/v0/d/a/d0/j;Ls1/a/a/a/v0/d/b/q;Ls1/a/a/a/v0/b/u0;Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/a/j;Ls1/a/a/a/v0/d/a/a;Ls1/a/a/a/v0/d/a/g0/l;Ls1/a/a/a/v0/d/a/q;Ls1/a/a/a/v0/d/a/d0/d;Ls1/a/a/a/v0/m/l1/k;)V

    .line 32
    new-instance v2, Ls1/a/a/a/v0/d/a/d0/g;

    invoke-direct {v2, v7}, Ls1/a/a/a/v0/d/a/d0/g;-><init>(Ls1/a/a/a/v0/d/a/d0/c;)V

    .line 33
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "lazyJavaPackageFragmentProvider"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v36

    move-object/from16 v3, v41

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v39

    move-object/from16 v4, v40

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v12, Ls1/a/a/a/v0/d/b/e;

    invoke-direct {v12, v3, v4}, Ls1/a/a/a/v0/d/b/e;-><init>(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/d/b/d;)V

    .line 35
    new-instance v13, Ls1/a/a/a/v0/d/b/c;

    invoke-direct {v13, v9, v6, v10, v3}, Ls1/a/a/a/v0/d/b/c;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;)V

    .line 36
    sget-object v15, Ls1/a/a/a/v0/k/b/k$a;->a:Ls1/a/a/a/v0/k/b/k$a;

    .line 37
    sget-object v5, Ls1/a/a/a/v0/k/b/i;->a:Ls1/a/a/a/v0/k/b/i$a;

    .line 38
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v14, Ls1/a/a/a/v0/k/b/i$a;->a:Ls1/a/a/a/v0/k/b/i;

    .line 40
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v35

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "configuration"

    invoke-static {v15, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "classDataFinder"

    invoke-static {v12, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "annotationAndConstantLoader"

    invoke-static {v13, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "packageFragmentProvider"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorReporter"

    move-object/from16 v11, v42

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lookupTracker"

    move-object/from16 v8, v46

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contractDeserializer"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kotlinTypeChecker"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v9}, Ls1/a/a/a/v0/b/h1/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v1

    instance-of v5, v1, Ls1/a/a/a/v0/a/p/h;

    const/4 v7, 0x0

    if-nez v5, :cond_2

    move-object v1, v7

    :cond_2
    check-cast v1, Ls1/a/a/a/v0/a/p/h;

    .line 42
    new-instance v5, Ls1/a/a/a/v0/k/b/j;

    .line 43
    sget-object v16, Ls1/a/a/a/v0/k/b/t$a;->a:Ls1/a/a/a/v0/k/b/t$a;

    sget-object v17, Ls1/a/a/a/v0/d/b/f;->a:Ls1/a/a/a/v0/d/b/f;

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {v1}, Ls1/a/a/a/v0/a/p/h;->N()Ls1/a/a/a/v0/a/p/l;

    move-result-object v18

    if-eqz v18, :cond_3

    goto :goto_0

    :cond_3
    sget-object v18, Ls1/a/a/a/v0/b/g1/a$a;->a:Ls1/a/a/a/v0/b/g1/a$a;

    :goto_0
    move-object/from16 v19, v18

    if-eqz v1, :cond_4

    .line 45
    invoke-virtual {v1}, Ls1/a/a/a/v0/a/p/h;->N()Ls1/a/a/a/v0/a/p/l;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Ls1/a/a/a/v0/b/g1/c$b;->a:Ls1/a/a/a/v0/b/g1/c$b;

    :goto_1
    move-object/from16 v20, v1

    .line 46
    sget-object v1, Ls1/a/a/a/v0/e/a0/b/h;->b:Ls1/a/a/a/v0/e/a0/b/h;

    .line 47
    sget-object v21, Ls1/a/a/a/v0/e/a0/b/h;->a:Ls1/a/a/a/v0/h/f;

    .line 48
    new-instance v1, Ls1/a/a/a/v0/j/x/b;

    move-object/from16 v23, v1

    move-object/from16 v41, v3

    move-object/from16 v3, v45

    invoke-direct {v1, v10, v3}, Ls1/a/a/a/v0/j/x/b;-><init>(Ls1/a/a/a/v0/l/m;Ljava/lang/Iterable;)V

    const/16 v24, 0x0

    const/high16 v25, 0x40000

    move-object v1, v5

    move-object/from16 v26, v6

    move-object v6, v10

    move-object/from16 v40, v4

    move-object/from16 v4, v37

    move-object v7, v9

    move-object/from16 v18, v8

    move-object/from16 v4, v40

    move-object/from16 v47, v43

    move-object v8, v15

    move-object/from16 v27, v9

    move-object v9, v12

    move-object v12, v10

    move-object/from16 v48, v41

    move-object v10, v13

    move-object v13, v11

    move-object v11, v2

    move-object/from16 v49, v12

    move-object/from16 v12, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v18

    move-object/from16 v28, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v3

    move-object/from16 v17, v26

    move-object/from16 v18, v22

    move-object/from16 v22, v0

    .line 49
    invoke-direct/range {v5 .. v25}, Ls1/a/a/a/v0/k/b/j;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/k/b/k;Ls1/a/a/a/v0/k/b/g;Ls1/a/a/a/v0/k/b/c;Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/k/b/t;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/k/b/q;Ljava/lang/Iterable;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/b/i;Ls1/a/a/a/v0/b/g1/a;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/m/l1/k;Ls1/a/a/a/v0/j/x/a;Ls1/a/a/a/v0/b/g1/e;I)V

    .line 50
    iput-object v1, v4, Ls1/a/a/a/v0/d/b/d;->a:Ls1/a/a/a/v0/k/b/j;

    .line 51
    new-instance v14, Ls1/a/a/a/v0/j/w/a;

    move-object/from16 v6, v44

    move-object/from16 v5, v47

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v14, v2, v5}, Ls1/a/a/a/v0/j/w/a;-><init>(Ls1/a/a/a/v0/d/a/d0/g;Ls1/a/a/a/v0/d/a/b0/g;)V

    const-string v2, "<set-?>"

    .line 52
    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v37

    .line 53
    iput-object v14, v2, Ls1/a/a/a/v0/d/a/d0/l;->a:Ls1/a/a/a/v0/j/w/a;

    .line 54
    const-class v2, Ls1/s;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 55
    new-instance v15, Ls1/a/a/a/v0/a/p/k;

    .line 56
    new-instance v6, Ls1/a/a/a/v0/b/j1/a/f;

    const-string v5, "stdlibClassLoader"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Ls1/a/a/a/v0/b/j1/a/f;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual/range {v38 .. v38}, Ls1/a/a/a/v0/a/p/h;->N()Ls1/a/a/a/v0/a/p/l;

    move-result-object v9

    invoke-virtual/range {v38 .. v38}, Ls1/a/a/a/v0/a/p/h;->N()Ls1/a/a/a/v0/a/p/l;

    move-result-object v10

    .line 57
    new-instance v13, Ls1/a/a/a/v0/j/x/b;

    move-object/from16 v2, v49

    invoke-direct {v13, v2, v3}, Ls1/a/a/a/v0/j/x/b;-><init>(Ls1/a/a/a/v0/l/m;Ljava/lang/Iterable;)V

    move-object v3, v4

    move-object v4, v15

    move-object v5, v2

    move-object/from16 v7, v27

    move-object/from16 v8, v26

    move-object/from16 v11, v28

    move-object v12, v0

    .line 58
    invoke-direct/range {v4 .. v13}, Ls1/a/a/a/v0/a/p/k;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/b/g1/a;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/k/b/k;Ls1/a/a/a/v0/m/l1/k;Ls1/a/a/a/v0/j/x/a;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ls1/a/a/a/v0/b/h1/a0;

    const/4 v4, 0x0

    move-object/from16 v5, v27

    aput-object v5, v2, v4

    .line 59
    invoke-virtual {v5, v2}, Ls1/a/a/a/v0/b/h1/a0;->N0([Ls1/a/a/a/v0/b/h1/a0;)V

    .line 60
    new-instance v2, Ls1/a/a/a/v0/b/h1/l;

    const/4 v6, 0x2

    new-array v6, v6, [Ls1/a/a/a/v0/b/f0;

    .line 61
    iget-object v7, v14, Ls1/a/a/a/v0/j/w/a;->a:Ls1/a/a/a/v0/d/a/d0/g;

    aput-object v7, v6, v4

    aput-object v15, v6, v0

    .line 62
    invoke-static {v6}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ls1/a/a/a/v0/b/h1/l;-><init>(Ljava/util/List;)V

    const-string v0, "providerForModuleContent"

    .line 63
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object v2, v5, Ls1/a/a/a/v0/b/h1/a0;->e:Ls1/a/a/a/v0/b/d0;

    .line 65
    new-instance v0, Ls1/a/a/a/v0/b/j1/a/i;

    .line 66
    new-instance v2, Ls1/a/a/a/v0/b/j1/a/a;

    move-object/from16 v4, v48

    invoke-direct {v2, v3, v4}, Ls1/a/a/a/v0/b/j1/a/a;-><init>(Ls1/a/a/a/v0/d/b/d;Ls1/a/a/a/v0/b/j1/a/f;)V

    const/4 v3, 0x0

    .line 67
    invoke-direct {v0, v1, v2, v3}, Ls1/a/a/a/v0/b/j1/a/i;-><init>(Ls1/a/a/a/v0/k/b/j;Ls1/a/a/a/v0/b/j1/a/a;Ls1/z/c/f;)V

    .line 68
    :goto_2
    :try_start_0
    sget-object v1, Ls1/a/a/a/j0;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v3, v34

    invoke-interface {v1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_6

    .line 69
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/j1/a/i;

    if-eqz v4, :cond_5

    return-object v4

    .line 70
    :cond_5
    invoke-interface {v1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v34, v3

    goto :goto_2

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    .line 71
    throw v0
.end method
