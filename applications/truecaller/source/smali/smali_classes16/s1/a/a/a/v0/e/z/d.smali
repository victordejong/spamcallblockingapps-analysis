.class public final Ls1/a/a/a/v0/e/z/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/e/z/c;


# instance fields
.field public final a:Ls1/a/a/a/v0/e/p;

.field public final b:Ls1/a/a/a/v0/e/o;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/e/p;Ls1/a/a/a/v0/e/o;)V
    .locals 1

    const-string v0, "strings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiedNames"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/e/z/d;->a:Ls1/a/a/a/v0/e/p;

    iput-object p2, p0, Ls1/a/a/a/v0/e/z/d;->b:Ls1/a/a/a/v0/e/o;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/z/d;->c(I)Ls1/o;

    move-result-object p1

    .line 2
    iget-object v0, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 4
    iget-object p1, p1, Ls1/o;->b:Ljava/lang/Object;

    .line 5
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, "."

    .line 6
    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v2, "/"

    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2, p1}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/z/d;->c(I)Ls1/o;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ls1/o;->c:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final c(I)Ls1/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ls1/o<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    .line 3
    iget-object v3, p0, Ls1/a/a/a/v0/e/z/d;->b:Ls1/a/a/a/v0/e/o;

    .line 4
    iget-object v3, v3, Ls1/a/a/a/v0/e/o;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/o$c;

    .line 5
    iget-object v3, p0, Ls1/a/a/a/v0/e/z/d;->a:Ls1/a/a/a/v0/e/p;

    const-string v4, "proto"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v4, p1, Ls1/a/a/a/v0/e/o$c;->d:I

    .line 7
    iget-object v3, v3, Ls1/a/a/a/v0/e/p;->b:Ls1/a/a/a/v0/h/n;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, p1, Ls1/a/a/a/v0/e/o$c;->e:Ls1/a/a/a/v0/e/o$c$c;

    .line 9
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v2, v5

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    :goto_1
    iget p1, p1, Ls1/a/a/a/v0/e/o$c;->c:I

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Ls1/o;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/e/z/d;->a:Ls1/a/a/a/v0/e/p;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/e/p;->b:Ls1/a/a/a/v0/h/n;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "strings.getString(index)"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
