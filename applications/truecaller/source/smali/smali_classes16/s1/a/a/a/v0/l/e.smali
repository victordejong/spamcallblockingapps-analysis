.class public Ls1/a/a/a/v0/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/l/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/l/e$g;,
        Ls1/a/a/a/v0/l/e$d;,
        Ls1/a/a/a/v0/l/e$e;,
        Ls1/a/a/a/v0/l/e$m;,
        Ls1/a/a/a/v0/l/e$l;,
        Ls1/a/a/a/v0/l/e$j;,
        Ls1/a/a/a/v0/l/e$k;,
        Ls1/a/a/a/v0/l/e$i;,
        Ls1/a/a/a/v0/l/e$h;,
        Ls1/a/a/a/v0/l/e$n;,
        Ls1/a/a/a/v0/l/e$o;,
        Ls1/a/a/a/v0/l/e$f;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:Ls1/a/a/a/v0/l/m;


# instance fields
.field public final a:Ls1/a/a/a/v0/l/k;

.field public final b:Ls1/a/a/a/v0/l/e$f;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ls1/a/a/a/v0/l/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-static {v0, v1, v2}, Ls1/f0/v;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/l/e;->d:Ljava/lang/String;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/l/e$a;

    sget-object v1, Ls1/a/a/a/v0/l/e$f;->a:Ls1/a/a/a/v0/l/e$f;

    sget-object v2, Ls1/a/a/a/v0/l/d;->b:Ls1/a/a/a/v0/l/d;

    const-string v3, "NO_LOCKS"

    invoke-direct {v0, v3, v1, v2}, Ls1/a/a/a/v0/l/e$a;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/l/e$f;Ls1/a/a/a/v0/l/k;)V

    sput-object v0, Ls1/a/a/a/v0/l/e;->e:Ls1/a/a/a/v0/l/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 6
    sget-object v0, Ls1/a/a/a/v0/l/e$f;->a:Ls1/a/a/a/v0/l/e$f;

    sget v1, Ls1/a/a/a/v0/l/k;->a:I

    .line 7
    new-instance v1, Ls1/a/a/a/v0/l/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/l/c;-><init>(Ljava/util/concurrent/locks/Lock;I)V

    .line 8
    invoke-direct {p0, p1, v0, v1}, Ls1/a/a/a/v0/l/e;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/l/e$f;Ls1/a/a/a/v0/l/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ls1/a/a/a/v0/l/e$f;Ls1/a/a/a/v0/l/k;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    .line 3
    iput-object p2, p0, Ls1/a/a/a/v0/l/e;->b:Ls1/a/a/a/v0/l/e$f;

    .line 4
    iput-object p1, p0, Ls1/a/a/a/v0/l/e;->c:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/l/e;->j(I)V

    throw v0

    :cond_1
    const/4 p1, 0x5

    invoke-static {p1}, Ls1/a/a/a/v0/l/e;->j(I)V

    throw v0

    :cond_2
    const/4 p1, 0x4

    invoke-static {p1}, Ls1/a/a/a/v0/l/e;->j(I)V

    throw v0
.end method

.method public static synthetic j(I)V
    .locals 12

    const/16 v0, 0x1e

    const/16 v1, 0xe

    const/16 v2, 0xa

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager"

    const-string v8, "compute"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq p0, v9, :cond_3

    if-eq p0, v4, :cond_3

    const/4 v4, 0x5

    if-eq p0, v4, :cond_3

    const/4 v4, 0x6

    if-eq p0, v4, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v4, "debugText"

    aput-object v4, v6, v10

    goto :goto_2

    :pswitch_0
    const-string v4, "throwable"

    aput-object v4, v6, v10

    goto :goto_2

    :pswitch_1
    const-string v4, "postCompute"

    aput-object v4, v6, v10

    goto :goto_2

    :pswitch_2
    const-string v4, "onRecursiveCall"

    aput-object v4, v6, v10

    goto :goto_2

    :pswitch_3
    const-string v4, "computable"

    aput-object v4, v6, v10

    goto :goto_2

    :pswitch_4
    const-string v4, "map"

    aput-object v4, v6, v10

    goto :goto_2

    :pswitch_5
    aput-object v7, v6, v10

    goto :goto_2

    :pswitch_6
    aput-object v8, v6, v10

    goto :goto_2

    :cond_2
    const-string v4, "lock"

    aput-object v4, v6, v10

    goto :goto_2

    :cond_3
    :pswitch_7
    const-string v4, "exceptionHandlingStrategy"

    aput-object v4, v6, v10

    :goto_2
    const-string v4, "sanitizeStackTrace"

    const-string v10, "createMemoizedFunctionWithNullableValues"

    const-string v11, "createMemoizedFunction"

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    aput-object v7, v6, v9

    goto :goto_3

    :cond_4
    aput-object v4, v6, v9

    goto :goto_3

    :cond_5
    aput-object v10, v6, v9

    goto :goto_3

    :cond_6
    aput-object v11, v6, v9

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "createWithExceptionHandling"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_8
    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_9
    aput-object v8, v6, v5

    goto :goto_4

    :pswitch_a
    const-string v4, "createNullableLazyValueWithPostCompute"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_b
    const-string v4, "createRecursionTolerantNullableLazyValue"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_c
    const-string v4, "createNullableLazyValue"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_d
    const-string v4, "createLazyValueWithPostCompute"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_e
    const-string v4, "createRecursionTolerantLazyValue"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_f
    const-string v4, "createLazyValue"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_10
    aput-object v10, v6, v5

    goto :goto_4

    :pswitch_11
    aput-object v11, v6, v5

    goto :goto_4

    :pswitch_12
    const-string v4, "replaceExceptionHandling"

    aput-object v4, v6, v5

    goto :goto_4

    :pswitch_13
    const-string v4, "<init>"

    aput-object v4, v6, v5

    :goto_4
    :pswitch_14
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method

.method public static k()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0
.end method

.method public static m(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/l/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0

    :cond_2
    const/16 p0, 0x1d

    .line 6
    invoke-static {p0}, Ls1/a/a/a/v0/l/e;->j(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(Ls1/z/b/a;Ljava/lang/Object;)Ls1/a/a/a/v0/l/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;TT;)",
            "Ls1/a/a/a/v0/l/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e$b;

    invoke-direct {v0, p0, p0, p1, p2}, Ls1/a/a/a/v0/l/e$b;-><init>(Ls1/a/a/a/v0/l/e;Ls1/a/a/a/v0/l/e;Ls1/z/b/a;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/l;)Ls1/a/a/a/v0/l/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "+TT;>;",
            "Ls1/z/b/l<",
            "-TT;",
            "Ls1/s;",
            ">;)",
            "Ls1/a/a/a/v0/l/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Ls1/a/a/a/v0/l/e$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/l/e$c;-><init>(Ls1/a/a/a/v0/l/e;Ls1/a/a/a/v0/l/e;Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/l;)V

    return-object v6
.end method

.method public c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "-TK;+TV;>;)",
            "Ls1/a/a/a/v0/l/h<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ls1/a/a/a/v0/l/e;->k()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 2
    new-instance v1, Ls1/a/a/a/v0/l/e$l;

    invoke-direct {v1, p0, v0, p1}, Ls1/a/a/a/v0/l/e$l;-><init>(Ls1/a/a/a/v0/l/e;Ljava/util/concurrent/ConcurrentMap;Ls1/z/b/l;)V

    return-object v1
.end method

.method public d()Ls1/a/a/a/v0/l/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ls1/a/a/a/v0/l/a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e$d;

    invoke-static {}, Ls1/a/a/a/v0/l/e;->k()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ls1/a/a/a/v0/l/e$d;-><init>(Ls1/a/a/a/v0/l/e;Ljava/util/concurrent/ConcurrentMap;Ls1/a/a/a/v0/l/e$a;)V

    return-object v0
.end method

.method public e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;)",
            "Ls1/a/a/a/v0/l/i<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e$j;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/l/e$j;-><init>(Ls1/a/a/a/v0/l/e;Ls1/z/b/a;)V

    return-object v0

    :cond_0
    const/16 p1, 0x11

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/l/e;->j(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Ls1/z/b/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {v0}, Ls1/a/a/a/v0/l/k;->lock()V

    .line 2
    check-cast p1, Ls1/a/a/a/v0/a/h;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/a/h;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {p1}, Ls1/a/a/a/v0/l/k;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    iget-object v1, p0, Ls1/a/a/a/v0/l/e;->b:Ls1/a/a/a/v0/l/e$f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    check-cast v1, Ls1/a/a/a/v0/l/e$f$a;

    :try_start_2
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/l/e$f$a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception p1

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/l/e;->a:Ls1/a/a/a/v0/l/k;

    invoke-interface {v0}, Ls1/a/a/a/v0/l/k;->unlock()V

    throw p1
.end method

.method public g(Ls1/z/b/a;)Ls1/a/a/a/v0/l/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;)",
            "Ls1/a/a/a/v0/l/j<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e$h;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/l/e$h;-><init>(Ls1/a/a/a/v0/l/e;Ls1/z/b/a;)V

    return-object v0
.end method

.method public h()Ls1/a/a/a/v0/l/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ls1/a/a/a/v0/l/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e$e;

    invoke-static {}, Ls1/a/a/a/v0/l/e;->k()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ls1/a/a/a/v0/l/e$e;-><init>(Ls1/a/a/a/v0/l/e;Ljava/util/concurrent/ConcurrentMap;Ls1/a/a/a/v0/l/e$a;)V

    return-object v0
.end method

.method public i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "-TK;+TV;>;)",
            "Ls1/a/a/a/v0/l/g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ls1/a/a/a/v0/l/e;->k()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 2
    new-instance v1, Ls1/a/a/a/v0/l/e$m;

    invoke-direct {v1, p0, v0, p1}, Ls1/a/a/a/v0/l/e$m;-><init>(Ls1/a/a/a/v0/l/e;Ljava/util/concurrent/ConcurrentMap;Ls1/z/b/l;)V

    return-object v1
.end method

.method public l()Ls1/a/a/a/v0/l/e$o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ls1/a/a/a/v0/l/e$o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursive call in a lazy value under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/l/e;->m(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/l/e;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
