.class public Le/h/a/c/f;
.super Le/h/a/c/j;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/m;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/h/a/c/n0/a;

.field public final d:Le/h/a/c/k;

.field public final e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final f:Landroid/content/Context;

.field public final g:Le/h/a/c/v;

.field public final h:Le/h/a/c/w;

.field public final i:Le/h/a/c/b0;

.field public final j:Le/h/a/c/f0;

.field public final k:Le/h/a/c/a1/b;

.field public final l:Le/h/a/c/a1/c;

.field public final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/n0/a;Le/h/a/c/a1/c;Le/h/a/c/a1/b;Le/h/a/c/w;Le/h/a/c/f0;Le/h/a/c/b0;Le/h/a/c/k;Le/h/a/c/v;Le/h/a/c/m;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/h/a/c/j;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Le/h/a/c/f;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/h/a/c/f;->m:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/h/a/c/f;->n:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/h/a/c/f;->o:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iput-object p3, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    .line 9
    iput-object p4, p0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    .line 10
    iput-object p5, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    .line 11
    iput-object p6, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    .line 12
    iput-object p7, p0, Le/h/a/c/f;->j:Le/h/a/c/f0;

    .line 13
    iput-object p8, p0, Le/h/a/c/f;->i:Le/h/a/c/b0;

    .line 14
    iput-object p9, p0, Le/h/a/c/f;->d:Le/h/a/c/k;

    .line 15
    iput-object p11, p0, Le/h/a/c/f;->a:Le/h/a/c/m;

    .line 16
    iput-object p10, p0, Le/h/a/c/f;->g:Le/h/a/c/v;

    return-void
.end method

.method public static f(Le/h/a/c/f;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    .line 4
    invoke-virtual {v0, p2}, Le/h/a/c/a1/c;->c(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v0

    .line 5
    iget-object v1, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x20b

    .line 7
    :try_start_0
    invoke-static {v1}, Le/h/a/c/a1/c$a;->valueOf(Ljava/lang/String;)Le/h/a/c/a1/c$a;

    move-result-object v6

    if-eqz v6, :cond_2

    const/16 v6, 0x18

    new-array v7, v4, [Ljava/lang/String;

    aput-object v1, v7, v3

    .line 8
    invoke-static {v5, v6, v7}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v1

    .line 9
    iget-object v6, v1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 10
    iput-object v6, v0, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 11
    iget v1, v1, Le/h/a/c/a1/a;->a:I

    .line 12
    iput v1, v0, Le/h/a/c/a1/a;->a:I

    .line 13
    iput-object v2, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    :cond_2
    iget v1, v0, Le/h/a/c/a1/a;->a:I

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v1, v0}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 16
    :cond_3
    iget-object v0, v0, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v10, v2

    if-eqz v10, :cond_6

    .line 18
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 19
    :cond_5
    :try_start_1
    invoke-virtual {p0, v10, p3}, Le/h/a/c/f;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 20
    invoke-virtual {p0, p1, v10}, Le/h/a/c/f;->b(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v6, p0

    move-object v9, p1

    move-object v11, p3

    .line 21
    invoke-virtual/range {v6 .. v11}, Le/h/a/c/f;->e(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 22
    :catchall_1
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    :goto_0
    new-array p1, v4, [Ljava/lang/String;

    aput-object p2, p1, v3

    const/16 p3, 0x17

    .line 25
    invoke-static {v5, p3, p1}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 26
    iget-object p3, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {p3, p1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 27
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 28
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid multi-value property key "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " profile multi value operation aborted"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_7
    :goto_1
    invoke-virtual {p0, p2}, Le/h/a/c/f;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "t"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "evtName"

    const-string v3, "wzrk_fetch"

    .line 6
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "evtData"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v2, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v3, 0x7

    .line 10
    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    .line 3
    :cond_1
    iget-object v3, p0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v3, v2}, Le/h/a/c/a1/c;->b(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object v2

    .line 4
    iget v3, v2, Le/h/a/c/a1/a;->a:I

    if-eqz v3, :cond_2

    .line 5
    iget-object v3, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v3, v2}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 6
    :cond_2
    iget-object v2, v2, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Le/h/a/c/f;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_6
    return-object v1

    .line 11
    :catchall_0
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, p2}, Le/h/a/c/f;->d(Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "$remove"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$add"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Le/h/a/c/f;->j:Le/h/a/c/f0;

    invoke-virtual {v1, p1}, Le/h/a/c/f0;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 6
    :cond_2
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Lorg/json/JSONArray;

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_4
    move-object p2, v1

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_7

    .line 10
    iget-object v0, p0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    invoke-virtual {v0, p1}, Le/h/a/c/a1/c;->b(Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 11
    iget v0, p1, Le/h/a/c/a1/a;->a:I

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v0, p1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 13
    :cond_5
    iget-object p1, p1, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object p1, v1

    :cond_7
    if-eqz p1, :cond_8

    .line 15
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p2

    :cond_8
    return-object p2
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x200

    .line 1
    invoke-static {p1, v0, v1}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {v0, p1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 3
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    :try_start_0
    const-string v1, "$remove"

    .line 2
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "multiValuePropertyRemoveValues"

    goto :goto_0

    :cond_0
    const-string v1, "multiValuePropertyAddValues"

    .line 3
    :goto_0
    iget-object v2, p0, Le/h/a/c/f;->l:Le/h/a/c/a1/c;

    .line 4
    invoke-virtual {v2, p1, p2, v1, p4}, Le/h/a/c/a1/c;->e(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 5
    iget p2, p1, Le/h/a/c/a1/a;->a:I

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Le/h/a/c/f;->k:Le/h/a/c/a1/b;

    invoke-virtual {p2, p1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 7
    :cond_1
    iget-object p1, p1, Le/h/a/c/a1/a;->c:Ljava/lang/Object;

    .line 8
    check-cast p1, Lorg/json/JSONArray;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Le/h/a/c/f;->j:Le/h/a/c/f0;

    .line 11
    invoke-virtual {v1, p4, p1, v0, p2}, Le/h/a/c/f0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;Z)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget-object p1, p0, Le/h/a/c/f;->j:Le/h/a/c/f0;

    .line 13
    invoke-virtual {p1, p4, v0, p2}, Le/h/a/c/f0;->k(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 14
    :goto_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {p2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object p1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    invoke-virtual {p1, p2}, Le/h/a/c/n0/a;->b(Lorg/json/JSONObject;)V

    .line 19
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p3, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object p3, p3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 21
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Constructed multi-value profile push: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 22
    :catchall_0
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    return-void
.end method

.method public final g(Landroid/os/Bundle;Ljava/util/HashMap;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/f;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "wzrk_id"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    int-to-long v6, p3

    cmp-long p3, v4, v6

    if-gez p3, :cond_0

    const/4 p3, 0x1

    move v1, p3

    .line 6
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    :try_start_1
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-virtual {v0, v1}, Le/h/a/c/w;->d(Z)V

    .line 4
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "App Launched Events disabled in the Android Manifest file"

    .line 6
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-virtual {v0}, Le/h/a/c/w;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 9
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "App Launched has already been triggered. Will not trigger it "

    .line 10
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v2, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Firing App Launched event"

    .line 13
    invoke-virtual {v0, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-virtual {v0, v1}, Le/h/a/c/w;->d(Z)V

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "evtName"

    const-string v2, "App Launched"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "evtData"

    .line 17
    iget-object v2, p0, Le/h/a/c/f;->i:Le/h/a/c/b0;

    invoke-virtual {v2}, Le/h/a/c/b0;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :catchall_0
    iget-object v1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v2, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public declared-synchronized i(Landroid/net/Uri;Z)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Ln3/g0/y;->G0(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "us"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    const-string v2, "us"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    iget-object v3, v1, Le/h/a/c/w;->p:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 7
    iput-object v2, v1, Le/h/a/c/w;->p:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_2
    :goto_0
    const-string v1, "um"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    const-string v2, "um"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 12
    :try_start_3
    iget-object v3, v1, Le/h/a/c/w;->q:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 13
    iput-object v2, v1, Le/h/a/c/w;->q:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :cond_3
    :try_start_4
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_4
    :goto_1
    const-string v1, "uc"

    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    iget-object v1, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    const-string v2, "uc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 18
    :try_start_5
    iget-object v3, v1, Le/h/a/c/w;->r:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 19
    iput-object v2, v1, Le/h/a/c/w;->r:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :cond_5
    :try_start_6
    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_6
    :goto_2
    const-string v1, "referrer"

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    if-eqz p2, :cond_7

    const-string p2, "install"

    .line 22
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 23
    :cond_7
    :try_start_7
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 26
    :catch_0
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_8

    .line 27
    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    .line 29
    :cond_8
    :try_start_9
    iget-object v0, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v1, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    .line 30
    :catchall_3
    :try_start_a
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 31
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 33
    :catchall_4
    :goto_4
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j(ZLcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "wzrk_"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    const-string p2, "evtName"

    if-eqz p1, :cond_4

    .line 12
    :try_start_1
    iget-object p1, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-virtual {p1, v1}, Le/h/a/c/w;->f(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string p1, "Notification Clicked"

    .line 13
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string p1, "Notification Viewed"

    .line 14
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string p1, "evtData"

    .line 15
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object p1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object p2, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, v0, p3}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public k(ZLcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->a()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_1
    const-string p3, "evtName"

    if-eqz p1, :cond_2

    .line 6
    :try_start_1
    iget-object p1, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-virtual {p1, p2}, Le/h/a/c/w;->f(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string p1, "Notification Clicked"

    .line 7
    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string p1, "Notification Viewed"

    .line 8
    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string p1, "evtData"

    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object p2, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 p3, 0x4

    invoke-virtual {p1, p2, v0, p3}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referrer received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 5
    iget-object v1, p0, Le/h/a/c/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/h/a/c/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v0, v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 6
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Skipping install referrer due to duplicate within 10 seconds"

    .line 8
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Le/h/a/c/f;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wzrk://track?install=true&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Le/h/a/c/f;->i(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "is Analytics Only - will not process Notification Clicked event."

    .line 5
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_e

    .line 6
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "wzrk_pn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "wzrk_acct_id"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 8
    iget-object v2, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 9
    iget-boolean v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v2, :cond_3

    .line 10
    :cond_2
    iget-object v2, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 13
    iget-object p1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Push notification not targeted at this instance, not processing Notification Clicked Event"

    .line 15
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v1, "wzrk_inapp"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 18
    new-instance v1, Le/h/a/c/f$a;

    invoke-direct {v1, p0, p1}, Le/h/a/c/f$a;-><init>(Le/h/a/c/f;Landroid/os/Bundle;)V

    .line 19
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 20
    new-instance v2, Le/h/a/c/y0/j;

    const-string v3, "testInappNotification"

    invoke-direct {v2, v0, v3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 21
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    const-string v1, "wzrk_inbox"

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 24
    new-instance v1, Le/h/a/c/f$b;

    invoke-direct {v1, p0, p1}, Le/h/a/c/f$b;-><init>(Le/h/a/c/f;Landroid/os/Bundle;)V

    .line 25
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v2, Le/h/a/c/y0/j;

    const-string v3, "testInboxNotification"

    invoke-direct {v2, v0, v3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 27
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    const-string v1, "wzrk_adunit"

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "adUnit_notifs"

    .line 32
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    new-instance p1, Le/h/a/c/x0/e;

    invoke-direct {p1}, Le/h/a/c/x0/e;-><init>()V

    .line 36
    new-instance v1, Le/h/a/c/x0/g;

    iget-object v3, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v4, p0, Le/h/a/c/f;->d:Le/h/a/c/k;

    iget-object v5, p0, Le/h/a/c/f;->g:Le/h/a/c/v;

    invoke-direct {v1, p1, v3, v4, v5}, Le/h/a/c/x0/g;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;Le/h/a/c/v;)V

    .line 37
    iget-object p1, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Le/h/a/c/x0/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void

    :cond_8
    const-string v0, "wzrk_id"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_3

    .line 39
    :cond_9
    iget-object v0, p0, Le/h/a/c/f;->m:Ljava/util/HashMap;

    const/16 v1, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Le/h/a/c/f;->g(Landroid/os/Bundle;Ljava/util/HashMap;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 41
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Already processed Notification Clicked event for "

    .line 42
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dropping duplicate."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "wzrk_"

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    .line 49
    :cond_b
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_c
    const-string v2, "evtName"

    const-string v3, "Notification Clicked"

    .line 51
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "evtData"

    .line 52
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v2, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;

    .line 54
    iget-object v0, p0, Le/h/a/c/f;->h:Le/h/a/c/w;

    invoke-static {p1}, Ln3/g0/y;->K0(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/h/a/c/w;->f(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    :catchall_2
    iget-object p1, p0, Le/h/a/c/f;->d:Le/h/a/c/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 56
    :cond_d
    :goto_3
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 57
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push notification ID Tag is null, not processing Notification Clicked event for:  "

    .line 58
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_e
    :goto_4
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 62
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push notification: "

    .line 63
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_f

    const-string p1, "NULL"

    goto :goto_5

    .line 64
    :cond_f
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not from CleverTap - will not process Notification Clicked event."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "wzrk_pn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "wzrk_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le/h/a/c/f;->o:Ljava/util/HashMap;

    const/16 v1, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Le/h/a/c/f;->g(Landroid/os/Bundle;Ljava/util/HashMap;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Already processed Notification Viewed event for "

    .line 6
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dropping duplicate."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    invoke-static {p1}, Ln3/g0/y;->K0(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "evtName"

    const-string v2, "Notification Viewed"

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "evtData"

    .line 14
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    iget-object p1, p0, Le/h/a/c/f;->c:Le/h/a/c/n0/a;

    iget-object v1, p0, Le/h/a/c/f;->f:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v0, v2}, Le/h/a/c/n0/a;->d(Landroid/content/Context;Lorg/json/JSONObject;I)Ljava/util/concurrent/Future;

    return-void

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 17
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push notification ID Tag is null, not processing Notification Viewed event for:  "

    .line 18
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 22
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push notification: "

    .line 23
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_5

    const-string p1, "NULL"

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not from CleverTap - will not process Notification Viewed event."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 3
    new-instance v1, Le/h/a/c/f$c;

    invoke-direct {v1, p0, p1}, Le/h/a/c/f$c;-><init>(Le/h/a/c/f;Ljava/util/Map;)V

    .line 4
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v2, Le/h/a/c/y0/j;

    const-string v3, "profilePush"

    invoke-direct {v2, v0, v3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
