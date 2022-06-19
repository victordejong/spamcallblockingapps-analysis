.class public final Ls1/a/a/a/v0/a/p/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/o/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/o/c<",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/a/p/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/p/l;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/p;->a:Ls1/a/a/a/v0/a/p/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 4

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    const-string v0, "it.typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "it.typeConstructor.supertypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/m/e0;

    .line 6
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ls1/a/a/a/v0/b/h;->a()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    instance-of v3, v1, Ls1/a/a/a/v0/b/e;

    if-nez v3, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_3

    iget-object v2, p0, Ls1/a/a/a/v0/a/p/p;->a:Ls1/a/a/a/v0/a/p/l;

    .line 7
    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/a/p/l;->f(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/e;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method
