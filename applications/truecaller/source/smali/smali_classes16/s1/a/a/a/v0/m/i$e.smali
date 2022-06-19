.class public final Ls1/a/a/a/v0/m/i$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/i;-><init>(Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/i$b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/i$b;

    const-string v0, "supertypes"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->j()Ls1/a/a/a/v0/b/u0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    .line 5
    iget-object v2, p1, Ls1/a/a/a/v0/m/i$b;->b:Ljava/util/Collection;

    .line 6
    new-instance v3, Ls1/a/a/a/v0/m/l;

    invoke-direct {v3, p0}, Ls1/a/a/a/v0/m/l;-><init>(Ls1/a/a/a/v0/m/i$e;)V

    .line 7
    new-instance v4, Ls1/a/a/a/v0/m/m;

    invoke-direct {v4, p0}, Ls1/a/a/a/v0/m/m;-><init>(Ls1/a/a/a/v0/m/i$e;)V

    .line 8
    invoke-interface {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/b/u0;->a(Ls1/a/a/a/v0/m/v0;Ljava/util/Collection;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->h()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 11
    :cond_2
    :goto_1
    iget-object v1, p0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/i;->j()Ls1/a/a/a/v0/b/u0;

    move-result-object v1

    .line 12
    iget-object v3, p0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    .line 13
    new-instance v4, Ls1/a/a/a/v0/m/j;

    invoke-direct {v4, p0}, Ls1/a/a/a/v0/m/j;-><init>(Ls1/a/a/a/v0/m/i$e;)V

    .line 14
    new-instance v5, Ls1/a/a/a/v0/m/k;

    invoke-direct {v5, p0}, Ls1/a/a/a/v0/m/k;-><init>(Ls1/a/a/a/v0/m/i$e;)V

    .line 15
    invoke-interface {v1, v3, v0, v4, v5}, Ls1/a/a/a/v0/b/u0;->a(Ls1/a/a/a/v0/m/v0;Ljava/util/Collection;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/Collection;

    .line 16
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :goto_3
    const-string v0, "<set-?>"

    .line 17
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v2, p1, Ls1/a/a/a/v0/m/i$b;->a:Ljava/util/List;

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
