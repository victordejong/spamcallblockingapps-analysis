.class public Lcom/freshchat/consumer/sdk/d/b;
.super Lcom/freshchat/consumer/sdk/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/d/b$b;,
        Lcom/freshchat/consumer/sdk/d/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/freshchat/consumer/sdk/d/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final nh:Ljava/lang/String;

.field private final ni:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/d/b<",
            "TT;>.a;>;>;"
        }
    .end annotation
.end field

.field private final nj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/freshchat/consumer/sdk/d/b<",
            "TT;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/d/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string p1, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b;->nh:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b;->ni:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b;->nj:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/d/b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/d/b;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/d/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/d/b;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b;->ni:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Ljava/lang/String;Le/m/e/q;)Z
    .locals 5

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->eu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b;->ni:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/d/b$a;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/d/b$a;->a(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/d/b$a;->b(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, p2, v0, v4}, Lcom/freshchat/consumer/sdk/d/a;->a(Le/m/e/q;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/d/b$a;->c(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_6
    return v1
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/d/b;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/b;->nj:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/util/Map;)Le/m/e/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/e/b0<",
            "*>;>;)",
            "Le/m/e/b0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b;->nj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/d/b$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/d/b$a;->e(Lcom/freshchat/consumer/sdk/d/b$a;)Le/m/e/b0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/Class;Ljava/util/Map;)Le/m/e/b0;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Le/m/e/q;Ljava/lang/Class;)Le/m/e/b0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/e/b0<",
            "*>;>;",
            "Le/m/e/q;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/m/e/b0<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b;->ni:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b;->ni:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/d/b$a;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/b$a;->b(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p3, p4, v2}, Lcom/freshchat/consumer/sdk/d/a;->a(Le/m/e/q;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/b$a;->c(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/b$a;->e(Lcom/freshchat/consumer/sdk/d/b$a;)Le/m/e/b0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/String;Ljava/util/Map;Le/m/e/q;Ljava/lang/Class;)Le/m/e/b0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    invoke-super {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/String;Ljava/util/Map;Le/m/e/q;Ljava/lang/Class;)Le/m/e/b0;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Le/m/e/b0;Ljava/lang/Object;)Le/m/e/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Le/m/e/b0<",
            "TR;>;TR;)",
            "Le/m/e/t;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/String;Le/m/e/b0;Ljava/lang/Object;)Le/m/e/t;

    move-result-object p2

    const-string p3, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    invoke-static {p1, p3}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    const-string p1, "rawJsonOfUnsupportedType"

    .line 1
    iget-object p3, p2, Le/m/e/t;->a:Le/m/e/e0/s;

    .line 2
    invoke-virtual {p3, p1}, Le/m/e/e0/s;->g(Ljava/lang/Object;)Le/m/e/e0/s$e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/m/e/e0/s$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Le/m/e/w;

    .line 5
    invoke-virtual {p1}, Le/m/e/w;->g()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p3, Ljava/io/StringReader;

    invoke-direct {p3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 7
    :try_start_1
    new-instance p1, Le/m/e/g0/a;

    invoke-direct {p1, p3}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 8
    invoke-static {p1}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object p3

    .line 9
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    instance-of v0, p3, Le/m/e/s;

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object p1

    sget-object v0, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance p1, Le/m/e/z;

    const-string p3, "Did not consume the entire document."

    invoke-direct {p1, p3}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Le/m/e/g0/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 13
    :cond_3
    :goto_1
    :try_start_2
    check-cast p3, Le/m/e/t;

    return-object p3

    :catch_0
    move-exception p1

    .line 14
    new-instance p3, Le/m/e/z;

    invoke-direct {p3, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 15
    new-instance p3, Le/m/e/r;

    invoke-direct {p3, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_2
    move-exception p1

    .line 16
    new-instance p3, Le/m/e/z;

    invoke-direct {p3, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public a(Le/m/e/q;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/q;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/d/a;->a(Le/m/e/q;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1}, Lcom/freshchat/consumer/sdk/d/b;->a(Ljava/lang/String;Le/m/e/q;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot deserialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " subtype named "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; did you forget to register a subtype?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FRESHCHAT_WARNING"

    invoke-static {p3, p2}, Lcom/freshchat/consumer/sdk/j/ai;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p2

    invoke-virtual {p1}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p1

    invoke-virtual {p1}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "rawJsonOfUnsupportedType"

    invoke-virtual {p2, p3, p1}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    :cond_0
    return-object p3
.end method

.method public b(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/freshchat/consumer/sdk/d/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    invoke-virtual {p0, p1, v0}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b;->nj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/d/b$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/d/b$a;->d(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/d/a;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TR;>;)",
            "Le/m/e/b0<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b;->ni:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/d/b$a;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/d/b$a;->a(Lcom/freshchat/consumer/sdk/d/b$a;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Le/m/e/f0/a;->get(Ljava/lang/Class;)Le/m/e/f0/a;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Le/m/e/k;->j(Le/m/e/c0;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/d/b$a;->a(Lcom/freshchat/consumer/sdk/d/b$a;Le/m/e/b0;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/d/a;->create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/d/b<",
            "TT;>.b;"
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/d/b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshchat/consumer/sdk/d/b$b;-><init>(Lcom/freshchat/consumer/sdk/d/b;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
