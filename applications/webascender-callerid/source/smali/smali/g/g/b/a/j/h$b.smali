.class final Lg/g/b/a/j/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/h;->b(Ljava/lang/String;Ljava/lang/Short;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/h;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/Short;


# direct methods
.method constructor <init>(Lg/g/b/a/j/h;Ljava/lang/String;Ljava/lang/Short;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/h$b;->f:Lg/g/b/a/j/h;

    iput-object p2, p0, Lg/g/b/a/j/h$b;->g:Ljava/lang/String;

    iput-object p3, p0, Lg/g/b/a/j/h$b;->h:Ljava/lang/Short;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/h$b;->f:Lg/g/b/a/j/h;

    iget-object v1, p0, Lg/g/b/a/j/h$b;->g:Ljava/lang/String;

    iget-object v2, p0, Lg/g/b/a/j/h$b;->h:Ljava/lang/Short;

    invoke-static {v0, v1, v2}, Lg/g/b/a/j/h;->d(Lg/g/b/a/j/h;Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg/g/b/a/j/h$b;->f:Lg/g/b/a/j/h;

    invoke-static {v1}, Lg/g/b/a/j/h;->c(Lg/g/b/a/j/h;)Lg/g/b/b/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg/g/b/b/d/a;->b(Ljava/lang/String;)Lg/g/b/c/g;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lg/g/b/a/j/h$b;->f:Lg/g/b/a/j/h;

    invoke-static {v1}, Lg/g/b/a/j/h;->c(Lg/g/b/a/j/h;)Lg/g/b/b/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/b/b/d/a;->a()Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Lkotlin/l;

    .line 7
    invoke-virtual {v5}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    .line 9
    invoke-static {v0, v6, v2, v7, v5}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 10
    :cond_3
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/j/h$b;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
