.class public Le/i/b/b2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/b2/d;


# instance fields
.field public final a:Le/i/b/q2/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/b2/f;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/b2/f;->a:Le/i/b/q2/h;

    return-void
.end method


# virtual methods
.method public a()Le/i/b/d2/a;
    .locals 1

    .line 6
    sget-object v0, Le/i/b/d2/a;->i:Le/i/b/d2/a;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "crt_cpm"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crt_displayUrl"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crt_size"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public c(Ljava/lang/Object;Le/i/b/s2/a;Le/i/b/u2/w;)V
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-virtual {p3}, Le/i/b/u2/w;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crt_displayUrl"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p3}, Le/i/b/u2/w;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crt_cpm"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crt_displayUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Le/i/b/u2/w;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Le/i/b/u2/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v3, Le/i/b/s2/a;->a:Le/i/b/s2/a;

    if-ne p2, v3, :cond_1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Le/i/b/u2/w;->l()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Le/i/b/u2/w;->g()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crt_size"

    .line 8
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0, v2, p3, v1, p2}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_1
    iget-object p1, p0, Le/i/b/b2/f;->a:Le/i/b/q2/h;

    sget-object p2, Le/i/b/d2/a;->i:Le/i/b/d2/a;

    invoke-static {p2, v0}, Le/i/b/b2/a;->a(Le/i/b/d2/a;Ljava/lang/String;)Le/i/b/q2/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method
