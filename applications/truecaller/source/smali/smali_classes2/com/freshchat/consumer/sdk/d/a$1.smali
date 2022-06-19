.class public Lcom/freshchat/consumer/sdk/d/a$1;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic ew:Ljava/util/Map;

.field public final synthetic ex:Ljava/util/Map;

.field public final synthetic ey:Lcom/freshchat/consumer/sdk/d/a;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/d/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ew:Ljava/util/Map;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ex:Ljava/util/Map;

    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/a;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Le/m/d/y/n;->M0(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->a(Le/m/e/q;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ew:Ljava/util/Map;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/String;Ljava/util/Map;Le/m/e/q;Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Le/m/e/b0;->fromJsonTree(Le/m/e/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Le/m/e/u;

    const-string v1, "cannot deserialize "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " subtype named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; did you forget to register a subtype?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/m/e/u;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/c;",
            "TR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/d/a;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ex:Ljava/util/Map;

    invoke-virtual {v2, v0, v3}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/Class;Ljava/util/Map;)Le/m/e/b0;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-virtual {v0, v1, v2, p2}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/String;Le/m/e/b0;Ljava/lang/Object;)Le/m/e/t;

    move-result-object p2

    new-instance v0, Le/m/e/t;

    invoke-direct {v0}, Le/m/e/t;-><init>()V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/m/e/w;

    invoke-direct {v3, v1}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v1, v2, v3}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Le/m/e/t;->k()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Le/m/e/e0/s$b;

    .line 3
    iget-object p2, p2, Le/m/e/e0/s$b;->a:Le/m/e/e0/s;

    .line 4
    iget-object v1, p2, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    iget-object v1, v1, Le/m/e/e0/s$e;->d:Le/m/e/e0/s$e;

    .line 5
    iget v2, p2, Le/m/e/e0/s;->d:I

    .line 6
    :goto_0
    iget-object v3, p2, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 7
    iget-object v3, p2, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    if-eq v1, v3, :cond_2

    .line 8
    iget v3, p2, Le/m/e/e0/s;->d:I

    if-ne v3, v2, :cond_1

    .line 9
    iget-object v3, v1, Le/m/e/e0/s$e;->d:Le/m/e/e0/s$e;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/e/q;

    invoke-virtual {v0, v4, v1}, Le/m/e/t;->h(Ljava/lang/String;Le/m/e/q;)V

    move-object v1, v3

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 13
    :cond_3
    sget-object p2, Le/m/e/e0/a0/o;->X:Le/m/e/b0;

    invoke-virtual {p2, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_4
    new-instance p1, Le/m/e/u;

    const-string p2, "cannot serialize "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "; did you forget to register a subtype?"

    invoke-static {v0, p2, v1}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/e/u;-><init>(Ljava/lang/String;)V

    throw p1
.end method
