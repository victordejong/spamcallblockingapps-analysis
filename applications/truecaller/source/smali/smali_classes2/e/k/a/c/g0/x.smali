.class public Le/k/a/c/g0/x;
.super Le/k/a/c/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Le/k/a/c/f0/c;


# instance fields
.field public transient a:Le/k/a/c/n0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/m<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Le/k/a/c/b0/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Le/k/a/a/i0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Le/k/a/a/k;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Le/k/a/a/e0;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Le/k/a/a/z;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Le/k/a/a/g0;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-class v2, Le/k/a/a/g;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-class v2, Le/k/a/a/u;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Le/k/a/c/g0/x;->c:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    const-class v1, Le/k/a/c/b0/c;

    aput-object v1, v0, v3

    const-class v1, Le/k/a/a/i0;

    aput-object v1, v0, v4

    const-class v1, Le/k/a/a/k;

    aput-object v1, v0, v5

    const-class v1, Le/k/a/a/e0;

    aput-object v1, v0, v6

    const-class v1, Le/k/a/a/g0;

    aput-object v1, v0, v7

    const-class v1, Le/k/a/a/g;

    aput-object v1, v0, v8

    const-class v1, Le/k/a/a/u;

    aput-object v1, v0, v9

    const-class v1, Le/k/a/a/v;

    aput-object v1, v0, v10

    sput-object v0, Le/k/a/c/g0/x;->d:[Ljava/lang/Class;

    .line 3
    :try_start_0
    sget-object v0, Le/k/a/c/f0/c;->a:Le/k/a/c/f0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-object v0, Le/k/a/c/g0/x;->e:Le/k/a/c/f0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/k/a/c/b;-><init>()V

    .line 2
    new-instance v0, Le/k/a/c/n0/m;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Le/k/a/c/n0/m;-><init>(II)V

    iput-object v0, p0, Le/k/a/c/g0/x;->a:Le/k/a/c/n0/m;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/k/a/c/g0/x;->b:Z

    return-void
.end method


# virtual methods
.method public A(Le/k/a/c/g0/c;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/c/b0/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/c;->builder()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public B(Le/k/a/c/g0/c;)Le/k/a/c/b0/e$a;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/e;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Le/k/a/c/b0/e$a;

    invoke-direct {v0, p1}, Le/k/a/c/b0/e$a;-><init>(Le/k/a/c/b0/e;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public C(Le/k/a/c/g0/b;)Le/k/a/a/w$a;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/w;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/w;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/a/w;->access()Le/k/a/a/w$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public D(Le/k/a/c/g0/b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            ")",
            "Ljava/util/List<",
            "Le/k/a/c/v;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/c;->value()[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length v0, p1

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    aget-object v3, p1, v2

    invoke-static {v3}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public E(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/j0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j0/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/g0/x;->v0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/j0/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must call method with a container or reference type (got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(Le/k/a/c/g0/b;)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Le/k/a/a/w;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/w;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/w;->defaultValue()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public G(Le/k/a/c/g0/b;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/x;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/x;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/x;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public H(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/p$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            ")",
            "Le/k/a/a/p$a;"
        }
    .end annotation

    .line 1
    const-class p1, Le/k/a/a/p;

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/p;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    return-object p1

    .line 5
    :cond_0
    sget-object p2, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    .line 6
    invoke-interface {p1}, Le/k/a/a/p;->value()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 7
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 9
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 12
    :cond_3
    invoke-interface {p1}, Le/k/a/a/p;->ignoreUnknown()Z

    move-result p2

    invoke-interface {p1}, Le/k/a/a/p;->allowGetters()Z

    move-result v2

    invoke-interface {p1}, Le/k/a/a/p;->allowSetters()Z

    move-result p1

    .line 13
    invoke-static {v1, p2, v2, p1, v0}, Le/k/a/a/p$a;->c(Ljava/util/Set;ZZZZ)Le/k/a/a/p$a;

    move-result-object p1

    return-object p1
.end method

.method public I(Le/k/a/c/g0/b;)Le/k/a/a/p$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Le/k/a/c/g0/x;->H(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/p$a;

    move-result-object p1

    return-object p1
.end method

.method public J(Le/k/a/c/g0/b;)Le/k/a/a/r$b;
    .locals 7

    .line 1
    sget-object v0, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    const-class v1, Le/k/a/a/r;

    .line 2
    invoke-virtual {p1, v1}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 3
    check-cast v1, Le/k/a/a/r;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v1, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    goto :goto_1

    .line 5
    :cond_0
    sget-object v2, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    .line 6
    invoke-interface {v1}, Le/k/a/a/r;->value()Le/k/a/a/r$a;

    move-result-object v3

    .line 7
    invoke-interface {v1}, Le/k/a/a/r;->content()Le/k/a/a/r$a;

    move-result-object v4

    if-ne v3, v0, :cond_1

    if-ne v4, v0, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v1}, Le/k/a/a/r;->valueFilter()Ljava/lang/Class;

    move-result-object v2

    .line 9
    const-class v5, Ljava/lang/Void;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    move-object v2, v6

    .line 10
    :cond_2
    invoke-interface {v1}, Le/k/a/a/r;->contentFilter()Ljava/lang/Class;

    move-result-object v1

    .line 11
    const-class v5, Ljava/lang/Void;

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v1

    .line 12
    :goto_0
    new-instance v1, Le/k/a/a/r$b;

    invoke-direct {v1, v3, v4, v2, v6}, Le/k/a/a/r$b;-><init>(Le/k/a/a/r$a;Le/k/a/a/r$a;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    :goto_1
    iget-object v2, v1, Le/k/a/a/r$b;->a:Le/k/a/a/r$a;

    if-ne v2, v0, :cond_8

    .line 14
    const-class v0, Le/k/a/c/b0/f;

    .line 15
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 16
    check-cast p1, Le/k/a/c/b0/f;

    if-eqz p1, :cond_8

    .line 17
    invoke-interface {p1}, Le/k/a/c/b0/f;->include()Le/k/a/c/b0/f$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    sget-object p1, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    invoke-virtual {v1, p1}, Le/k/a/a/r$b;->b(Le/k/a/a/r$a;)Le/k/a/a/r$b;

    move-result-object p1

    goto :goto_2

    .line 19
    :cond_5
    sget-object p1, Le/k/a/a/r$a;->e:Le/k/a/a/r$a;

    invoke-virtual {v1, p1}, Le/k/a/a/r$b;->b(Le/k/a/a/r$a;)Le/k/a/a/r$b;

    move-result-object p1

    goto :goto_2

    .line 20
    :cond_6
    sget-object p1, Le/k/a/a/r$a;->b:Le/k/a/a/r$a;

    invoke-virtual {v1, p1}, Le/k/a/a/r$b;->b(Le/k/a/a/r$a;)Le/k/a/a/r$b;

    move-result-object p1

    goto :goto_2

    .line 21
    :cond_7
    sget-object p1, Le/k/a/a/r$a;->a:Le/k/a/a/r$a;

    invoke-virtual {v1, p1}, Le/k/a/a/r$b;->b(Le/k/a/a/r$a;)Le/k/a/a/r$b;

    move-result-object p1

    :goto_2
    move-object v1, p1

    :cond_8
    :goto_3
    return-object v1
.end method

.method public K(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/s$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            ")",
            "Le/k/a/a/s$a;"
        }
    .end annotation

    .line 1
    const-class p1, Le/k/a/a/s;

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/s;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Le/k/a/a/s$a;->b:Le/k/a/a/s$a;

    return-object p1

    .line 5
    :cond_0
    new-instance p2, Le/k/a/a/s$a;

    invoke-interface {p1}, Le/k/a/a/s;->value()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 11
    :cond_3
    invoke-direct {p2, v0}, Le/k/a/a/s$a;-><init>(Ljava/util/Set;)V

    return-object p2
.end method

.method public L(Le/k/a/c/g0/b;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/w;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/w;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/a/w;->index()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public M(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/j0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j0/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le/k/a/c/i;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Le/k/a/b/z/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/g0/x;->v0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/j0/g;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N(Le/k/a/c/g0/i;)Le/k/a/c/b$a;
    .locals 2

    .line 1
    const-class v0, Le/k/a/a/u;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/u;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/k/a/a/u;->value()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Le/k/a/c/b$a;

    sget-object v1, Le/k/a/c/b$a$a;->a:Le/k/a/c/b$a$a;

    invoke-direct {v0, v1, p1}, Le/k/a/c/b$a;-><init>(Le/k/a/c/b$a$a;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    const-class v0, Le/k/a/a/g;

    .line 7
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 8
    check-cast p1, Le/k/a/a/g;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Le/k/a/a/g;->value()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Le/k/a/c/b$a;

    sget-object v1, Le/k/a/c/b$a$a;->b:Le/k/a/c/b$a$a;

    invoke-direct {v0, v1, p1}, Le/k/a/c/b$a;-><init>(Le/k/a/c/b$a$a;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public O(Le/k/a/c/c0/k;Le/k/a/c/g0/g;Le/k/a/c/v;)Le/k/a/c/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/g;",
            "Le/k/a/c/v;",
            ")",
            "Le/k/a/c/v;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public P(Le/k/a/c/g0/c;)Le/k/a/c/v;
    .locals 3

    .line 1
    const-class v0, Le/k/a/a/a0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/a0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/a0;->namespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 6
    :goto_0
    invoke-interface {p1}, Le/k/a/a/a0;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Le/k/a/c/v;->b(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1
.end method

.method public Q(Le/k/a/c/g0/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/f;->contentConverter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Le/k/a/c/n0/i$a;

    invoke-virtual {p0, p1, v0}, Le/k/a/c/g0/x;->u0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public R(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/f;->converter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Le/k/a/c/n0/i$a;

    invoke-virtual {p0, p1, v0}, Le/k/a/c/g0/x;->u0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public S(Le/k/a/c/g0/c;)[Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/y;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/y;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/y;->value()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public T(Le/k/a/c/g0/b;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/y;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/y;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/a/y;->alphabetic()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public U(Le/k/a/c/g0/b;)Le/k/a/c/b0/f$b;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/f;->typing()Le/k/a/c/b0/f$b;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public V(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/c/b0/f;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/k/a/c/b0/f;->using()Ljava/lang/Class;

    move-result-object v0

    .line 5
    const-class v1, Le/k/a/c/n$a;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    const-class v0, Le/k/a/a/z;

    .line 7
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 8
    check-cast v0, Le/k/a/a/z;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Le/k/a/a/z;->value()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object p1

    .line 11
    new-instance v0, Le/k/a/c/l0/t/e0;

    invoke-direct {v0, p1}, Le/k/a/c/l0/t/e0;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public W(Le/k/a/c/g0/b;)Le/k/a/a/b0$a;
    .locals 3

    .line 1
    const-class v0, Le/k/a/a/b0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/b0;

    .line 4
    sget-object v0, Le/k/a/a/b0$a;->c:Le/k/a/a/b0$a;

    if-nez p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Le/k/a/a/b0;->nulls()Le/k/a/a/j0;

    move-result-object v1

    invoke-interface {p1}, Le/k/a/a/b0;->contentNulls()Le/k/a/a/j0;

    move-result-object p1

    .line 6
    sget-object v2, Le/k/a/a/j0;->e:Le/k/a/a/j0;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v2

    :cond_2
    if-ne v1, v2, :cond_3

    if-ne p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    new-instance v0, Le/k/a/a/b0$a;

    invoke-direct {v0, v1, p1}, Le/k/a/a/b0$a;-><init>(Le/k/a/a/j0;Le/k/a/a/j0;)V

    :goto_1
    return-object v0
.end method

.method public X(Le/k/a/c/g0/b;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            ")",
            "Ljava/util/List<",
            "Le/k/a/c/j0/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/c0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/c0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/c0;->value()[Le/k/a/a/c0$a;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 7
    new-instance v5, Le/k/a/c/j0/b;

    invoke-interface {v4}, Le/k/a/a/c0$a;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Le/k/a/a/c0$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v4}, Le/k/a/a/c0$a;->names()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 9
    new-instance v9, Le/k/a/c/j0/b;

    invoke-interface {v4}, Le/k/a/a/c0$a;->value()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public Y(Le/k/a/c/g0/c;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/f0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/f0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/f0;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Z(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Le/k/a/c/i;)Le/k/a/c/j0/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j0/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/g0/x;->v0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/j0/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            "Ljava/util/List<",
            "Le/k/a/c/l0/c;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    const-class v4, Le/k/a/c/b0/b;

    .line 2
    iget-object v5, v2, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    invoke-interface {v5, v4}, Le/k/a/c/n0/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 3
    check-cast v4, Le/k/a/c/b0/b;

    if-nez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v4}, Le/k/a/c/b0/b;->prepend()Z

    move-result v5

    .line 5
    invoke-interface {v4}, Le/k/a/c/b0/b;->attrs()[Le/k/a/c/b0/b$a;

    move-result-object v6

    .line 6
    array-length v7, v6

    const/4 v9, 0x0

    move-object v11, v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_5

    if-nez v11, :cond_1

    .line 7
    const-class v11, Ljava/lang/Object;

    .line 8
    iget-object v12, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    iget-object v12, v12, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 10
    sget-object v13, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v12, v9, v11, v13}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v11

    .line 11
    :cond_1
    aget-object v12, v6, v10

    .line 12
    invoke-interface {v12}, Le/k/a/c/b0/b$a;->required()Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Le/k/a/c/u;->h:Le/k/a/c/u;

    goto :goto_1

    :cond_2
    sget-object v13, Le/k/a/c/u;->i:Le/k/a/c/u;

    .line 13
    :goto_1
    invoke-interface {v12}, Le/k/a/c/b0/b$a;->value()Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-interface {v12}, Le/k/a/c/b0/b$a;->propName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, Le/k/a/c/b0/b$a;->propNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v15, v8}, Le/k/a/c/g0/x;->y0(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v8

    .line 15
    invoke-virtual {v8}, Le/k/a/c/v;->c()Z

    move-result v15

    if-nez v15, :cond_3

    .line 16
    invoke-static {v14}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v8

    .line 17
    :cond_3
    new-instance v15, Le/k/a/c/g0/f0;

    .line 18
    iget-object v9, v2, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 19
    invoke-direct {v15, v2, v9, v14, v11}, Le/k/a/c/g0/f0;-><init>(Le/k/a/c/g0/e0;Ljava/lang/Class;Ljava/lang/String;Le/k/a/c/i;)V

    .line 20
    invoke-interface {v12}, Le/k/a/c/b0/b$a;->include()Le/k/a/a/r$a;

    move-result-object v9

    .line 21
    invoke-static {v1, v15, v8, v13, v9}, Le/k/a/c/n0/y;->E(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/v;Le/k/a/c/u;Le/k/a/a/r$a;)Le/k/a/c/n0/y;

    move-result-object v8

    .line 22
    iget-object v9, v2, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 23
    new-instance v12, Le/k/a/c/l0/s/a;

    invoke-direct {v12, v14, v8, v9, v11}, Le/k/a/c/l0/s/a;-><init>(Ljava/lang/String;Le/k/a/c/g0/s;Le/k/a/c/n0/b;Le/k/a/c/i;)V

    if-eqz v5, :cond_4

    .line 24
    invoke-interface {v3, v10, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_0

    .line 26
    :cond_5
    invoke-interface {v4}, Le/k/a/c/b0/b;->props()[Le/k/a/c/b0/b$b;

    move-result-object v4

    .line 27
    array-length v6, v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_8

    .line 28
    aget-object v7, v4, v8

    .line 29
    invoke-interface {v7}, Le/k/a/c/b0/b$b;->required()Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Le/k/a/c/u;->h:Le/k/a/c/u;

    goto :goto_4

    :cond_6
    sget-object v9, Le/k/a/c/u;->i:Le/k/a/c/u;

    .line 30
    :goto_4
    invoke-interface {v7}, Le/k/a/c/b0/b$b;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Le/k/a/c/b0/b$b;->namespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Le/k/a/c/g0/x;->y0(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v10

    .line 31
    invoke-interface {v7}, Le/k/a/c/b0/b$b;->type()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v1, v11}, Le/k/a/c/c0/k;->d(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v11

    .line 32
    new-instance v12, Le/k/a/c/g0/f0;

    .line 33
    iget-object v13, v2, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 34
    iget-object v14, v10, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 35
    invoke-direct {v12, v2, v13, v14, v11}, Le/k/a/c/g0/f0;-><init>(Le/k/a/c/g0/e0;Ljava/lang/Class;Ljava/lang/String;Le/k/a/c/i;)V

    .line 36
    invoke-interface {v7}, Le/k/a/c/b0/b$b;->include()Le/k/a/a/r$a;

    move-result-object v13

    .line 37
    invoke-static {v1, v12, v10, v9, v13}, Le/k/a/c/n0/y;->E(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/v;Le/k/a/c/u;Le/k/a/a/r$a;)Le/k/a/c/n0/y;

    move-result-object v9

    .line 38
    invoke-interface {v7}, Le/k/a/c/b0/b$b;->value()Ljava/lang/Class;

    move-result-object v7

    .line 39
    iget-object v10, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 40
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/c0/k;->b()Z

    move-result v10

    .line 42
    invoke-static {v7, v10}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/k/a/c/l0/r;

    .line 43
    invoke-virtual {v7, v1, v2, v9, v11}, Le/k/a/c/l0/r;->p(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/l0/r;

    move-result-object v7

    if-eqz v5, :cond_7

    .line 44
    invoke-interface {v3, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 45
    :cond_7
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public a0(Le/k/a/c/g0/i;)Le/k/a/c/n0/s;
    .locals 5

    .line 1
    const-class v0, Le/k/a/a/g0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/g0;

    if-eqz p1, :cond_6

    .line 4
    invoke-interface {p1}, Le/k/a/a/g0;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    invoke-interface {p1}, Le/k/a/a/g0;->prefix()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Le/k/a/a/g0;->suffix()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 9
    new-instance v1, Le/k/a/c/n0/p;

    invoke-direct {v1, v0, p1}, Le/k/a/c/n0/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance v1, Le/k/a/c/n0/q;

    invoke-direct {v1, v0}, Le/k/a/c/n0/q;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 11
    new-instance v1, Le/k/a/c/n0/r;

    invoke-direct {v1, p1}, Le/k/a/c/n0/r;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_5
    sget-object v1, Le/k/a/c/n0/s;->a:Le/k/a/c/n0/s;

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Le/k/a/c/g0/c;Le/k/a/c/g0/g0;)Le/k/a/c/g0/g0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c;",
            "Le/k/a/c/g0/g0<",
            "*>;)",
            "Le/k/a/c/g0/g0<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/f;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    move-object v0, p2

    check-cast v0, Le/k/a/c/g0/g0$a;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, v0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    .line 7
    invoke-interface {p1}, Le/k/a/a/f;->getterVisibility()Le/k/a/a/f$a;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Le/k/a/c/g0/g0$a;->a(Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/a/f$a;

    move-result-object v1

    iget-object p2, v0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    .line 8
    invoke-interface {p1}, Le/k/a/a/f;->isGetterVisibility()Le/k/a/a/f$a;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Le/k/a/c/g0/g0$a;->a(Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/a/f$a;

    move-result-object v2

    iget-object p2, v0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    .line 9
    invoke-interface {p1}, Le/k/a/a/f;->setterVisibility()Le/k/a/a/f$a;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Le/k/a/c/g0/g0$a;->a(Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/a/f$a;

    move-result-object v3

    iget-object p2, v0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    .line 10
    invoke-interface {p1}, Le/k/a/a/f;->creatorVisibility()Le/k/a/a/f$a;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Le/k/a/c/g0/g0$a;->a(Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/a/f$a;

    move-result-object v4

    iget-object p2, v0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    .line 11
    invoke-interface {p1}, Le/k/a/a/f;->fieldVisibility()Le/k/a/a/f$a;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Le/k/a/c/g0/g0$a;->a(Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/a/f$a;

    move-result-object v5

    .line 12
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/g0/g0$a;->b(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public b0(Le/k/a/c/g0/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/i;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/i;->value()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/c/b0/c;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Le/k/a/c/j$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c0(Le/k/a/c/g0/b;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/i0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/i0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/i0;->value()[Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/f;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/c/b0/f;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Le/k/a/c/n$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            ")",
            "Le/k/a/a/h$a;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/h;

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/k/a/a/h;->mode()Le/k/a/a/h$a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-boolean v0, p0, Le/k/a/c/g0/x;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Le/k/a/c/p;->n:Le/k/a/c/p;

    .line 6
    invoke-virtual {p1, v0}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    instance-of p1, p2, Le/k/a/c/g0/e;

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Le/k/a/c/g0/x;->e:Le/k/a/c/f0/c;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Le/k/a/c/f0/c;->c(Le/k/a/c/g0/b;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Le/k/a/a/h$a;->c:Le/k/a/a/h$a;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e0(Le/k/a/c/g0/b;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/d;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/d;->enabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/c/g0/b;)Le/k/a/a/h$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/h;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/h;->mode()Le/k/a/a/h$a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f0(Le/k/a/c/g0/j;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/d;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->k(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/i;

    .line 2
    sget-object v1, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 9
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_2
    return-object v9
.end method

.method public g0(Le/k/a/c/g0/b;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/e;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/e;->enabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Le/k/a/c/g0/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/c;->contentConverter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Le/k/a/c/n0/i$a;

    invoke-virtual {p0, p1, v0}, Le/k/a/c/g0/x;->u0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    const-class p1, Le/k/a/a/t;

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/t;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/t;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public i(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/c;->converter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Le/k/a/c/n0/i$a;

    invoke-virtual {p0, p1, v0}, Le/k/a/c/g0/x;->u0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i0(Le/k/a/c/g0/b;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/h0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/h0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/h0;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/c/b0/c;->using()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Le/k/a/c/j$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j0(Le/k/a/c/g0/j;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/h0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/h0;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/a/h0;->value()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;[[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    const-class v4, Le/k/a/a/c;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Le/k/a/a/c;

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v4}, Le/k/a/a/c;->value()[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    array-length v5, p2

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    .line 8
    aget-object v7, p2, v6

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    aput-object v4, p3, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public k0(Le/k/a/c/g0/b;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/h;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Le/k/a/a/h;->mode()Le/k/a/a/h$a;

    move-result-object p1

    sget-object v0, Le/k/a/a/h$a;->d:Le/k/a/a/h$a;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5
    :cond_1
    iget-boolean v0, p0, Le/k/a/c/g0/x;->b:Z

    if-eqz v0, :cond_2

    .line 6
    instance-of v0, p1, Le/k/a/c/g0/e;

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Le/k/a/c/g0/x;->e:Le/k/a/c/f0/c;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Le/k/a/c/f0/c;->c(Le/k/a/c/g0/b;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public l(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    const-class v5, Le/k/a/a/w;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Le/k/a/a/w;

    if-nez v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {v5}, Le/k/a/a/w;->value()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 8
    array-length p1, p2

    :goto_2
    if-ge v1, p1, :cond_6

    .line 9
    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 11
    aput-object v0, p3, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object p3
.end method

.method public l0(Le/k/a/c/g0/i;)Z
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/o;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/o;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/k/a/a/o;->value()Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Le/k/a/c/g0/x;->e:Le/k/a/c/f0/c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Le/k/a/c/f0/c;->b(Le/k/a/c/g0/b;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/j;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/j;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/a/j;->value()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m0(Le/k/a/c/g0/i;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/w;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/w;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/a/w;->required()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Le/k/a/c/g0/b;)Le/k/a/a/k$d;
    .locals 13

    .line 1
    const-class v0, Le/k/a/a/k;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/k;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 4
    :cond_0
    new-instance v7, Le/k/a/a/k$d;

    .line 5
    invoke-interface {p1}, Le/k/a/a/k;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Le/k/a/a/k;->shape()Le/k/a/a/k$c;

    move-result-object v2

    invoke-interface {p1}, Le/k/a/a/k;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Le/k/a/a/k;->timezone()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {p1}, Le/k/a/a/k;->with()[Le/k/a/a/k$a;

    move-result-object v0

    invoke-interface {p1}, Le/k/a/a/k;->without()[Le/k/a/a/k$a;

    move-result-object v5

    .line 7
    array-length v6, v0

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_0
    const/4 v11, 0x1

    if-ge v9, v6, :cond_1

    aget-object v12, v0, v9

    .line 8
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 9
    :cond_1
    array-length v0, v5

    move v6, v8

    :goto_1
    if-ge v8, v0, :cond_2

    aget-object v9, v5, v8

    .line 10
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    shl-int v9, v11, v9

    or-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11
    :cond_2
    new-instance v5, Le/k/a/a/k$b;

    invoke-direct {v5, v10, v6}, Le/k/a/a/k$b;-><init>(II)V

    .line 12
    invoke-interface {p1}, Le/k/a/a/k;->lenient()Le/k/a/a/o0;

    move-result-object p1

    invoke-virtual {p1}, Le/k/a/a/o0;->a()Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Le/k/a/a/k$d;-><init>(Ljava/lang/String;Le/k/a/a/k$c;Ljava/lang/String;Ljava/lang/String;Le/k/a/a/k$b;Ljava/lang/Boolean;)V

    move-object p1, v7

    :goto_2
    return-object p1
.end method

.method public n0(Ljava/lang/annotation/Annotation;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/x;->a:Le/k/a/c/n0/m;

    invoke-virtual {v0, p1}, Le/k/a/c/n0/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Le/k/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/k/a/c/g0/x;->a:Le/k/a/c/n0/m;

    invoke-virtual {v1, p1, v0}, Le/k/a/c/n0/m;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public o(Le/k/a/c/g0/i;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Le/k/a/c/g0/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/k/a/c/g0/m;

    .line 3
    iget-object v0, p1, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Le/k/a/c/g0/x;->e:Le/k/a/c/f0/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Le/k/a/c/f0/c;->a(Le/k/a/c/g0/m;)Le/k/a/c/v;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p1, Le/k/a/c/v;->a:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method public o0(Le/k/a/c/g0/c;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/q;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/q;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/q;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public p(Le/k/a/c/g0/i;)Le/k/a/a/b$a;
    .locals 4

    .line 1
    const-class v0, Le/k/a/a/b;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0}, Le/k/a/a/b;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Le/k/a/a/b;->useInput()Le/k/a/a/o0;

    move-result-object v0

    invoke-virtual {v0}, Le/k/a/a/o0;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Le/k/a/a/b$a;->a(Ljava/lang/Object;Ljava/lang/Boolean;)Le/k/a/a/b$a;

    move-result-object v0

    .line 5
    iget-object v1, v0, Le/k/a/a/b$a;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    .line 6
    instance-of v1, p1, Le/k/a/c/g0/j;

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p1}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    move-object v1, p1

    check-cast v1, Le/k/a/c/g0/j;

    .line 9
    invoke-virtual {v1}, Le/k/a/c/g0/j;->q()I

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p1}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1, v2}, Le/k/a/c/g0/j;->s(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_1
    iget-object v1, v0, Le/k/a/a/b$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v1, Le/k/a/a/b$a;

    iget-object v0, v0, Le/k/a/a/b$a;->b:Ljava/lang/Boolean;

    invoke-direct {v1, p1, v0}, Le/k/a/a/b$a;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    move-object v0, v1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public p0(Le/k/a/c/g0/i;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/d0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->k(Ljava/lang/Class;)Z

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public q(Le/k/a/c/g0/i;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/g0/x;->p(Le/k/a/c/g0/i;)Le/k/a/a/b$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Le/k/a/a/b$a;->a:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public q0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object p1, p1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 3
    const-class v0, Le/k/a/c/b0/c;

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 5
    check-cast v0, Le/k/a/c/b0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Le/k/a/c/b0/c;->as()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 7
    iget-object v8, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v8, v2, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    if-nez v8, :cond_2

    .line 8
    invoke-virtual {p0, p3, v2}, Le/k/a/c/g0/x;->w0(Le/k/a/c/i;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 9
    :try_start_0
    invoke-virtual {p1, p3, v2, v7}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Le/k/a/c/k;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    .line 11
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v6

    invoke-virtual {p2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v4

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    const-string p2, "Failed to narrow type %s with annotation (value %s), from \'%s\': %s"

    .line 12
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_2
    :goto_2
    invoke-virtual {p3}, Le/k/a/c/i;->F()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {p3}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v2

    if-nez v0, :cond_3

    move-object v8, v1

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v0}, Le/k/a/c/b0/c;->keyAs()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_4

    .line 16
    invoke-virtual {p0, v2, v8}, Le/k/a/c/g0/x;->w0(Le/k/a/c/i;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 17
    :try_start_1
    invoke-virtual {p1, v2, v8, v7}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object v2

    .line 18
    move-object v9, p3

    check-cast v9, Le/k/a/c/m0/g;

    invoke-virtual {v9, v2}, Le/k/a/c/m0/g;->W(Le/k/a/c/i;)Le/k/a/c/m0/g;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 19
    new-instance v0, Le/k/a/c/k;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v7

    .line 20
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v6

    invoke-virtual {p2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "Failed to narrow key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 21
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_4
    :goto_4
    invoke-virtual {p3}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_5

    .line 23
    :cond_5
    invoke-interface {v0}, Le/k/a/c/b0/c;->contentAs()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p0, v2, v0}, Le/k/a/c/g0/x;->w0(Le/k/a/c/i;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 25
    :try_start_2
    invoke-virtual {p1, v2, v0, v7}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object p1

    .line 26
    invoke-virtual {p3, p1}, Le/k/a/c/i;->L(Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 27
    new-instance v2, Le/k/a/c/k;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, v6

    invoke-virtual {p2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v4

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    const-string p2, "Failed to narrow value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 29
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :goto_6
    return-object p3
.end method

.method public r(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/c;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/c/b0/c;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Le/k/a/c/o$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/i;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object p1, p1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 3
    const-class v0, Le/k/a/c/b0/f;

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 5
    check-cast v0, Le/k/a/c/b0/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Le/k/a/c/b0/f;->as()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    .line 7
    iget-object v8, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v8, v2, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-eqz v9, :cond_2

    .line 8
    invoke-virtual {p3}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object p3

    goto :goto_2

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 10
    invoke-virtual {p1, p3, v2}, Le/k/a/c/m0/o;->i(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 12
    invoke-virtual {p1, p3, v2, v7}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object p3

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p0, v8, v2}, Le/k/a/c/g0/x;->x0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 14
    invoke-virtual {p3}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object p3

    goto :goto_2

    .line 15
    :cond_5
    new-instance p1, Le/k/a/c/k;

    const-string v0, "Cannot refine serialization type %s into %s; types not related"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p3, v8, v7

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 17
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Le/k/a/c/k;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v7

    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v6

    invoke-virtual {p2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v3

    const-string p2, "Failed to widen type %s with annotation (value %s), from \'%s\': %s"

    .line 20
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {p3}, Le/k/a/c/i;->F()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 22
    invoke-virtual {p3}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v2

    if-nez v0, :cond_7

    move-object v8, v1

    goto :goto_3

    .line 23
    :cond_7
    invoke-interface {v0}, Le/k/a/c/b0/f;->keyAs()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_d

    .line 24
    iget-object v9, v2, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v9, v8, :cond_8

    move v10, v6

    goto :goto_4

    :cond_8
    move v10, v7

    :goto_4
    if-eqz v10, :cond_9

    .line 25
    invoke-virtual {v2}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object v2

    goto :goto_5

    .line 26
    :cond_9
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 27
    invoke-virtual {p1, v2, v8}, Le/k/a/c/m0/o;->i(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v2

    goto :goto_5

    .line 28
    :cond_a
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 29
    invoke-virtual {p1, v2, v8, v7}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object v2

    goto :goto_5

    .line 30
    :cond_b
    invoke-virtual {p0, v9, v8}, Le/k/a/c/g0/x;->x0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 31
    invoke-virtual {v2}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :goto_5
    check-cast p3, Le/k/a/c/m0/g;

    invoke-virtual {p3, v2}, Le/k/a/c/m0/g;->W(Le/k/a/c/i;)Le/k/a/c/m0/g;

    move-result-object p3

    goto :goto_6

    .line 33
    :cond_c
    :try_start_2
    new-instance p1, Le/k/a/c/k;

    const-string v0, "Cannot refine serialization key type %s into %s; types not related"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v7

    .line 34
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v6

    .line 35
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 36
    new-instance v0, Le/k/a/c/k;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v7

    .line 37
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v6

    invoke-virtual {p2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "Failed to widen key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 38
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :cond_d
    :goto_6
    invoke-virtual {p3}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v2

    if-eqz v2, :cond_14

    if-nez v0, :cond_e

    move-object v0, v1

    goto :goto_7

    .line 40
    :cond_e
    invoke-interface {v0}, Le/k/a/c/b0/f;->contentAs()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_14

    .line 41
    iget-object v8, v2, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v8, v0, :cond_f

    move v9, v6

    goto :goto_8

    :cond_f
    move v9, v7

    :goto_8
    if-eqz v9, :cond_10

    .line 42
    invoke-virtual {v2}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object p1

    goto :goto_9

    .line 43
    :cond_10
    :try_start_3
    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 44
    invoke-virtual {p1, v2, v0}, Le/k/a/c/m0/o;->i(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p1

    goto :goto_9

    .line 45
    :cond_11
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 46
    invoke-virtual {p1, v2, v0, v7}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object p1

    goto :goto_9

    .line 47
    :cond_12
    invoke-virtual {p0, v8, v0}, Le/k/a/c/g0/x;->x0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 48
    invoke-virtual {v2}, Le/k/a/c/i;->P()Le/k/a/c/i;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    :goto_9
    invoke-virtual {p3, p1}, Le/k/a/c/i;->L(Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object p3

    goto :goto_a

    .line 50
    :cond_13
    :try_start_4
    new-instance p1, Le/k/a/c/k;

    const-string v8, "Cannot refine serialization content type %s into %s; types not related"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v7

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v6

    .line 52
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 53
    new-instance v2, Le/k/a/c/k;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v7

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v6

    invoke-virtual {p2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v3

    const-string p2, "Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 55
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_14
    :goto_a
    return-object p3
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/x;->a:Le/k/a/c/n0/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/k/a/c/n0/m;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Le/k/a/c/n0/m;-><init>(II)V

    iput-object v0, p0, Le/k/a/c/g0/x;->a:Le/k/a/c/n0/m;

    :cond_0
    return-object p0
.end method

.method public s(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/f;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/c/b0/f;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Le/k/a/c/n$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s0(Le/k/a/c/c0/k;Le/k/a/c/g0/j;Le/k/a/c/g0/j;)Le/k/a/c/g0/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/j;",
            "Le/k/a/c/g0/j;",
            ")",
            "Le/k/a/c/g0/j;"
        }
    .end annotation

    .line 1
    const-class p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Le/k/a/c/g0/j;->s(I)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {p3, v0}, Le/k/a/c/g0/j;->s(I)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p3

    :cond_1
    if-ne v1, p1, :cond_2

    if-eq v0, p1, :cond_3

    return-object p2

    :cond_2
    if-ne v0, p1, :cond_3

    return-object p3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Le/k/a/c/g0/b;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/v;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/v;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/a/v;->value()Le/k/a/a/o0;

    move-result-object p1

    invoke-virtual {p1}, Le/k/a/a/o0;->a()Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public t0(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public u(Le/k/a/c/g0/b;)Le/k/a/c/v;
    .locals 4

    .line 1
    const-class v0, Le/k/a/a/b0;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Le/k/a/a/b0;->value()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    const-class v2, Le/k/a/a/w;

    .line 8
    invoke-virtual {p1, v2}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 9
    check-cast v2, Le/k/a/a/w;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v2}, Le/k/a/a/w;->namespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 12
    :goto_1
    invoke-interface {v2}, Le/k/a/a/w;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Le/k/a/c/v;->b(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v0, :cond_6

    .line 13
    sget-object v0, Le/k/a/c/g0/x;->d:[Ljava/lang/Class;

    .line 14
    check-cast p1, Le/k/a/c/g0/i;

    .line 15
    iget-object p1, p1, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    if-nez p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1, v0}, Le/k/a/c/g0/p;->b([Ljava/lang/Class;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    return-object v3

    .line 17
    :cond_6
    :goto_3
    sget-object p1, Le/k/a/c/v;->d:Le/k/a/c/v;

    return-object p1
.end method

.method public u0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/g0/x;->t0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public v(Le/k/a/c/g0/b;)Le/k/a/c/v;
    .locals 4

    .line 1
    const-class v0, Le/k/a/a/l;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Le/k/a/a/l;->value()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {v0}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    const-class v2, Le/k/a/a/w;

    .line 8
    invoke-virtual {p1, v2}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 9
    check-cast v2, Le/k/a/a/w;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v2}, Le/k/a/a/w;->namespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 12
    :goto_1
    invoke-interface {v2}, Le/k/a/a/w;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Le/k/a/c/v;->b(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v0, :cond_6

    .line 13
    sget-object v0, Le/k/a/c/g0/x;->c:[Ljava/lang/Class;

    .line 14
    check-cast p1, Le/k/a/c/g0/i;

    .line 15
    iget-object p1, p1, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    if-nez p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1, v0}, Le/k/a/c/g0/p;->b([Ljava/lang/Class;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    return-object v3

    .line 17
    :cond_6
    :goto_3
    sget-object p1, Le/k/a/c/v;->d:Le/k/a/c/v;

    return-object p1
.end method

.method public v0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/j0/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/b;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j0/g<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/k/a/a/e0;

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/a/e0;

    .line 4
    const-class v1, Le/k/a/c/b0/h;

    .line 5
    invoke-virtual {p2, v1}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 6
    check-cast v1, Le/k/a/c/b0/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-object v2

    .line 7
    :cond_0
    invoke-interface {v1}, Le/k/a/c/b0/h;->value()Ljava/lang/Class;

    move-result-object v1

    .line 8
    iget-object v3, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result v3

    invoke-static {v1, v3}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/j0/g;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 11
    :cond_2
    invoke-interface {v0}, Le/k/a/a/e0;->use()Le/k/a/a/e0$b;

    move-result-object v1

    sget-object v3, Le/k/a/a/e0$b;->b:Le/k/a/a/e0$b;

    if-ne v1, v3, :cond_3

    .line 12
    new-instance p1, Le/k/a/c/j0/i/o;

    invoke-direct {p1}, Le/k/a/c/j0/i/o;-><init>()V

    .line 13
    iput-object v3, p1, Le/k/a/c/j0/i/o;->a:Le/k/a/a/e0$b;

    .line 14
    iput-object v2, p1, Le/k/a/c/j0/i/o;->f:Le/k/a/c/j0/f;

    .line 15
    iput-object v2, p1, Le/k/a/c/j0/i/o;->c:Ljava/lang/String;

    return-object p1

    .line 16
    :cond_3
    new-instance v1, Le/k/a/c/j0/i/o;

    invoke-direct {v1}, Le/k/a/c/j0/i/o;-><init>()V

    .line 17
    :goto_0
    const-class v3, Le/k/a/c/b0/g;

    .line 18
    invoke-virtual {p2, v3}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 19
    check-cast v3, Le/k/a/c/b0/g;

    if-nez v3, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    invoke-interface {v3}, Le/k/a/c/b0/g;->value()Ljava/lang/Class;

    move-result-object v2

    .line 21
    iget-object v3, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 22
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    invoke-static {v2, p1}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Le/k/a/c/j0/f;

    :goto_1
    if-eqz v2, :cond_5

    .line 24
    invoke-interface {v2, p3}, Le/k/a/c/j0/f;->d(Le/k/a/c/i;)V

    .line 25
    :cond_5
    invoke-interface {v0}, Le/k/a/a/e0;->use()Le/k/a/a/e0$b;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Le/k/a/c/j0/g;->c(Le/k/a/a/e0$b;Le/k/a/c/j0/f;)Le/k/a/c/j0/g;

    move-result-object p1

    .line 26
    invoke-interface {v0}, Le/k/a/a/e0;->include()Le/k/a/a/e0$a;

    move-result-object p3

    .line 27
    sget-object v1, Le/k/a/a/e0$a;->d:Le/k/a/a/e0$a;

    if-ne p3, v1, :cond_6

    instance-of p2, p2, Le/k/a/c/g0/c;

    if-eqz p2, :cond_6

    .line 28
    sget-object p3, Le/k/a/a/e0$a;->a:Le/k/a/a/e0$a;

    .line 29
    :cond_6
    invoke-interface {p1, p3}, Le/k/a/c/j0/g;->g(Le/k/a/a/e0$a;)Le/k/a/c/j0/g;

    move-result-object p1

    .line 30
    invoke-interface {v0}, Le/k/a/a/e0;->property()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/k/a/c/j0/g;->d(Ljava/lang/String;)Le/k/a/c/j0/g;

    move-result-object p1

    .line 31
    invoke-interface {v0}, Le/k/a/a/e0;->defaultImpl()Ljava/lang/Class;

    move-result-object p2

    .line 32
    const-class p3, Le/k/a/a/e0$c;

    if-eq p2, p3, :cond_7

    invoke-virtual {p2}, Ljava/lang/Class;->isAnnotation()Z

    move-result p3

    if-nez p3, :cond_7

    .line 33
    invoke-interface {p1, p2}, Le/k/a/c/j0/g;->e(Ljava/lang/Class;)Le/k/a/c/j0/g;

    move-result-object p1

    .line 34
    :cond_7
    invoke-interface {v0}, Le/k/a/a/e0;->visible()Z

    move-result p2

    invoke-interface {p1, p2}, Le/k/a/c/j0/g;->a(Z)Le/k/a/c/j0/g;

    move-result-object p1

    return-object p1
.end method

.method public w(Le/k/a/c/g0/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/d;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/k/a/c/b0/d;->value()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final w0(Le/k/a/c/i;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/i;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Le/k/a/c/n0/g;->F(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/k/a/c/i;->u(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Le/k/a/c/n0/g;->F(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public x(Le/k/a/c/g0/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/b0/f;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/c/b0/f;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/k/a/c/b0/f;->nullsUsing()Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class v0, Le/k/a/c/n$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Le/k/a/c/n0/g;->F(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Le/k/a/c/n0/g;->F(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public y(Le/k/a/c/g0/b;)Le/k/a/c/g0/a0;
    .locals 7

    .line 1
    const-class v0, Le/k/a/a/m;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/m;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Le/k/a/a/m;->generator()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/k/a/a/l0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Le/k/a/a/m;->property()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v2

    .line 6
    new-instance v0, Le/k/a/c/g0/a0;

    invoke-interface {p1}, Le/k/a/a/m;->scope()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1}, Le/k/a/a/m;->generator()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1}, Le/k/a/a/m;->resolver()Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Le/k/a/c/g0/a0;-><init>(Le/k/a/c/v;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public y0(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Le/k/a/c/v;->d:Le/k/a/c/v;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Le/k/a/c/v;->b(Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_0
    invoke-static {p1}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p1

    return-object p1
.end method

.method public z(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/c/g0/a0;
    .locals 6

    .line 1
    const-class v0, Le/k/a/a/n;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/g0/b;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 3
    check-cast p1, Le/k/a/a/n;

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 4
    sget-object p2, Le/k/a/c/g0/a0;->f:Le/k/a/c/g0/a0;

    .line 5
    :cond_1
    invoke-interface {p1}, Le/k/a/a/n;->alwaysAsId()Z

    move-result v4

    .line 6
    iget-boolean p1, p2, Le/k/a/c/g0/a0;->e:Z

    if-ne p1, v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Le/k/a/c/g0/a0;

    iget-object v1, p2, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    iget-object v2, p2, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    iget-object v3, p2, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    iget-object v5, p2, Le/k/a/c/g0/a0;->c:Ljava/lang/Class;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/a0;-><init>(Le/k/a/c/v;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    move-object p2, p1

    :goto_0
    return-object p2
.end method
