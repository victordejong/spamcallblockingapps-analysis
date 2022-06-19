.class public final Ls1/a/a/a/v0/d/a/g0/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/g0/t$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Ls1/a/a/a/v0/d/a/g0/t;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/t;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "className"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/t$a;->b:Ls1/a/a/a/v0/d/a/g0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/t$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ls1/z/b/l;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/d/a/g0/t$a$a;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/t$a;->b:Ls1/a/a/a/v0/d/a/g0/t;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/g0/t;->a:Ljava/util/Map;

    .line 3
    new-instance v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;

    invoke-direct {v2, p0, p1}, Ls1/a/a/a/v0/d/a/g0/t$a$a;-><init>(Ls1/a/a/a/v0/d/a/g0/t$a;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;->d:Ls1/a/a/a/v0/d/a/g0/t$a;

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/g0/t$a;->a:Ljava/lang/String;

    .line 6
    iget-object p2, v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;->c:Ljava/lang/String;

    iget-object v3, v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;->a:Ljava/util/List;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v3, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Ls1/k;

    .line 10
    iget-object v5, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 11
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;->b:Ls1/k;

    .line 12
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v3, Ljava/lang/String;

    .line 14
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ret"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x28

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Ls1/a/a/a/v0/d/b/r;->b:Ls1/a/a/a/v0/d/b/r;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x1e

    const-string v5, ""

    invoke-static/range {v4 .. v11}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v4, 0x1

    if-le p2, v4, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x4c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "internalName"

    .line 18
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 19
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object p2, v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;->b:Ls1/k;

    .line 21
    iget-object p2, p2, Ls1/k;->b:Ljava/lang/Object;

    .line 22
    check-cast p2, Ls1/a/a/a/v0/d/a/g0/w;

    iget-object v0, v2, Ls1/a/a/a/v0/d/a/g0/t$a$a;->a:Ljava/util/List;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Ls1/k;

    .line 26
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 27
    check-cast v3, Ls1/a/a/a/v0/d/a/g0/w;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/k;

    invoke-direct {v0, p2, v2}, Ls1/a/a/a/v0/d/a/g0/k;-><init>(Ls1/a/a/a/v0/d/a/g0/w;Ljava/util/List;)V

    .line 28
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
