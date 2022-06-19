.class public final Ls1/a/a/a/v0/j/y/n;
.super Ls1/a/a/a/v0/j/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/j/y/n$a;
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final b:Ls1/a/a/a/v0/j/y/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/a/a/a/v0/j/y/i;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/a;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/j/y/n;->b:Ls1/a/a/a/v0/j/y/i;

    return-void
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/j/y/a;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Ls1/a/a/a/v0/j/y/n$c;->b:Ls1/a/a/a/v0/j/y/n$c;

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->i3(Ljava/util/Collection;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/j/y/a;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Ls1/a/a/a/v0/j/y/n$d;->b:Ls1/a/a/a/v0/j/y/n$d;

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->i3(Ljava/util/Collection;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Ls1/a/a/a/v0/j/y/a;->g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    move-object v2, v1

    check-cast v2, Ls1/a/a/a/v0/b/k;

    .line 6
    instance-of v2, v2, Ls1/a/a/a/v0/b/a;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    check-cast p2, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.Collection<org.jetbrains.kotlin.descriptors.CallableDescriptor>"

    .line 10
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Ls1/a/a/a/v0/j/y/n$b;->b:Ls1/a/a/a/v0/j/y/n$b;

    invoke-static {p2, p1}, Ls1/a/a/a/v0/f/d;->i3(Ljava/util/Collection;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/n;->b:Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method
