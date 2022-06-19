.class public final Ls1/a/a/a/v0/d/a/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Ls1/a/a/a/v0/b/f1/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ls1/a/a/a/v0/b/f1/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ls1/a/a/a/v0/d/a/b0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/b0/d;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/b0/d;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/d;->c:Ls1/a/a/a/v0/d/a/b0/d;

    const/16 v0, 0xa

    new-array v0, v0, [Ls1/k;

    .line 2
    const-class v1, Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 3
    new-instance v2, Ls1/k;

    const-string v3, "PACKAGE"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 4
    sget-object v2, Ls1/a/a/a/v0/b/f1/n;->b:Ls1/a/a/a/v0/b/f1/n;

    sget-object v3, Ls1/a/a/a/v0/b/f1/n;->n:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 5
    new-instance v3, Ls1/k;

    const-string v4, "TYPE"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v0, v2

    .line 6
    sget-object v3, Ls1/a/a/a/v0/b/f1/n;->c:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 7
    new-instance v4, Ls1/k;

    const-string v5, "ANNOTATION_TYPE"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v4, v0, v3

    .line 8
    sget-object v4, Ls1/a/a/a/v0/b/f1/n;->d:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 9
    new-instance v5, Ls1/k;

    const-string v6, "TYPE_PARAMETER"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v5, v0, v4

    const/4 v5, 0x4

    .line 10
    sget-object v6, Ls1/a/a/a/v0/b/f1/n;->f:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 11
    new-instance v7, Ls1/k;

    const-string v8, "FIELD"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x5

    .line 12
    sget-object v6, Ls1/a/a/a/v0/b/f1/n;->g:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 13
    new-instance v7, Ls1/k;

    const-string v8, "LOCAL_VARIABLE"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x6

    .line 14
    sget-object v6, Ls1/a/a/a/v0/b/f1/n;->h:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 15
    new-instance v7, Ls1/k;

    const-string v8, "PARAMETER"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x7

    .line 16
    sget-object v6, Ls1/a/a/a/v0/b/f1/n;->i:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 17
    new-instance v7, Ls1/k;

    const-string v8, "CONSTRUCTOR"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/16 v5, 0x8

    .line 18
    sget-object v6, Ls1/a/a/a/v0/b/f1/n;->j:Ls1/a/a/a/v0/b/f1/n;

    sget-object v7, Ls1/a/a/a/v0/b/f1/n;->k:Ls1/a/a/a/v0/b/f1/n;

    sget-object v8, Ls1/a/a/a/v0/b/f1/n;->l:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v6, v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 19
    new-instance v7, Ls1/k;

    const-string v8, "METHOD"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/16 v5, 0x9

    .line 20
    sget-object v6, Ls1/a/a/a/v0/b/f1/n;->m:Ls1/a/a/a/v0/b/f1/n;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 21
    new-instance v7, Ls1/k;

    const-string v8, "TYPE_USE"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    .line 22
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/d;->a:Ljava/util/Map;

    new-array v0, v4, [Ls1/k;

    .line 23
    sget-object v4, Ls1/a/a/a/v0/b/f1/m;->a:Ls1/a/a/a/v0/b/f1/m;

    .line 24
    new-instance v5, Ls1/k;

    const-string v6, "RUNTIME"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    .line 25
    sget-object v1, Ls1/a/a/a/v0/b/f1/m;->b:Ls1/a/a/a/v0/b/f1/m;

    .line 26
    new-instance v4, Ls1/k;

    const-string v5, "CLASS"

    invoke-direct {v4, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 27
    sget-object v1, Ls1/a/a/a/v0/b/f1/m;->c:Ls1/a/a/a/v0/b/f1/m;

    .line 28
    new-instance v2, Ls1/k;

    const-string v4, "SOURCE"

    invoke-direct {v2, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 29
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/d;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ls1/a/a/a/v0/j/t/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/d/a/f0/b;",
            ">;)",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "arguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ls1/a/a/a/v0/d/a/f0/m;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/d/a/f0/m;

    .line 6
    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/m;->d()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_2
    sget-object v2, Ls1/a/a/a/v0/d/a/b0/d;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Ls1/u/u;->a:Ls1/u/u;

    .line 8
    :goto_3
    invoke-static {p1, v1}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ls1/a/a/a/v0/b/f1/n;

    .line 12
    new-instance v2, Ls1/a/a/a/v0/j/t/k;

    sget-object v3, Ls1/a/a/a/v0/a/k$a;->A:Ls1/a/a/a/v0/f/b;

    invoke-static {v3}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v3

    const-string v4, "ClassId.topLevel(Standar\u2026FqNames.annotationTarget)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    const-string v4, "Name.identifier(kotlinTarget.name)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ls1/a/a/a/v0/j/t/k;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 13
    :cond_5
    new-instance p1, Ls1/a/a/a/v0/j/t/b;

    sget-object v1, Ls1/a/a/a/v0/d/a/b0/d$a;->b:Ls1/a/a/a/v0/d/a/b0/d$a;

    invoke-direct {p1, v0, v1}, Ls1/a/a/a/v0/j/t/b;-><init>(Ljava/util/List;Ls1/z/b/l;)V

    return-object p1
.end method
