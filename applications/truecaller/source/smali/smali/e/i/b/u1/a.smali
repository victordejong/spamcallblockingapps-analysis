.class public Le/i/b/u1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/i/b/u2/p;",
            "Le/i/b/u2/w;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/i/b/s2/i;


# direct methods
.method public constructor <init>(Le/i/b/s2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/i/b/u1/a;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Le/i/b/u1/a;->b:Le/i/b/s2/i;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/u2/p;)Le/i/b/u2/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u1/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/u2/w;

    return-object p1
.end method

.method public b(Le/i/b/u2/w;)Le/i/b/u2/p;
    .locals 6

    .line 1
    invoke-virtual {p1}, Le/i/b/u2/w;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p1, Le/i/b/u2/w;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Le/i/b/s2/a;->c:Le/i/b/s2/a;

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Le/i/b/u1/a;->b:Le/i/b/s2/i;

    invoke-virtual {v1}, Le/i/b/s2/i;->a()Lcom/criteo/publisher/model/AdSize;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    .line 6
    new-instance v3, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Le/i/b/u2/w;->l()I

    move-result v4

    invoke-virtual {p1}, Le/i/b/u2/w;->g()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    .line 7
    invoke-virtual {v3, v1}, Lcom/criteo/publisher/model/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3, v2}, Lcom/criteo/publisher/model/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Le/i/b/s2/a;->a:Le/i/b/s2/a;

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    sget-object v1, Le/i/b/s2/a;->b:Le/i/b/s2/a;

    .line 10
    :goto_1
    new-instance v2, Le/i/b/u2/p;

    new-instance v3, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Le/i/b/u2/w;->l()I

    move-result v4

    invoke-virtual {p1}, Le/i/b/u2/w;->g()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v2, v3, v0, v1}, Le/i/b/u2/p;-><init>(Lcom/criteo/publisher/model/AdSize;Ljava/lang/String;Le/i/b/s2/a;)V

    return-object v2
.end method
