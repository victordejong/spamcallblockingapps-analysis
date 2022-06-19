.class public final Ls1/a/a/a/v0/b/j1/b/g;
.super Ls1/a/a/a/v0/b/j1/b/d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/e;


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "values"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/j1/b/d;-><init>(Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/b/g;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/j1/b/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/g;->b:[Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 4
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const-string v6, "value"

    .line 5
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 7
    sget-object v7, Ls1/a/a/a/v0/b/j1/b/b;->a:Ljava/util/List;

    const-string v7, "$this$isEnumClassOrSpecializedEnumEntryClass"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    new-instance v6, Ls1/a/a/a/v0/b/j1/b/v;

    check-cast v4, Ljava/lang/Enum;

    invoke-direct {v6, v5, v4}, Ls1/a/a/a/v0/b/j1/b/v;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Enum;)V

    goto :goto_1

    .line 10
    :cond_0
    instance-of v6, v4, Ljava/lang/annotation/Annotation;

    if-eqz v6, :cond_1

    new-instance v6, Ls1/a/a/a/v0/b/j1/b/e;

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v5, v4}, Ls1/a/a/a/v0/b/j1/b/e;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 11
    :cond_1
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    new-instance v6, Ls1/a/a/a/v0/b/j1/b/g;

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v6, v5, v4}, Ls1/a/a/a/v0/b/j1/b/g;-><init>(Ls1/a/a/a/v0/f/e;[Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v6, v4, Ljava/lang/Class;

    if-eqz v6, :cond_3

    new-instance v6, Ls1/a/a/a/v0/b/j1/b/r;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v6, v5, v4}, Ls1/a/a/a/v0/b/j1/b/r;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Class;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v6, Ls1/a/a/a/v0/b/j1/b/x;

    invoke-direct {v6, v5, v4}, Ls1/a/a/a/v0/b/j1/b/x;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V

    .line 14
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method
