.class public Lcom/freshchat/consumer/sdk/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final fieldName:Ljava/lang/String;

.field private final nk:Ljava/lang/String;

.field public final synthetic nm:Lcom/freshchat/consumer/sdk/d/b;

.field private final nn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/d/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nm:Lcom/freshchat/consumer/sdk/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nn:Ljava/util/Map;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nk:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/d/b$b;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/d/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/freshchat/consumer/sdk/d/b<",
            "TT;>.b;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nn:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label or clz cannot be null while adding secondaryType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public gY()V
    .locals 11

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nn:Ljava/util/Map;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nm:Lcom/freshchat/consumer/sdk/d/b;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/d/b;->a(Lcom/freshchat/consumer/sdk/d/b;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nn:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    new-instance v3, Lcom/freshchat/consumer/sdk/d/b$a;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nm:Lcom/freshchat/consumer/sdk/d/b;

    iget-object v6, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nk:Ljava/lang/String;

    iget-object v8, p0, Lcom/freshchat/consumer/sdk/d/b$b;->fieldName:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v4, v3

    move-object v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/freshchat/consumer/sdk/d/b$a;-><init>(Lcom/freshchat/consumer/sdk/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/freshchat/consumer/sdk/d/c;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nm:Lcom/freshchat/consumer/sdk/d/b;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/d/b;->b(Lcom/freshchat/consumer/sdk/d/b;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nm:Lcom/freshchat/consumer/sdk/d/b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/b;->a(Lcom/freshchat/consumer/sdk/d/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/b$b;->nk:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secondaryTypes list cannot be empty while registering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
