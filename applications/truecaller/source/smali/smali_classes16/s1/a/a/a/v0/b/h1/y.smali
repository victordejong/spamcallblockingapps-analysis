.class public final Ls1/a/a/a/v0/b/h1/y;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/h1/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/h1/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/a0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/y;->b:Ls1/a/a/a/v0/b/h1/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/y;->b:Ls1/a/a/a/v0/b/h1/a0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/a0;->d:Ls1/a/a/a/v0/b/h1/w;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h1/w;->c()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/y;->b:Ls1/a/a/a/v0/b/h1/a0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/h1/a0;

    .line 6
    iget-object v2, v2, Ls1/a/a/a/v0/b/h1/a0;->e:Ls1/a/a/a/v0/b/d0;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ls1/a/a/a/v0/b/h1/a0;

    .line 10
    iget-object v2, v2, Ls1/a/a/a/v0/b/h1/a0;->e:Ls1/a/a/a/v0/b/d0;

    .line 11
    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Ls1/a/a/a/v0/b/h1/l;

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/b/h1/l;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_2
    const-string v0, "Dependencies of module "

    .line 13
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/y;->b:Ls1/a/a/a/v0/b/h1/a0;

    .line 14
    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/a0;->w0()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " were not set before querying module content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
