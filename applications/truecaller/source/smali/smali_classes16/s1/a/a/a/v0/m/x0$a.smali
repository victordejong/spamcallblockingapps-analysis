.class public final Ls1/a/a/a/v0/m/x0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ls1/a/a/a/v0/m/x0$a;Ljava/util/Map;ZI)Ls1/a/a/a/v0/m/x0;
    .locals 0

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p0, "map"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ls1/a/a/a/v0/m/w0;

    invoke-direct {p0, p1, p2}, Ls1/a/a/a/v0/m/w0;-><init>(Ljava/util/Map;Z)V

    return-object p0
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/b1;
    .locals 1

    const-string v0, "kotlinType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ls1/a/a/a/v0/m/x0$a;->b(Ls1/a/a/a/v0/m/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/b1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ls1/a/a/a/v0/m/v0;Ljava/util/List;)Ls1/a/a/a/v0/m/b1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/v0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;)",
            "Ls1/a/a/a/v0/m/b1;"
        }
    .end annotation

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeConstructor.parameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/w0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ls1/a/a/a/v0/b/w0;->F()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ls1/a/a/a/v0/b/w0;

    const-string v2, "it"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0, p2}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p0, p1, v3, p2}, Ls1/a/a/a/v0/m/x0$a;->c(Ls1/a/a/a/v0/m/x0$a;Ljava/util/Map;ZI)Ls1/a/a/a/v0/m/x0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ls1/a/a/a/v0/m/b0;

    const-string v1, "parameters"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "argumentsList"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v3, [Ls1/a/a/a/v0/b/w0;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ls1/a/a/a/v0/b/w0;

    new-array v2, v3, [Ls1/a/a/a/v0/m/y0;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Ls1/a/a/a/v0/m/y0;

    .line 11
    invoke-direct {p1, v0, p2, v3}, Ls1/a/a/a/v0/m/b0;-><init>([Ls1/a/a/a/v0/b/w0;[Ls1/a/a/a/v0/m/y0;Z)V

    return-object p1
.end method
