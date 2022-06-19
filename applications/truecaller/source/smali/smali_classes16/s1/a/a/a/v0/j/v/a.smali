.class public final Ls1/a/a/a/v0/j/v/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/j/y/i;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/e;

.field public final synthetic c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ljava/util/LinkedHashSet;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/v/a;->b:Ls1/a/a/a/v0/b/e;

    iput-object p2, p0, Ls1/a/a/a/v0/j/v/a;->c:Ljava/util/LinkedHashSet;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/j/y/i;Z)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/y/d;->p:Ls1/a/a/a/v0/j/y/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->m1(Ls1/a/a/a/v0/j/y/k;Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/k;

    .line 2
    instance-of v2, v0, Ls1/a/a/a/v0/b/e;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    move-object v2, v0

    check-cast v2, Ls1/a/a/a/v0/b/e;

    iget-object v3, p0, Ls1/a/a/a/v0/j/v/a;->b:Ls1/a/a/a/v0/b/e;

    .line 4
    sget v4, Ls1/a/a/a/v0/j/g;->a:I

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 5
    invoke-interface {v2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    invoke-interface {v4}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/m/e0;

    .line 6
    invoke-interface {v3}, Ls1/a/a/a/v0/b/e;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v6

    invoke-static {v5, v6}, Ls1/a/a/a/v0/j/g;->u(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/k;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/j/v/a;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p2, :cond_0

    .line 8
    invoke-interface {v2}, Ls1/a/a/a/v0/b/e;->I()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v2, "descriptor.unsubstitutedInnerClassesScope"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/j/v/a;->a(Ls1/a/a/a/v0/j/y/i;Z)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x19

    .line 9
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->a(I)V

    throw v1

    :cond_6
    const/16 p1, 0x18

    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->a(I)V

    throw v1

    :cond_7
    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ls1/a/a/a/v0/j/y/i;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/j/v/a;->a(Ls1/a/a/a/v0/j/y/i;Z)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
