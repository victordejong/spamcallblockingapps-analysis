.class public Ls1/a/a/a/v0/a/p/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/g1/a;
.implements Ls1/a/a/a/v0/b/g1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/p/l$a;
    }
.end annotation


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/v0/a/p/d;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/a/a/a/v0/m/e0;

.field public final e:Ls1/a/a/a/v0/l/i;

.field public final f:Ls1/a/a/a/v0/l/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/a<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/a/a/a/v0/l/i;

.field public final h:Ls1/a/a/a/v0/b/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/v0/a/p/l;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "cloneableType"

    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "notConsideredDeprecation"

    const-string v4, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/v0/a/p/l;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/l/m;Ls1/z/b/a;Ls1/z/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/a0;",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/z/b/a<",
            "+",
            "Ls1/a/a/a/v0/b/a0;",
            ">;",
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deferredOwnerModuleDescriptor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isAdditionalBuiltInsFeatureSupported"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l;->h:Ls1/a/a/a/v0/b/a0;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/a/p/d;->a:Ls1/a/a/a/v0/a/p/d;

    iput-object v0, p0, Ls1/a/a/a/v0/a/p/l;->a:Ls1/a/a/a/v0/a/p/d;

    .line 3
    invoke-static {p3}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/a/p/l;->b:Ls1/g;

    .line 4
    invoke-static {p4}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Ls1/a/a/a/v0/a/p/l;->c:Ls1/g;

    .line 5
    new-instance v1, Ls1/a/a/a/v0/a/p/m;

    new-instance p3, Ls1/a/a/a/v0/f/b;

    const-string p4, "java.io"

    invoke-direct {p3, p4}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, p1, p3}, Ls1/a/a/a/v0/a/p/m;-><init>(Ls1/a/a/a/v0/a/p/l;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V

    .line 6
    new-instance p1, Ls1/a/a/a/v0/m/h0;

    new-instance p3, Ls1/a/a/a/v0/a/p/n;

    invoke-direct {p3, p0}, Ls1/a/a/a/v0/a/p/n;-><init>(Ls1/a/a/a/v0/a/p/l;)V

    invoke-direct {p1, p2, p3}, Ls1/a/a/a/v0/m/h0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 7
    new-instance p1, Ls1/a/a/a/v0/b/h1/k;

    const-string p3, "Serializable"

    .line 8
    invoke-static {p3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    sget-object v4, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    .line 9
    sget-object v6, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const/4 v7, 0x0

    move-object v0, p1

    move-object v8, p2

    .line 10
    invoke-direct/range {v0 .. v8}, Ls1/a/a/a/v0/b/h1/k;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/f;Ljava/util/Collection;Ls1/a/a/a/v0/b/r0;ZLs1/a/a/a/v0/l/m;)V

    .line 11
    sget-object p3, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    sget-object p4, Ls1/u/u;->a:Ls1/u/u;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p4, v0}, Ls1/a/a/a/v0/b/h1/k;->N0(Ls1/a/a/a/v0/j/y/i;Ljava/util/Set;Ls1/a/a/a/v0/b/d;)V

    .line 12
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/b;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string p3, "mockSerializableClass.defaultType"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l;->d:Ls1/a/a/a/v0/m/e0;

    .line 14
    new-instance p1, Ls1/a/a/a/v0/a/p/l$b;

    invoke-direct {p1, p0, p2}, Ls1/a/a/a/v0/a/p/l$b;-><init>(Ls1/a/a/a/v0/a/p/l;Ls1/a/a/a/v0/l/m;)V

    invoke-interface {p2, p1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l;->e:Ls1/a/a/a/v0/l/i;

    .line 15
    invoke-interface {p2}, Ls1/a/a/a/v0/l/m;->d()Ls1/a/a/a/v0/l/a;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l;->f:Ls1/a/a/a/v0/l/a;

    .line 16
    new-instance p1, Ls1/a/a/a/v0/a/p/l$e;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/a/p/l$e;-><init>(Ls1/a/a/a/v0/a/p/l;)V

    invoke-interface {p2, p1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l;->g:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/q0;)Z
    .locals 5

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/p/l;->f(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/e;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    .line 3
    sget-object v2, Ls1/a/a/a/v0/b/g1/d;->a:Ls1/a/a/a/v0/f/b;

    .line 4
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/a/p/l;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    .line 6
    invoke-static {p2, v2, v2, v1}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Ls1/a/a/a/v0/d/a/d0/n/e;->N0()Ls1/a/a/a/v0/d/a/d0/n/g;

    move-result-object p1

    .line 8
    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p2

    const-string v4, "functionDescriptor.name"

    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ls1/a/a/a/v0/c/a/d;->b:Ls1/a/a/a/v0/c/a/d;

    invoke-virtual {p1, p2, v4}, Ls1/a/a/a/v0/d/a/d0/n/g;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    .line 9
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/b/q0;

    .line 11
    invoke-static {p2, v2, v2, v1}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :cond_5
    :goto_1
    return v0
.end method

.method public b(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Ls1/a/a/a/v0/d/b/s;->a:Ls1/a/a/a/v0/d/b/s;

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    const-string v2, "classDescriptor"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v2, p1

    check-cast v2, Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/d;->h:Ls1/a/a/a/v0/b/f;

    .line 3
    sget-object v3, Ls1/a/a/a/v0/b/f;->a:Ls1/a/a/a/v0/b/f;

    if-ne v2, v3, :cond_b

    invoke-virtual {p0}, Ls1/a/a/a/v0/a/p/l;->g()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/p/l;->f(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/e;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 5
    iget-object v3, p0, Ls1/a/a/a/v0/a/p/l;->a:Ls1/a/a/a/v0/a/p/d;

    invoke-static {v2}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/a/p/b;->g:Ls1/a/a/a/v0/a/p/b;

    .line 6
    sget-object v5, Ls1/a/a/a/v0/a/p/b;->f:Ls1/a/a/a/v0/a/g;

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 7
    invoke-static {v3, v4, v5, v7, v6}, Ls1/a/a/a/v0/a/p/d;->d(Ls1/a/a/a/v0/a/p/d;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/a/g;Ljava/lang/Integer;I)Ls1/a/a/a/v0/b/e;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 8
    invoke-static {v3, v2}, Le/q/f/a/d/a;->e0(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/m/x0;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/b1;->c()Ls1/a/a/a/v0/m/d1;

    move-result-object v1

    .line 9
    new-instance v4, Ls1/a/a/a/v0/a/p/l$c;

    invoke-direct {v4, v1}, Ls1/a/a/a/v0/a/p/l$c;-><init>(Ls1/a/a/a/v0/m/d1;)V

    .line 10
    iget-object v5, v2, Ls1/a/a/a/v0/d/a/d0/n/e;->n:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 11
    iget-object v5, v5, Ls1/a/a/a/v0/d/a/d0/n/g;->n:Ls1/a/a/a/v0/l/i;

    .line 12
    invoke-interface {v5}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ls1/a/a/a/v0/b/d;

    .line 15
    invoke-interface {v10}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v11

    .line 16
    invoke-virtual {v11}, Ls1/a/a/a/v0/b/r;->a()Ls1/a/a/a/v0/b/e1;

    move-result-object v11

    .line 17
    iget-boolean v11, v11, Ls1/a/a/a/v0/b/e1;->b:Z

    if-eqz v11, :cond_7

    .line 18
    invoke-interface {v3}, Ls1/a/a/a/v0/b/e;->p()Ljava/util/Collection;

    move-result-object v11

    const-string v12, "defaultKotlinVersion.constructors"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls1/a/a/a/v0/b/d;

    const-string v13, "it"

    .line 21
    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v12, v10}, Ls1/a/a/a/v0/a/p/l$c;->a(Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/j;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v11, v8

    :goto_2
    if-eqz v11, :cond_7

    .line 22
    invoke-interface {v10}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v8, :cond_6

    invoke-interface {v10}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v11

    const-string v12, "valueParameters"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "valueParameters.single()"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ls1/a/a/a/v0/b/b1;

    invoke-interface {v11}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v11

    invoke-virtual {v11}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v11

    invoke-interface {v11}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {v11}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v12

    invoke-static {v11, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v8

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_7

    .line 23
    invoke-static {v10}, Ls1/a/a/a/v0/a/g;->C(Ls1/a/a/a/v0/b/k;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 24
    sget-object v11, Ls1/a/a/a/v0/a/p/t;->g:Ls1/a/a/a/v0/a/p/t;

    .line 25
    sget-object v11, Ls1/a/a/a/v0/a/p/t;->e:Ljava/util/Set;

    const/4 v12, 0x0

    .line 26
    invoke-static {v10, v12, v12, v9}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v9

    .line 27
    invoke-static {v0, v2, v9}, Le/q/f/a/d/a;->P2(Ls1/a/a/a/v0/d/b/s;Ls1/a/a/a/v0/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v6, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 31
    check-cast v5, Ls1/a/a/a/v0/b/d;

    .line 32
    invoke-interface {v5}, Ls1/a/a/a/v0/b/v;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v6

    .line 33
    invoke-interface {v6, p1}, Ls1/a/a/a/v0/b/v$a;->o(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/v$a;

    .line 34
    move-object v7, p1

    check-cast v7, Ls1/a/a/a/v0/b/h1/b;

    invoke-virtual {v7}, Ls1/a/a/a/v0/b/h1/b;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    invoke-interface {v6, v7}, Ls1/a/a/a/v0/b/v$a;->f(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/v$a;

    .line 35
    invoke-interface {v6}, Ls1/a/a/a/v0/b/v$a;->e()Ls1/a/a/a/v0/b/v$a;

    .line 36
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/d1;->g()Ls1/a/a/a/v0/m/b1;

    move-result-object v7

    invoke-interface {v6, v7}, Ls1/a/a/a/v0/b/v$a;->b(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/b/v$a;

    .line 37
    sget-object v7, Ls1/a/a/a/v0/a/p/t;->g:Ls1/a/a/a/v0/a/p/t;

    .line 38
    sget-object v7, Ls1/a/a/a/v0/a/p/t;->f:Ljava/util/Set;

    const/4 v10, 0x0

    .line 39
    invoke-static {v5, v10, v10, v9}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {v0, v2, v5}, Le/q/f/a/d/a;->P2(Ls1/a/a/a/v0/d/b/s;Ls1/a/a/a/v0/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 42
    iget-object v5, p0, Ls1/a/a/a/v0/a/p/l;->g:Ls1/a/a/a/v0/l/i;

    sget-object v7, Ls1/a/a/a/v0/a/p/l;->i:[Ls1/a/l;

    aget-object v7, v7, v8

    invoke-static {v5, v7}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/f1/h;

    .line 43
    invoke-interface {v6, v5}, Ls1/a/a/a/v0/b/v$a;->j(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/v$a;

    .line 44
    :cond_9
    invoke-interface {v6}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Ls1/a/a/a/v0/b/d;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    return-object v3

    :cond_b
    :goto_7
    return-object v1
.end method

.method public c(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object p1

    .line 2
    sget-object v0, Ls1/a/a/a/v0/a/p/t;->g:Ls1/a/a/a/v0/a/p/t;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/a/p/t;->a(Ls1/a/a/a/v0/f/c;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ls1/a/a/a/v0/m/e0;

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l;->e:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/a/p/l;->i:[Ls1/a/l;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    const-string v1, "cloneableType"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, v3

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l;->d:Ls1/a/a/a/v0/m/e0;

    aput-object v0, p1, v2

    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v1, "fqName"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/a/p/t;->a(Ls1/a/a/a/v0/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/a/p/c;->h(Ls1/a/a/a/v0/f/c;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Class.forName(javaClassI\u2026ingleFqName().asString())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_0

    :catch_0
    :cond_2
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p0, Ls1/a/a/a/v0/a/p/l;->d:Ls1/a/a/a/v0/m/e0;

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_3
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p1
.end method

.method public d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/b/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "name"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classDescriptor"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Ls1/a/a/a/v0/a/p/a;->f:Ls1/a/a/a/v0/a/p/a;

    .line 2
    sget-object v1, Ls1/a/a/a/v0/a/p/a;->e:Ls1/a/a/a/v0/f/e;

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 4
    instance-of v1, p2, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz v1, :cond_6

    .line 5
    sget-object v1, Ls1/a/a/a/v0/a/g;->e:Ls1/a/a/a/v0/f/e;

    .line 6
    sget-object v1, Ls1/a/a/a/v0/a/k$a;->g:Ls1/a/a/a/v0/f/c;

    invoke-static {p2, v1}, Ls1/a/a/a/v0/a/g;->c(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/f/c;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Ls1/a/a/a/v0/a/g;->r(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 7
    check-cast p2, Ls1/a/a/a/v0/k/b/g0/d;

    .line 8
    iget-object v1, p2, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    const-string v4, "classDescriptor.classProto.functionList"

    .line 10
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/e/i;

    .line 13
    iget-object v5, p2, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 14
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    const-string v6, "functionProto"

    .line 15
    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget v4, v4, Ls1/a/a/a/v0/e/i;->f:I

    .line 17
    invoke-static {v5, v4}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/a/p/a;->f:Ls1/a/a/a/v0/a/p/a;

    .line 18
    sget-object v5, Ls1/a/a/a/v0/a/p/a;->e:Ls1/a/a/a/v0/f/e;

    .line 19
    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    return-object v0

    .line 20
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l;->e:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/a/p/l;->i:[Ls1/a/l;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    .line 21
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->b:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v1}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->A0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/q0;

    .line 22
    invoke-interface {p1}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object p1

    .line 23
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/b/v$a;->o(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/v$a;

    .line 24
    sget-object v0, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/v$a;->m(Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/v$a;

    .line 25
    invoke-virtual {p2}, Ls1/a/a/a/v0/b/h1/b;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/v$a;->f(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/v$a;

    .line 26
    invoke-virtual {p2}, Ls1/a/a/a/v0/b/h1/b;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/b/v$a;->a(Ls1/a/a/a/v0/b/n0;)Ls1/a/a/a/v0/b/v$a;

    .line 27
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast p1, Ls1/a/a/a/v0/b/q0;

    .line 28
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 29
    :cond_6
    invoke-virtual {p0}, Ls1/a/a/a/v0/a/p/l;->g()Z

    move-result v1

    if-nez v1, :cond_7

    return-object v0

    .line 30
    :cond_7
    new-instance v1, Ls1/a/a/a/v0/a/p/l$d;

    invoke-direct {v1, p1}, Ls1/a/a/a/v0/a/p/l$d;-><init>(Ls1/a/a/a/v0/f/e;)V

    .line 31
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/a/p/l;->f(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/e;

    move-result-object p1

    const/4 v4, 0x3

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz p1, :cond_16

    .line 32
    iget-object v8, p0, Ls1/a/a/a/v0/a/p/l;->a:Ls1/a/a/a/v0/a/p/d;

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v9

    sget-object v10, Ls1/a/a/a/v0/a/p/b;->g:Ls1/a/a/a/v0/a/p/b;

    .line 33
    sget-object v10, Ls1/a/a/a/v0/a/p/b;->f:Ls1/a/a/a/v0/a/g;

    .line 34
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "fqName"

    invoke-static {v9, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "builtIns"

    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    .line 35
    invoke-static {v8, v9, v10, v6, v11}, Ls1/a/a/a/v0/a/p/d;->d(Ls1/a/a/a/v0/a/p/d;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/a/g;Ljava/lang/Integer;I)Ls1/a/a/a/v0/b/e;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 36
    sget-object v9, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-static {v8}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v9

    .line 37
    sget-object v11, Ls1/a/a/a/v0/a/p/c;->k:Ljava/util/HashMap;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls1/a/a/a/v0/f/b;

    if-eqz v9, :cond_8

    new-array v7, v7, [Ls1/a/a/a/v0/b/e;

    aput-object v8, v7, v3

    .line 38
    invoke-virtual {v10, v9}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v8

    const-string v9, "builtIns.getBuiltInClass\u2026otlinMutableAnalogFqName)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v7, v2

    invoke-static {v7}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_4

    .line 39
    :cond_8
    invoke-static {v8}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    .line 40
    :cond_9
    sget-object v2, Ls1/u/u;->a:Ls1/u/u;

    .line 41
    :goto_4
    invoke-static {v2}, Ls1/u/i;->R(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/b/e;

    if-eqz v7, :cond_16

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 44
    check-cast v8, Ls1/a/a/a/v0/b/e;

    .line 45
    invoke-static {v8}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const-string v2, "set"

    .line 46
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v2, Ls1/a/a/a/v0/o/m;

    invoke-direct {v2, v6}, Ls1/a/a/a/v0/o/m;-><init>(Ls1/z/c/f;)V

    invoke-virtual {v2, v0}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l;->a:Ls1/a/a/a/v0/a/p/d;

    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/a/p/d;->b(Ls1/a/a/a/v0/b/e;)Z

    move-result v0

    .line 49
    iget-object v8, p0, Ls1/a/a/a/v0/a/p/l;->f:Ls1/a/a/a/v0/l/a;

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v9

    new-instance v10, Ls1/a/a/a/v0/a/p/o;

    invoke-direct {v10, p1, v7}, Ls1/a/a/a/v0/a/p/o;-><init>(Ls1/a/a/a/v0/d/a/d0/n/e;Ls1/a/a/a/v0/b/e;)V

    check-cast v8, Ls1/a/a/a/v0/l/e$d;

    invoke-virtual {v8, v9, v10}, Ls1/a/a/a/v0/l/e$d;->c(Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/e;

    .line 50
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    const-string v7, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/a/p/l$d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ls1/a/a/a/v0/b/q0;

    .line 54
    invoke-interface {v8}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v9

    sget-object v10, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    if-eq v9, v10, :cond_c

    goto/16 :goto_a

    .line 55
    :cond_c
    invoke-interface {v8}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Ls1/a/a/a/v0/b/r;->a()Ls1/a/a/a/v0/b/e1;

    move-result-object v9

    .line 57
    iget-boolean v9, v9, Ls1/a/a/a/v0/b/e1;->b:Z

    if-nez v9, :cond_d

    goto/16 :goto_a

    .line 58
    :cond_d
    invoke-static {v8}, Ls1/a/a/a/v0/a/g;->C(Ls1/a/a/a/v0/b/k;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto/16 :goto_a

    .line 59
    :cond_e
    invoke-interface {v8}, Ls1/a/a/a/v0/b/v;->e()Ljava/util/Collection;

    move-result-object v9

    const-string v10, "analogueMember.overriddenDescriptors"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    goto :goto_7

    .line 61
    :cond_f
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/a/a/a/v0/b/v;

    const-string v11, "it"

    .line 62
    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v10

    const-string v11, "it.containingDeclaration"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-virtual {v2, v10}, Ls1/a/a/a/v0/o/m;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v9, 0x1

    goto :goto_8

    :cond_11
    :goto_7
    move v9, v3

    :goto_8
    if-eqz v9, :cond_12

    goto :goto_a

    .line 63
    :cond_12
    invoke-interface {v8}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v9

    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Ls1/a/a/a/v0/b/e;

    .line 64
    invoke-static {v8, v3, v3, v4}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v10

    .line 65
    sget-object v11, Ls1/a/a/a/v0/a/p/t;->g:Ls1/a/a/a/v0/a/p/t;

    .line 66
    sget-object v11, Ls1/a/a/a/v0/a/p/t;->d:Ljava/util/Set;

    .line 67
    sget-object v12, Ls1/a/a/a/v0/d/b/s;->a:Ls1/a/a/a/v0/d/b/s;

    invoke-static {v12, v9, v10}, Le/q/f/a/d/a;->P2(Ls1/a/a/a/v0/d/b/s;Ls1/a/a/a/v0/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v0

    if-eqz v9, :cond_13

    const/4 v8, 0x1

    goto :goto_9

    .line 68
    :cond_13
    invoke-static {v8}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 69
    sget-object v9, Ls1/a/a/a/v0/a/p/r;->a:Ls1/a/a/a/v0/a/p/r;

    .line 70
    new-instance v10, Ls1/a/a/a/v0/a/p/s;

    invoke-direct {v10, p0}, Ls1/a/a/a/v0/a/p/s;-><init>(Ls1/a/a/a/v0/a/p/l;)V

    .line 71
    invoke-static {v8, v9, v10}, Ls1/a/a/a/v0/f/d;->I1(Ljava/util/Collection;Ls1/a/a/a/v0/o/c;Ls1/z/b/l;)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "DFS.ifAny<CallableMember\u2026lassDescriptor)\n        }"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_9
    if-nez v8, :cond_14

    const/4 v8, 0x1

    goto :goto_b

    :cond_14
    :goto_a
    move v8, v3

    :goto_b
    if-eqz v8, :cond_b

    .line 72
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_15
    move-object v0, v1

    .line 73
    :cond_16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 75
    check-cast v1, Ls1/a/a/a/v0/b/q0;

    .line 76
    invoke-interface {v1}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ls1/a/a/a/v0/b/e;

    .line 77
    invoke-static {v2, p2}, Le/q/f/a/d/a;->e0(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/m/x0;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/b1;->c()Ls1/a/a/a/v0/m/d1;

    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/b/v;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/v;

    move-result-object v2

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ls1/a/a/a/v0/b/q0;

    .line 80
    invoke-interface {v2}, Ls1/a/a/a/v0/b/q0;->n()Ls1/a/a/a/v0/b/v$a;

    move-result-object v2

    .line 81
    invoke-interface {v2, p2}, Ls1/a/a/a/v0/b/v$a;->o(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/v$a;

    .line 82
    move-object v7, p2

    check-cast v7, Ls1/a/a/a/v0/b/h1/b;

    invoke-virtual {v7}, Ls1/a/a/a/v0/b/h1/b;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object v7

    invoke-interface {v2, v7}, Ls1/a/a/a/v0/b/v$a;->a(Ls1/a/a/a/v0/b/n0;)Ls1/a/a/a/v0/b/v$a;

    .line 83
    invoke-interface {v2}, Ls1/a/a/a/v0/b/v$a;->e()Ls1/a/a/a/v0/b/v$a;

    .line 84
    invoke-interface {v1}, Ls1/a/a/a/v0/b/v;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Ls1/a/a/a/v0/b/e;

    .line 85
    invoke-static {v1, v3, v3, v4}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v8, Ls1/z/c/c0;

    invoke-direct {v8}, Ls1/z/c/c0;-><init>()V

    iput-object v6, v8, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 87
    invoke-static {v7}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 88
    new-instance v9, Ls1/a/a/a/v0/a/p/p;

    invoke-direct {v9, p0}, Ls1/a/a/a/v0/a/p/p;-><init>(Ls1/a/a/a/v0/a/p/l;)V

    .line 89
    new-instance v10, Ls1/a/a/a/v0/a/p/q;

    invoke-direct {v10, v1, v8}, Ls1/a/a/a/v0/a/p/q;-><init>(Ljava/lang/String;Ls1/z/c/c0;)V

    .line 90
    invoke-static {v7, v9, v10}, Ls1/a/a/a/v0/f/d;->E0(Ljava/util/Collection;Ls1/a/a/a/v0/o/c;Ls1/a/a/a/v0/o/d;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "DFS.dfs<ClassDescriptor,\u2026CONSIDERED\n            })"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ls1/a/a/a/v0/a/p/l$a;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v7, 0x2

    if-eq v1, v7, :cond_18

    if-eq v1, v4, :cond_1a

    goto :goto_d

    .line 92
    :cond_18
    iget-object v1, p0, Ls1/a/a/a/v0/a/p/l;->g:Ls1/a/a/a/v0/l/i;

    sget-object v7, Ls1/a/a/a/v0/a/p/l;->i:[Ls1/a/l;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v1, v7}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/f1/h;

    .line 93
    invoke-interface {v2, v1}, Ls1/a/a/a/v0/b/v$a;->j(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/v$a;

    move-result-object v1

    const-string v7, "setAdditionalAnnotations(notConsideredDeprecation)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    .line 94
    :cond_19
    invoke-static {p2}, Le/q/f/a/d/a;->w1(Ls1/a/a/a/v0/b/e;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    move-object v1, v6

    goto :goto_e

    .line 95
    :cond_1b
    invoke-interface {v2}, Ls1/a/a/a/v0/b/v$a;->l()Ls1/a/a/a/v0/b/v$a;

    move-result-object v1

    const-string v7, "setHiddenForResolutionEverywhereBesideSupercalls()"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :goto_d
    invoke-interface {v2}, Ls1/a/a/a/v0/b/v$a;->build()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v1, Ls1/a/a/a/v0/b/q0;

    :goto_e
    if-eqz v1, :cond_17

    .line 97
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1c
    return-object p1
.end method

.method public e(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;
    .locals 2

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    const-string v1, "classDescriptor"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/a/p/l;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/p/l;->f(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/e;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ls1/a/a/a/v0/d/a/d0/n/e;->N0()Ls1/a/a/a/v0/d/a/d0/n/g;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/d/a/d0/n/k;->a()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final f(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/e;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/g;->e:Ls1/a/a/a/v0/f/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    sget-object v1, Ls1/a/a/a/v0/a/k$a;->a:Ls1/a/a/a/v0/f/c;

    invoke-static {p1, v1}, Ls1/a/a/a/v0/a/g;->c(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/f/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->L(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/c;->f()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 6
    :cond_2
    sget-object v1, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/a/p/c;->h(Ls1/a/a/a/v0/f/c;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "JavaToKotlinClassMap.map\u2026leFqName() ?: return null"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/a/p/l;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/a0;

    .line 8
    sget-object v2, Ls1/a/a/a/v0/c/a/d;->b:Ls1/a/a/a/v0/c/a/d;

    invoke-static {v1, p1, v2}, Le/q/f/a/d/a;->C2(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    instance-of v1, p1, Ls1/a/a/a/v0/d/a/d0/n/e;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/e;

    :cond_4
    return-object v0

    :cond_5
    const/16 p1, 0x67

    .line 9
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
