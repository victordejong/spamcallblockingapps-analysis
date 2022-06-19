.class public final Le/m/e/e0/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/e/e0/a0/b$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/e/e0/g;


# direct methods
.method public constructor <init>(Le/m/e/e0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/e/e0/a0/b;->a:Le/m/e/e0/g;

    return-void
.end method


# virtual methods
.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    const-class v2, Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Le/m/e/e0/a;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 7
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    .line 9
    :cond_2
    const-class v0, Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-static {v0}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v1

    .line 11
    iget-object v2, p0, Le/m/e/e0/a0/b;->a:Le/m/e/e0/g;

    invoke-virtual {v2, p2}, Le/m/e/e0/g;->a(Le/m/e/f0/a;)Le/m/e/e0/t;

    move-result-object p2

    .line 12
    new-instance v2, Le/m/e/e0/a0/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Le/m/e/e0/a0/b$a;-><init>(Le/m/e/k;Ljava/lang/reflect/Type;Le/m/e/b0;Le/m/e/e0/t;)V

    return-object v2
.end method
