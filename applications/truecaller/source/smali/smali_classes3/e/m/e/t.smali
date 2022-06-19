.class public final Le/m/e/t;
.super Le/m/e/q;
.source "SourceFile"


# instance fields
.field public final a:Le/m/e/e0/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/e0/s<",
            "Ljava/lang/String;",
            "Le/m/e/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/e/q;-><init>()V

    .line 2
    new-instance v0, Le/m/e/e0/s;

    invoke-direct {v0}, Le/m/e/e0/s;-><init>()V

    iput-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Le/m/e/t;

    if-eqz v0, :cond_0

    check-cast p1, Le/m/e/t;

    iget-object p1, p1, Le/m/e/t;->a:Le/m/e/e0/s;

    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public h(Ljava/lang/String;Le/m/e/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    if-nez p2, :cond_0

    sget-object p2, Le/m/e/s;->a:Le/m/e/s;

    :cond_0
    invoke-virtual {v0, p1, p2}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Le/m/e/s;->a:Le/m/e/s;

    goto :goto_0

    :cond_0
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, p2}, Le/m/e/w;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v0, p1, p2}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Le/m/e/s;->a:Le/m/e/s;

    goto :goto_0

    :cond_0
    new-instance v0, Le/m/e/w;

    invoke-direct {v0, p2}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 2
    :goto_0
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v0, p1, p2}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Le/m/e/q;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v0}, Le/m/e/e0/s;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Le/m/e/q;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    .line 2
    invoke-virtual {v0, p1}, Le/m/e/e0/s;->g(Ljava/lang/Object;)Le/m/e/e0/s$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/m/e/e0/s$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Le/m/e/q;

    return-object p1
.end method

.method public m(Ljava/lang/String;)Le/m/e/t;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    .line 2
    invoke-virtual {v0, p1}, Le/m/e/e0/s;->g(Ljava/lang/Object;)Le/m/e/e0/s$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/m/e/e0/s$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Le/m/e/t;

    return-object p1
.end method

.method public n(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    .line 2
    invoke-virtual {v0, p1}, Le/m/e/e0/s;->g(Ljava/lang/Object;)Le/m/e/e0/s$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
