.class public final Ls1/a/a/a/v0/d/a/g0/p;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/m/e0;",
        "Ls1/a/a/a/v0/d/a/d0/h;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/p;->b:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    invoke-static {p2, v0}, Le/q/f/a/d/a;->W(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object p2

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/p;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/u;

    .line 4
    invoke-virtual {p2}, Ls1/a/a/a/v0/d/a/d0/h;->a()Ls1/a/a/a/v0/d/a/d0/e;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v4, Ls1/a/a/a/v0/d/a/a$a;->d:Ls1/a/a/a/v0/d/a/a$a;

    invoke-virtual {v2, v4}, Ls1/a/a/a/v0/d/a/d0/e;->a(Ls1/a/a/a/v0/d/a/a$a;)Ls1/a/a/a/v0/d/a/g0/e;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 5
    :goto_0
    invoke-direct {v1, p1, v2}, Ls1/a/a/a/v0/d/a/g0/u;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/g0/e;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/y0;

    .line 8
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v1

    const-string v2, "arg.type"

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/p;->b:Ljava/util/ArrayList;

    new-instance v4, Ls1/a/a/a/v0/d/a/g0/u;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0, v3}, Ls1/a/a/a/v0/d/a/g0/u;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/g0/e;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/d/a/g0/p;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/d0/h;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    check-cast p2, Ls1/a/a/a/v0/d/a/d0/h;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/d/a/g0/p;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/d0/h;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
