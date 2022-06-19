.class public Le/k/a/c/k0/t;
.super Le/k/a/c/k0/v;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/v;-><init>()V

    iput-object p1, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Le/k/a/c/m;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Le/k/a/c/m;

    invoke-interface {v0, p1, p2}, Le/k/a/c/m;->c(Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p2, Le/k/a/c/a0;->l:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Le/k/a/b/g;->D0()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p2, Le/k/a/c/a0;->h:Le/k/a/c/n;

    invoke-virtual {v0, v1, p1, p2}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    .line 9
    invoke-virtual {p2, v2, v3, v1}, Le/k/a/c/a0;->A(Ljava/lang/Class;ZLe/k/a/c/d;)Le/k/a/c/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Le/k/a/c/k0/t;

    if-eqz v2, :cond_4

    .line 2
    check-cast p1, Le/k/a/c/k0/t;

    .line 3
    iget-object v2, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 4
    iget-object p1, p1, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p1, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public f(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    return p1
.end method

.method public h(D)D
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public l(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/t;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->h:Le/k/a/c/k0/m;

    return-object v0
.end method
