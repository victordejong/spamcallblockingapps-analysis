.class public final Ls1/a/a/a/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/g$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/g$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/j;->b:Ls1/a/a/a/g$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/j;->b:Ls1/a/a/a/g$c;

    iget-object v0, v0, Ls1/a/a/a/g$c;->b:Ls1/a/a/a/g;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/g;->e()Ls1/a/a/a/v0/b/b;

    move-result-object v1

    instance-of v2, v1, Ls1/a/a/a/v0/b/v;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Ls1/a/a/a/v0/b/v;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/g;->b()Ls1/a/a/a/u0/h;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/u0/h;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    move-object v0, v3

    :cond_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const-class v2, Ls1/w/d;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "continuationType.actualTypeArguments"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->R2([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_3

    move-object v0, v3

    :cond_3
    check-cast v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Type;

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/j;->b:Ls1/a/a/a/g$c;

    iget-object v0, v0, Ls1/a/a/a/g$c;->b:Ls1/a/a/a/g;

    invoke-virtual {v0}, Ls1/a/a/a/g;->b()Ls1/a/a/a/u0/h;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/u0/h;->g()Ljava/lang/reflect/Type;

    move-result-object v3

    :goto_1
    return-object v3
.end method
