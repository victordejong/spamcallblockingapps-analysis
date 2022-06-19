.class public Le/k/a/c/g0/o$e;
.super Le/k/a/c/g0/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/g0/o;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/g0/o$e;->c:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Le/k/a/c/g0/o$e;->d:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 2
    iget-object v2, p0, Le/k/a/c/g0/o$e;->c:Ljava/lang/Class;

    if-ne v2, v4, :cond_0

    .line 3
    iput-object p1, p0, Le/k/a/c/g0/o$e;->d:Ljava/lang/annotation/Annotation;

    return-object p0

    .line 4
    :cond_0
    new-instance v6, Le/k/a/c/g0/o$b;

    iget-object v1, p0, Le/k/a/c/g0/o;->a:Ljava/lang/Object;

    iget-object v3, p0, Le/k/a/c/g0/o$e;->d:Ljava/lang/annotation/Annotation;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/o$b;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public b()Le/k/a/c/g0/p;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/o$e;->c:Ljava/lang/Class;

    iget-object v1, p0, Le/k/a/c/g0/o$e;->d:Ljava/lang/annotation/Annotation;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Le/k/a/c/g0/p;

    invoke-direct {v0, v2}, Le/k/a/c/g0/p;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public c()Le/k/a/c/n0/b;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/g0/o$d;

    iget-object v1, p0, Le/k/a/c/g0/o$e;->c:Ljava/lang/Class;

    iget-object v2, p0, Le/k/a/c/g0/o$e;->d:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Le/k/a/c/g0/o$d;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public d(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Le/k/a/c/g0/o$e;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
