.class public final Ls1/a/a/a/v0/d/a/y;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/y;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/y;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/y;->b:Ls1/a/a/a/v0/d/a/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->m(Ls1/a/a/a/v0/b/b;)Ls1/a/a/a/v0/b/b;

    move-result-object p1

    const-string v1, "callableMemberDescriptor"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Ls1/a/a/a/v0/d/a/g;->e:Ls1/a/a/a/v0/d/a/g;

    .line 5
    sget-object v2, Ls1/a/a/a/v0/d/a/g;->d:Ljava/util/Set;

    .line 6
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    sget-object v2, Ls1/a/a/a/v0/d/a/g;->c:Ljava/util/Set;

    .line 8
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-static {v2, v5}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 10
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p1

    const-string v2, "overriddenDescriptors"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_3

    .line 12
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/b;

    .line 13
    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v6, Ls1/a/a/a/v0/d/a/g;->e:Ls1/a/a/a/v0/d/a/g;

    .line 16
    sget-object v6, Ls1/a/a/a/v0/d/a/g;->d:Ljava/util/Set;

    .line 17
    invoke-interface {v5}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    sget-object v6, Ls1/a/a/a/v0/d/a/g;->c:Ljava/util/Set;

    .line 19
    invoke-static {v5}, Ls1/a/a/a/v0/j/v/b;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-static {v6, v7}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    invoke-static {v5}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    invoke-interface {v5}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 23
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/b/b;

    .line 24
    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ls1/a/a/a/v0/d/a/i;->a(Ls1/a/a/a/v0/b/b;)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_0
    move v5, v3

    goto :goto_2

    :cond_a
    :goto_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_4

    :cond_b
    :goto_3
    move v3, v4

    .line 25
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
