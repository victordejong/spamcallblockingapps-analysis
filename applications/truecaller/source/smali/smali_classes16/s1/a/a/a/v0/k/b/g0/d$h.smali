.class public final Ls1/a/a/a/v0/k/b/g0/d$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$h;->b:Ls1/a/a/a/v0/k/b/g0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$h;->b:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d;->h:Ls1/a/a/a/v0/b/f;

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    .line 4
    new-instance v2, Ls1/a/a/a/v0/j/f;

    invoke-direct {v2, v0, v1}, Ls1/a/a/a/v0/j/f;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/r0;)V

    .line 5
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/b;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v2, v0}, Ls1/a/a/a/v0/b/h1/r;->V0(Ls1/a/a/a/v0/m/e0;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 7
    iget-object v1, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    const-string v2, "classProto.constructorList"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ls1/a/a/a/v0/e/d;

    .line 10
    sget-object v6, Ls1/a/a/a/v0/e/z/b;->l:Ls1/a/a/a/v0/e/z/b$b;

    const-string v7, "it"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v5, v5, Ls1/a/a/a/v0/e/d;->d:I

    .line 12
    invoke-virtual {v6, v5}, Ls1/a/a/a/v0/e/z/b$b;->f(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 13
    :goto_0
    check-cast v2, Ls1/a/a/a/v0/e/d;

    if-eqz v2, :cond_3

    .line 14
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 15
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 16
    invoke-virtual {v0, v2, v3}, Ls1/a/a/a/v0/k/b/v;->h(Ls1/a/a/a/v0/e/d;Z)Ls1/a/a/a/v0/b/d;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    return-object v2
.end method
