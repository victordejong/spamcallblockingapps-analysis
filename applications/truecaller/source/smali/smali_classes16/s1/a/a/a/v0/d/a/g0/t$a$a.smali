.class public final Ls1/a/a/a/v0/d/a/g0/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ls1/a/a/a/v0/d/a/g0/w;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ls1/a/a/a/v0/d/a/g0/w;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final synthetic d:Ls1/a/a/a/v0/d/a/g0/t$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/t$a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "functionName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->d:Ls1/a/a/a/v0/d/a/g0/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->c:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ls1/k;

    const-string p2, "V"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->b:Ls1/k;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ls1/a/a/a/v0/d/a/g0/e;)V
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->a:Ljava/util/List;

    .line 2
    array-length v1, p2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    .line 3
    :cond_1
    invoke-static {p2}, Le/q/f/a/d/a;->t3([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    const/16 v1, 0xa

    .line 4
    invoke-static {p2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    move v1, v2

    .line 5
    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    check-cast p2, Ls1/u/x;

    invoke-virtual {p2}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    move-object v1, p2

    check-cast v1, Ls1/u/y;

    invoke-virtual {v1}, Ls1/u/y;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ls1/u/w;

    .line 8
    iget v3, v1, Ls1/u/w;->a:I

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 10
    iget-object v1, v1, Ls1/u/w;->b:Ljava/lang/Object;

    .line 11
    check-cast v1, Ls1/a/a/a/v0/d/a/g0/e;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_3
    new-instance p2, Ls1/a/a/a/v0/d/a/g0/w;

    invoke-direct {p2, v2}, Ls1/a/a/a/v0/d/a/g0/w;-><init>(Ljava/util/Map;)V

    .line 13
    :goto_2
    new-instance v1, Ls1/k;

    invoke-direct {v1, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ls1/a/a/a/v0/d/a/g0/e;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Le/q/f/a/d/a;->t3([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    const/16 v0, 0xa

    .line 2
    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    check-cast p2, Ls1/u/x;

    invoke-virtual {p2}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, Ls1/u/y;

    invoke-virtual {v0}, Ls1/u/y;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ls1/u/w;

    .line 6
    iget v2, v0, Ls1/u/w;->a:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    iget-object v0, v0, Ls1/u/w;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Ls1/a/a/a/v0/d/a/g0/e;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p2, Ls1/a/a/a/v0/d/a/g0/w;

    invoke-direct {p2, v1}, Ls1/a/a/a/v0/d/a/g0/w;-><init>(Ljava/util/Map;)V

    .line 10
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->b:Ls1/k;

    return-void
.end method

.method public final c(Ls1/a/a/a/v0/j/w/c;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/j/w/c;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/d/a/g0/t$a$a;->b:Ls1/k;

    return-void
.end method
