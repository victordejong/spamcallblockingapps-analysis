.class public Le/q/f/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/q/f/a/e/e/a;

.field public b:Le/q/f/a/c/d;

.field public c:Le/q/f/a/c/a;

.field public d:Lorg/json/JSONObject;

.field public e:Le/q/f/a/c/d;

.field public f:Le/q/f/a/c/d;

.field public g:Le/q/f/a/c/d;

.field public h:Le/q/f/a/f/k;

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/q/f/a/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/q/f/a/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public l:Le/q/f/a/c/d;

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
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
    new-instance v0, Le/q/f/a/c/d;

    invoke-direct {v0}, Le/q/f/a/c/d;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->b:Le/q/f/a/c/d;

    .line 3
    new-instance v0, Le/q/f/a/c/d;

    invoke-direct {v0}, Le/q/f/a/c/d;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->e:Le/q/f/a/c/d;

    .line 4
    new-instance v0, Le/q/f/a/c/d;

    invoke-direct {v0}, Le/q/f/a/c/d;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->f:Le/q/f/a/c/d;

    .line 5
    new-instance v0, Le/q/f/a/c/d;

    invoke-direct {v0}, Le/q/f/a/c/d;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->g:Le/q/f/a/c/d;

    .line 6
    new-instance v0, Le/q/f/a/c/a;

    invoke-direct {v0}, Le/q/f/a/c/a;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->c:Le/q/f/a/c/a;

    .line 7
    new-instance v0, Le/q/f/a/c/d;

    invoke-direct {v0}, Le/q/f/a/c/d;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->l:Le/q/f/a/c/d;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->i:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->j:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->k:Ljava/util/HashMap;

    .line 11
    new-instance v0, Le/q/f/a/f/k;

    invoke-direct {v0}, Le/q/f/a/f/k;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->m:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/q/f/a/b;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Le/q/f/a/c/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 2
    iput-boolean v2, p2, Le/q/f/a/c/e;->c:Z

    const-string v4, "#"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iput-boolean v2, p2, Le/q/f/a/c/e;->a:Z

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Le/q/f/a/c/b;->f:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p2, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p2, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    new-instance v4, Le/q/f/a/c/b;

    invoke-direct {v4}, Le/q/f/a/c/b;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object p2, p2, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/q/f/a/c/b;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v2, p2, Le/q/f/a/c/e;->b:Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Le/q/f/a/c/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, p3, Le/q/f/a/c/e;->c:Z

    .line 4
    iget-object v4, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    new-instance v6, Le/q/f/a/c/d;

    invoke-direct {v6}, Le/q/f/a/c/d;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget v4, p3, Le/q/f/a/c/d;->g:I

    if-nez v4, :cond_1

    .line 7
    iput v3, p3, Le/q/f/a/c/d;->g:I

    goto :goto_1

    :cond_1
    if-ne v4, v3, :cond_2

    const/4 v4, 0x2

    .line 8
    iput v4, p3, Le/q/f/a/c/d;->g:I

    :cond_2
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_3

    .line 9
    iget-object v4, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/q/f/a/c/d;

    iput-boolean v3, v4, Le/q/f/a/c/e;->b:Z

    .line 10
    iget-object v3, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/c/d;

    iput-object p1, v3, Le/q/f/a/c/d;->e:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 11
    iget-object v3, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/c/d;

    iput-object p4, v3, Le/q/f/a/c/d;->i:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 12
    iget-object v3, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/c/d;

    iput-object p5, v3, Le/q/f/a/c/d;->h:Ljava/lang/String;

    .line 13
    :cond_3
    iget-object p3, p3, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/q/f/a/c/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const-string p1, "GDO_NONDET"

    :cond_0
    const-string v1, "\\|"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 4
    aget-object p1, v1, v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/q/f/a/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Le/q/f/a/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p2, p0, Le/q/f/a/b;->m:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/q/f/a/b;->d:Lorg/json/JSONObject;

    const-string v1, "CLASSIFIER"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 7
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, p0, Le/q/f/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/q/f/a/b;->d:Lorg/json/JSONObject;

    const-string v1, "GRAMMAR"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 6
    iget-object v5, p0, Le/q/f/a/b;->j:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "GRMR"

    if-nez v5, :cond_1

    .line 7
    iget-object v5, p0, Le/q/f/a/b;->j:Ljava/util/HashMap;

    new-instance v7, Le/q/f/a/c/c;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "STRUCT"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v10, "PATTERN"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Le/q/f/a/c/c;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 9
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v6, p0, Le/q/f/a/b;->c:Le/q/f/a/c/a;

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    .line 8
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    .line 9
    iput-boolean v10, v6, Le/q/f/a/c/e;->c:Z

    .line 10
    iget-object v11, v6, Le/q/f/a/c/a;->d:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 11
    iget-object v11, v6, Le/q/f/a/c/a;->d:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    new-instance v13, Le/q/f/a/c/a;

    invoke-direct {v13}, Le/q/f/a/c/a;-><init>()V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v11, v7, -0x1

    if-ne v8, v11, :cond_2

    .line 12
    iget-object v5, v6, Le/q/f/a/c/a;->d:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/q/f/a/c/a;

    iput-boolean v10, v5, Le/q/f/a/c/e;->b:Z

    .line 13
    iget-object v5, v6, Le/q/f/a/c/a;->d:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/q/f/a/c/a;

    iget-object v5, v5, Le/q/f/a/c/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    iget-object v5, v6, Le/q/f/a/c/a;->d:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/q/f/a/c/a;

    iget-object v5, v5, Le/q/f/a/c/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_2
    iget-object v6, v6, Le/q/f/a/c/a;->d:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/q/f/a/c/a;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public g()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v2, v1, Le/q/f/a/b;->d:Lorg/json/JSONObject;

    const-string v3, "GRAMMAR"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    iget-object v3, v1, Le/q/f/a/b;->j:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/q/f/a/c/c;

    .line 8
    iget-object v4, v3, Le/q/f/a/c/c;->g:Le/q/f/a/c/b;

    if-nez v4, :cond_13

    .line 9
    new-instance v4, Le/q/f/a/c/b;

    invoke-direct {v4}, Le/q/f/a/c/b;-><init>()V

    iput-object v4, v3, Le/q/f/a/c/c;->g:Le/q/f/a/c/b;

    .line 10
    new-instance v4, Le/q/f/a/c/b;

    invoke-direct {v4}, Le/q/f/a/c/b;-><init>()V

    iput-object v4, v3, Le/q/f/a/c/c;->h:Le/q/f/a/c/b;

    .line 11
    iget-object v4, v1, Le/q/f/a/b;->a:Le/q/f/a/e/e/a;

    .line 12
    iget-object v5, v4, Le/q/f/a/e/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    iget-object v4, v4, Le/q/f/a/e/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    iget-object v0, v3, Le/q/f/a/c/c;->e:Lorg/json/JSONArray;

    const/4 v4, 0x0

    .line 15
    :goto_2
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 16
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Le/q/f/a/c/c;->h:Le/q/f/a/c/b;

    invoke-virtual {v1, v5, v6}, Le/q/f/a/b;->a(Ljava/lang/String;Le/q/f/a/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    .line 18
    :goto_3
    iget-object v4, v3, Le/q/f/a/c/c;->d:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_13

    .line 19
    iget-object v4, v3, Le/q/f/a/c/c;->d:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 21
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "(.*)<(.*)>(.*)"

    .line 23
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 24
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_3

    .line 26
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    .line 28
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-static {v8, v7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_3
    const-string v11, "1"

    move-object v7, v6

    :goto_5
    const-string v8, "(.*)\\[(.*)\\]"

    .line 30
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 31
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 32
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    const-string v13, ""

    if-eqz v12, :cond_4

    .line 33
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_4
    move-object v8, v13

    move-object v10, v8

    .line 35
    :goto_6
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_7

    :cond_5
    move-object v7, v10

    :goto_7
    const-string v9, "\\s+"

    .line 36
    invoke-virtual {v7, v9, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "multiplier"

    const-string v10, "contextIdentifier"

    .line 37
    invoke-static {v9, v11, v10, v8}, Le/d/c/a/a;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    const-string v11, "grammarName"

    .line 38
    invoke-virtual {v8, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 40
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 41
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_10

    aget-object v12, v6, v11

    .line 43
    iget-object v13, v3, Le/q/f/a/c/c;->g:Le/q/f/a/c/b;

    const-string v14, " "

    .line 44
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v2

    .line 45
    :goto_9
    array-length v2, v12

    if-ge v14, v2, :cond_f

    .line 46
    aget-object v2, v12, v14

    move-object/from16 v17, v3

    const-string v3, "{"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "\\{([^\\}]*)\\}(.*)"

    .line 48
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    move-object/from16 v18, v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    move-object/from16 v19, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_a

    :cond_6
    const/4 v4, 0x0

    :goto_a
    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 51
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-lez v14, :cond_8

    const/4 v4, 0x1

    .line 52
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v20, v6

    const-string v6, "-"

    if-eqz v5, :cond_7

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v4, v1, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 56
    iget-object v4, v4, Le/q/f/a/f/k;->b:Ljava/util/HashMap;

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v21, v14, -0x1

    move/from16 v22, v10

    aget-object v10, v12, v21

    invoke-static {v5, v10, v6, v3}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Le/q/f/a/f/a;

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v21, 0x1

    aget-object v2, v2, v21

    move/from16 v21, v9

    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v10, v2}, Le/q/f/a/f/a;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_7
    move/from16 v21, v9

    move/from16 v22, v10

    .line 58
    iget-object v4, v1, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 59
    iget-object v4, v4, Le/q/f/a/f/k;->b:Ljava/util/HashMap;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v14, -0x1

    aget-object v9, v12, v9

    invoke-static {v5, v9, v6, v3}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Le/q/f/a/f/a;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v6, v2}, Le/q/f/a/f/a;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_8
    move-object/from16 v20, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move-object v2, v3

    goto :goto_b

    .line 61
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Seeder: confMap not seeded correctly"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    move/from16 v22, v10

    :goto_b
    move-object v3, v2

    :goto_c
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v13, Le/q/f/a/c/e;->c:Z

    if-eqz v15, :cond_d

    .line 63
    iget-object v2, v1, Le/q/f/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 64
    new-instance v2, Le/q/f/a/c/b;

    invoke-direct {v2}, Le/q/f/a/c/b;-><init>()V

    .line 65
    iget-object v4, v1, Le/q/f/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_b
    iget-object v2, v13, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 67
    iget-object v2, v13, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    iget-object v4, v1, Le/q/f/a/b;->k:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/4 v2, 0x0

    move v15, v2

    goto :goto_d

    .line 68
    :cond_d
    iget-object v2, v13, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 69
    iget-object v2, v13, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    new-instance v4, Le/q/f/a/c/b;

    invoke-direct {v4}, Le/q/f/a/c/b;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_e
    :goto_d
    iget-object v2, v13, Le/q/f/a/c/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/q/f/a/c/b;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v9, v21

    move/from16 v10, v22

    goto/16 :goto_9

    :cond_f
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v9

    move/from16 v22, v10

    const/4 v2, 0x1

    .line 71
    iput-boolean v2, v13, Le/q/f/a/c/e;->b:Z

    .line 72
    iput-object v7, v13, Le/q/f/a/c/b;->f:Ljava/lang/String;

    .line 73
    iput-object v8, v13, Le/q/f/a/c/b;->g:Ljava/lang/String;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_8

    :cond_10
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v21, v9

    .line 74
    iget-object v2, v1, Le/q/f/a/b;->a:Le/q/f/a/e/e/a;

    .line 75
    iget v3, v2, Le/q/f/a/e/e/a;->c:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    iget-object v4, v2, Le/q/f/a/e/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Le/q/f/a/e/e/a;->c:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 76
    iget-object v3, v2, Le/q/f/a/e/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 77
    iget-object v3, v2, Le/q/f/a/e/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_e

    .line 78
    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :goto_e
    new-instance v5, Le/q/f/a/f/f;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Le/q/f/a/f/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, v2, Le/q/f/a/e/e/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_4

    :cond_12
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_13
    move-object/from16 v16, v2

    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method public final h(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "seedconstants"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 6
    iget-object v3, v3, Le/q/f/a/f/k;->d:Le/q/f/a/e/f/a;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 8
    iget-object v3, v3, Le/q/f/a/e/f/a;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "coredims"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 14
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 15
    iget-object v4, p0, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 16
    iget-object v4, v4, Le/q/f/a/f/k;->d:Le/q/f/a/e/f/a;

    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 18
    iget-object v6, v4, Le/q/f/a/e/f/a;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 19
    iget-object v6, v4, Le/q/f/a/e/f/a;->b:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_2
    iget-object v4, v4, Le/q/f/a/e/f/a;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final i(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "children"

    const-string v3, "type"

    const-string v4, "operation"

    const-string v5, "attr"

    const-string v6, "tokens"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3
    :try_start_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v9, p1

    .line 4
    :try_start_1
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 5
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    goto :goto_1

    :cond_0
    move-object v11, v12

    .line 6
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v14, p3

    :try_start_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    goto :goto_2

    :cond_1
    move-object v13, v12

    .line 8
    :goto_2
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    goto :goto_3

    :cond_2
    move-object v15, v12

    .line 9
    :goto_3
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object/from16 v16, v3

    .line 10
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v17, v4

    move-object/from16 v4, p4

    .line 11
    :try_start_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x0

    if-eqz v18, :cond_4

    .line 13
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move/from16 v5, v19

    .line 14
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 15
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    :cond_5
    if-eqz v15, :cond_6

    move/from16 v4, v19

    .line 16
    :goto_5
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 17
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    if-eqz v11, :cond_7

    move/from16 v4, v19

    .line 18
    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 19
    iget-object v5, v0, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 20
    iget-object v5, v5, Le/q/f/a/f/k;->a:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Le/q/f/a/e/f/b;

    invoke-direct {v15, v12, v13, v3, v8}, Le/q/f/a/e/f/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 22
    :cond_7
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 23
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 24
    invoke-virtual {v0, v4, v1, v8, v3}, Le/q/f/a/b;->i(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_0
    move-object/from16 v9, p1

    :catch_1
    move-object/from16 v14, p3

    :catch_2
    move-object/from16 v16, v3

    :catch_3
    move-object/from16 v17, v4

    :catch_4
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    :catch_5
    :cond_8
    :goto_7
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public j(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "ontology"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "typology"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1, v2, v3}, Le/q/f/a/b;->i(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "contextbreak"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Le/q/f/a/b;->h:Le/q/f/a/f/k;

    .line 5
    iget-object v2, v2, Le/q/f/a/f/k;->c:Ljava/util/List;

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Le/q/f/a/b;->h(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public k()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/q/f/a/b;->d:Lorg/json/JSONObject;

    const-string v2, "TOKENS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "(.*)\\[(.*)\\]"

    .line 5
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 8
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, "type"

    move-object v5, v3

    :goto_1
    const-string v8, "([^0-9]*)([0-9]+)"

    .line 10
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 11
    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    if-ne v9, v6, :cond_1

    .line 13
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    move-object v8, v5

    .line 14
    :goto_2
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v9, v3

    const/4 v10, 0x0

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_8

    aget-object v12, v3, v11

    .line 15
    iget-object v13, v0, Le/q/f/a/b;->b:Le/q/f/a/c/d;

    const-string v14, "|"

    .line 16
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "\\|"

    .line 17
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 18
    aget-object v14, v12, v10

    .line 19
    aget-object v12, v12, v7

    move-object/from16 v17, v14

    move-object v14, v12

    move-object/from16 v12, v17

    goto :goto_4

    :cond_2
    const/4 v14, 0x0

    .line 20
    :goto_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    :goto_5
    if-ge v10, v15, :cond_7

    .line 21
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 22
    iput-boolean v7, v13, Le/q/f/a/c/e;->c:Z

    .line 23
    iget-object v6, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 24
    iget-object v6, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    new-instance v0, Le/q/f/a/c/d;

    invoke-direct {v0}, Le/q/f/a/c/d;-><init>()V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_3
    iget v0, v13, Le/q/f/a/c/d;->g:I

    if-nez v0, :cond_4

    const/4 v6, 0x1

    .line 26
    iput v6, v13, Le/q/f/a/c/d;->g:I

    goto :goto_6

    :cond_4
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    const/4 v0, 0x2

    .line 27
    iput v0, v13, Le/q/f/a/c/d;->g:I

    goto :goto_7

    :cond_5
    :goto_6
    const/4 v0, 0x2

    :goto_7
    add-int/lit8 v7, v15, -0x1

    if-ne v10, v7, :cond_6

    .line 28
    iget-object v7, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/c/d;

    iput-boolean v6, v0, Le/q/f/a/c/e;->b:Z

    .line 29
    iget-object v0, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/c/d;

    iput-object v8, v0, Le/q/f/a/c/d;->e:Ljava/lang/String;

    .line 30
    iget-object v0, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/c/d;

    iput-object v5, v0, Le/q/f/a/c/d;->f:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 31
    iget-object v0, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/c/d;

    iput-object v14, v0, Le/q/f/a/c/d;->i:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 32
    iget-object v0, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/c/d;

    iput-object v4, v0, Le/q/f/a/c/d;->h:Ljava/lang/String;

    .line 33
    :cond_6
    iget-object v0, v13, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Le/q/f/a/c/d;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v7, v6

    const/4 v6, 0x2

    goto/16 :goto_5

    :cond_7
    move v6, v7

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v7, v6

    const/4 v6, 0x2

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    return-void
.end method
