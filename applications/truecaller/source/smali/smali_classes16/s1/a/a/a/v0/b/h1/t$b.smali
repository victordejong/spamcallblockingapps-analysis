.class public final Ls1/a/a/a/v0/b/h1/t$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/t;-><init>(Ls1/a/a/a/v0/b/h1/a0;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/h1/t;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/t;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/t$b;->b:Ls1/a/a/a/v0/b/h1/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t$b;->b:Ls1/a/a/a/v0/b/h1/t;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/t;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t$b;->b:Ls1/a/a/a/v0/b/h1/t;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/t;->P()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ls1/a/a/a/v0/b/c0;

    .line 7
    invoke-interface {v2}, Ls1/a/a/a/v0/b/c0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ls1/a/a/a/v0/b/h1/j0;

    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/t$b;->b:Ls1/a/a/a/v0/b/h1/t;

    .line 8
    iget-object v3, v2, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    .line 9
    iget-object v2, v2, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 10
    invoke-direct {v0, v3, v2}, Ls1/a/a/a/v0/b/h1/j0;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V

    invoke-static {v1, v0}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "package view scope for "

    .line 11
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/t$b;->b:Ls1/a/a/a/v0/b/h1/t;

    .line 12
    iget-object v2, v2, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/t$b;->b:Ls1/a/a/a/v0/b/h1/t;

    .line 14
    iget-object v2, v2, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    .line 15
    invoke-virtual {v2}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/a/a/a/v0/j/y/b;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    :goto_1
    return-object v0
.end method
