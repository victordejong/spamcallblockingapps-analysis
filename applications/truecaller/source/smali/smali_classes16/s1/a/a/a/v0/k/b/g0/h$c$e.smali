.class public final Ls1/a/a/a/v0/k/b/g0/h$c$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/h$c;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/k0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$e;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$e;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    .line 4
    iget-object v2, v1, Ls1/a/a/a/v0/k/b/g0/h$c;->b:Ljava/util/Map;

    .line 5
    sget-object v3, Ls1/a/a/a/v0/e/n;->s:Ls1/a/a/a/v0/h/r;

    const-string v4, "ProtoBuf.Property.PARSER"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_0

    .line 7
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    new-instance v2, Ls1/a/a/a/v0/k/b/g0/h$c$b;

    invoke-direct {v2, v4, v1, v3}, Ls1/a/a/a/v0/k/b/g0/h$c$b;-><init>(Ljava/io/ByteArrayInputStream;Ls1/a/a/a/v0/k/b/g0/h$c;Ls1/a/a/a/v0/h/r;)V

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->e1(Ls1/z/b/a;)Ls1/e0/k;

    move-result-object v2

    .line 9
    invoke-static {v2}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 11
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ls1/a/a/a/v0/e/n;

    .line 14
    iget-object v5, v1, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 15
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 16
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 17
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/k/b/v;->j(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/b/k0;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, v1, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v0, p1, v3}, Ls1/a/a/a/v0/k/b/g0/h;->k(Ls1/a/a/a/v0/f/e;Ljava/util/List;)V

    .line 20
    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->i0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
