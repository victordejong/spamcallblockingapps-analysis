.class public Le/m/d/b0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/d/j/c;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Le/m/d/b0/r/j;

.field public final e:Le/m/d/b0/r/j;

.field public final f:Le/m/d/b0/r/j;

.field public final g:Le/m/d/b0/r/l;

.field public final h:Le/m/d/b0/r/m;

.field public final i:Le/m/d/b0/r/n;

.field public final j:Le/m/d/w/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/d/g;Le/m/d/w/i;Le/m/d/j/c;Ljava/util/concurrent/Executor;Le/m/d/b0/r/j;Le/m/d/b0/r/j;Le/m/d/b0/r/j;Le/m/d/b0/r/l;Le/m/d/b0/r/m;Le/m/d/b0/r/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/b0/k;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/m/d/b0/k;->j:Le/m/d/w/i;

    .line 4
    iput-object p4, p0, Le/m/d/b0/k;->b:Le/m/d/j/c;

    .line 5
    iput-object p5, p0, Le/m/d/b0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p6, p0, Le/m/d/b0/k;->d:Le/m/d/b0/r/j;

    .line 7
    iput-object p7, p0, Le/m/d/b0/k;->e:Le/m/d/b0/r/j;

    .line 8
    iput-object p8, p0, Le/m/d/b0/k;->f:Le/m/d/b0/r/j;

    .line 9
    iput-object p9, p0, Le/m/d/b0/k;->g:Le/m/d/b0/r/l;

    .line 10
    iput-object p10, p0, Le/m/d/b0/k;->h:Le/m/d/b0/r/m;

    .line 11
    iput-object p11, p0, Le/m/d/b0/k;->i:Le/m/d/b0/r/n;

    return-void
.end method

.method public static d(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/b0/k;->d:Le/m/d/b0/r/j;

    invoke-virtual {v0}, Le/m/d/b0/r/j;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m/d/b0/k;->e:Le/m/d/b0/r/j;

    invoke-virtual {v1}, Le/m/d/b0/r/j;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->h([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, p0, Le/m/d/b0/k;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Le/m/d/b0/e;

    invoke-direct {v4, p0, v0, v1}, Le/m/d/b0/e;-><init>(Le/m/d/b0/k;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/d/b0/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/b0/k;->h:Le/m/d/b0/r/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v2, v0, Le/m/d/b0/r/m;->c:Le/m/d/b0/r/j;

    invoke-static {v2}, Le/m/d/b0/r/m;->c(Le/m/d/b0/r/j;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v2, v0, Le/m/d/b0/r/m;->d:Le/m/d/b0/r/j;

    invoke-static {v2}, Le/m/d/b0/r/m;->c(Le/m/d/b0/r/j;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, v0, Le/m/d/b0/r/m;->c:Le/m/d/b0/r/j;

    invoke-static {v4, v3}, Le/m/d/b0/r/m;->d(Le/m/d/b0/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    .line 9
    iget-object v6, v0, Le/m/d/b0/r/m;->c:Le/m/d/b0/r/j;

    invoke-static {v6}, Le/m/d/b0/r/m;->b(Le/m/d/b0/r/j;)Le/m/d/b0/r/k;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Le/m/d/b0/r/m;->a(Ljava/lang/String;Le/m/d/b0/r/k;)V

    .line 10
    new-instance v6, Le/m/d/b0/r/p;

    invoke-direct {v6, v4, v5}, Le/m/d/b0/r/p;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v4, v0, Le/m/d/b0/r/m;->d:Le/m/d/b0/r/j;

    invoke-static {v4, v3}, Le/m/d/b0/r/m;->d(Le/m/d/b0/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 12
    new-instance v5, Le/m/d/b0/r/p;

    invoke-direct {v5, v4, v6}, Le/m/d/b0/r/p;-><init>(Ljava/lang/String;I)V

    move-object v6, v5

    goto :goto_1

    :cond_1
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "FirebaseRemoteConfigValue"

    aput-object v7, v4, v5

    aput-object v3, v4, v6

    const-string v6, "No value of type \'%s\' exists for parameter key \'%s\'."

    .line 13
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    new-instance v6, Le/m/d/b0/r/p;

    const-string v4, ""

    invoke-direct {v6, v4, v5}, Le/m/d/b0/r/p;-><init>(Ljava/lang/String;I)V

    .line 15
    :goto_1
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/d/b0/k;->h:Le/m/d/b0/r/m;

    .line 2
    iget-object v1, v0, Le/m/d/b0/r/m;->c:Le/m/d/b0/r/j;

    invoke-static {v1, p1}, Le/m/d/b0/r/m;->d(Le/m/d/b0/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Le/m/d/b0/r/m;->c:Le/m/d/b0/r/j;

    invoke-static {v2}, Le/m/d/b0/r/m;->b(Le/m/d/b0/r/j;)Le/m/d/b0/r/k;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Le/m/d/b0/r/m;->a(Ljava/lang/String;Le/m/d/b0/r/k;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Le/m/d/b0/r/m;->d:Le/m/d/b0/r/j;

    invoke-static {v0, p1}, Le/m/d/b0/r/m;->d(Le/m/d/b0/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "String"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "No value of type \'%s\' exists for parameter key \'%s\'."

    .line 5
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string v1, ""

    :goto_0
    return-object v1
.end method
