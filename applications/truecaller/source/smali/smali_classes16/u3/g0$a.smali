.class public Lu3/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lu3/a0;

.field public b:Ljava/lang/String;

.field public c:Lu3/z$a;

.field public d:Lu3/j0;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lu3/g0$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lu3/z$a;

    invoke-direct {v0}, Lu3/z$a;-><init>()V

    iput-object v0, p0, Lu3/g0$a;->c:Lu3/z$a;

    return-void
.end method

.method public constructor <init>(Lu3/g0;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lu3/g0;->b:Lu3/a0;

    .line 8
    iput-object v0, p0, Lu3/g0$a;->a:Lu3/a0;

    .line 9
    iget-object v0, p1, Lu3/g0;->c:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lu3/g0$a;->b:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lu3/g0;->e:Lu3/j0;

    .line 12
    iput-object v0, p0, Lu3/g0$a;->d:Lu3/j0;

    .line 13
    iget-object v0, p1, Lu3/g0;->f:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lu3/g0;->f:Ljava/util/Map;

    .line 17
    invoke-static {v0}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 18
    :goto_0
    iput-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    .line 19
    iget-object p1, p1, Lu3/g0;->d:Lu3/z;

    .line 20
    invoke-virtual {p1}, Lu3/z;->c()Lu3/z$a;

    move-result-object p1

    iput-object p1, p0, Lu3/g0$a;->c:Lu3/z$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/g0$a;->c:Lu3/z$a;

    invoke-virtual {v0, p1, p2}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    return-object p0
.end method

.method public b()Lu3/g0;
    .locals 7

    .line 1
    iget-object v1, p0, Lu3/g0$a;->a:Lu3/a0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lu3/g0$a;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lu3/g0$a;->c:Lu3/z$a;

    invoke-virtual {v0}, Lu3/z$a;->d()Lu3/z;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lu3/g0$a;->d:Lu3/j0;

    .line 5
    iget-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    invoke-static {v0}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 6
    new-instance v6, Lu3/g0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    return-object v6

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lu3/g0$a;->c:Lu3/z$a;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lu3/z;->b:Lu3/z$b;

    .line 4
    invoke-virtual {v0, p1}, Lu3/z$b;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2, p1}, Lu3/z$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, p1}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 7
    invoke-virtual {v2, p1, p2}, Lu3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    return-object p0
.end method

.method public d(Lu3/z;)Lu3/g0$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lu3/z;->c()Lu3/z$a;

    move-result-object p1

    iput-object p1, p0, Lu3/g0$a;->c:Lu3/z$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;
    .locals 4

    const-string v0, "method"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    const-string v1, "method "

    if-nez p2, :cond_4

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PROPPATCH"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REPORT"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, " must have a request body."

    .line 4
    invoke-static {v1, p1, p2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_4
    invoke-static {p1}, Lu3/p0/h/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :goto_1
    iput-object p1, p0, Lu3/g0$a;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lu3/g0$a;->d:Lu3/j0;

    return-object p0

    :cond_5
    const-string p2, " must not have a request body."

    .line 9
    invoke-static {v1, p1, p2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lu3/j0;)Lu3/g0$a;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 1
    invoke-virtual {p0, v0, p1}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lu3/g0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/g0$a;->c:Lu3/z$a;

    invoke-virtual {v0, p1}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    return-object p0
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Object;)Lu3/g0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lu3/g0$a;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lu3/g0$a;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    .line 4
    :cond_1
    iget-object v0, p0, Lu3/g0$a;->e:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public i(Ljava/lang/String;)Lu3/g0$a;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const-string v0, "http:"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    .line 3
    invoke-static {p1, v0, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https:"

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "$this$toHttpUrl"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lu3/a0$a;

    invoke-direct {v0}, Lu3/a0$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v0}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lu3/g0$a;->j(Lu3/a0;)Lu3/g0$a;

    return-object p0
.end method

.method public j(Lu3/a0;)Lu3/g0$a;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lu3/g0$a;->a:Lu3/a0;

    return-object p0
.end method
