.class public final Ls1/a/a/a/v0/m/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/n1/i;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/f;->b:Ls1/a/a/a/v0/m/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/n1/i;)Z
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/f;->b:Ls1/a/a/a/v0/m/h;

    check-cast v0, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/m/n1/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/f;->b:Ls1/a/a/a/v0/m/h;

    check-cast v0, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l1/b;->e0(Ls1/a/a/a/v0/m/n1/l;)Ljava/util/Collection;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p1, v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/n1/h;

    .line 6
    iget-object v3, p0, Ls1/a/a/a/v0/m/f;->b:Ls1/a/a/a/v0/m/h;

    check-cast v3, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v3, v0}, Ls1/a/a/a/v0/m/l1/b;->a(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Ls1/a/a/a/v0/m/f;->b:Ls1/a/a/a/v0/m/h;

    invoke-virtual {v3, v0}, Ls1/a/a/a/v0/m/h;->N(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/n1/i;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/f;->a(Ls1/a/a/a/v0/m/n1/i;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
