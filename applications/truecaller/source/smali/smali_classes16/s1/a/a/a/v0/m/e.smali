.class public final Ls1/a/a/a/v0/m/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/q<",
        "Ls1/a/a/a/v0/m/n1/i;",
        "Ls1/a/a/a/v0/m/n1/i;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/e;->b:Ls1/a/a/a/v0/m/h;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;Z)Z
    .locals 9

    const-string v0, "integerLiteralType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/e;->b:Ls1/a/a/a/v0/m/h;

    check-cast v0, Ls1/a/a/a/v0/m/l1/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$this$possibleIntegerTypes"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ls1/a/a/a/v0/j/t/o;

    if-eqz v1, :cond_5

    .line 6
    check-cast v0, Ls1/a/a/a/v0/j/t/o;

    .line 7
    iget-object p1, v0, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    .line 8
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ls1/a/a/a/v0/m/n1/h;

    .line 10
    iget-object v0, p0, Ls1/a/a/a/v0/m/e;->b:Ls1/a/a/a/v0/m/h;

    invoke-virtual {v0, v6}, Ls1/a/a/a/v0/m/h;->i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v0

    iget-object v3, p0, Ls1/a/a/a/v0/m/e;->b:Ls1/a/a/a/v0/m/h;

    check-cast v3, Ls1/a/a/a/v0/m/l1/b;

    invoke-virtual {v3, p2}, Ls1/a/a/a/v0/m/l1/b;->u(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/n1/l;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    sget-object v3, Ls1/a/a/a/v0/m/g;->a:Ls1/a/a/a/v0/m/g;

    iget-object v4, p0, Ls1/a/a/a/v0/m/e;->b:Ls1/a/a/a/v0/m/h;

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/m/g;->f(Ls1/a/a/a/v0/m/g;Ls1/a/a/a/v0/m/h;Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    return v1

    :cond_5
    const-string p2, "ClassicTypeSystemContext couldn\'t handle: "

    const-string p3, ", "

    .line 11
    invoke-static {p2, p1, p3}, Le/d/c/a/a;->N(Ljava/lang/String;Ls1/a/a/a/v0/m/n1/i;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2}, Le/d/c/a/a;->q(Ls1/a/a/a/v0/m/n1/i;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/n1/i;

    check-cast p2, Ls1/a/a/a/v0/m/n1/i;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ls1/a/a/a/v0/m/e;->a(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/i;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
