.class public Ls1/a/a/a/v0/b/h1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/g$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/h;->a:Ls1/a/a/a/v0/b/h1/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const-string v0, "Scope for type parameter "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/h;->a:Ls1/a/a/a/v0/b/h1/g$b;

    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/g$b;->a:Ls1/a/a/a/v0/f/e;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/h;->a:Ls1/a/a/a/v0/b/h1/g$b;

    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/g$b;->b:Ls1/a/a/a/v0/b/h1/g;

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/g;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    .line 2
    sget v2, Ls1/a/a/a/v0/j/y/n;->c:I

    const-string v2, "message"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "types"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ls1/a/a/a/v0/m/e0;

    .line 7
    invoke-virtual {v3}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->y2(Ljava/lang/Iterable;)Ls1/a/a/a/v0/o/l;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Ls1/a/a/a/v0/j/y/b;->i(Ljava/lang/String;Ljava/util/List;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    .line 9
    iget v1, v1, Ls1/a/a/a/v0/o/l;->a:I

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Ls1/a/a/a/v0/j/y/n;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Ls1/a/a/a/v0/j/y/n;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/j/y/i;Ls1/z/c/f;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method
