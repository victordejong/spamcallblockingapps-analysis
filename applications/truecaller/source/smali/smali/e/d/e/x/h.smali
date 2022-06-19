.class public Le/d/e/x/h;
.super Le/d/e/x/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/d/e/x/i<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Le/d/e/q$b;Le/d/e/q$a;)V
    .locals 6
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Le/d/e/q$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Le/d/e/q$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Le/d/e/q$a;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Le/d/e/x/i;-><init>(ILjava/lang/String;Ljava/lang/String;Le/d/e/q$b;Le/d/e/q$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Le/d/e/q$b;Le/d/e/q$a;)V
    .locals 7
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Le/d/e/q$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Le/d/e/q$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Le/d/e/q$a;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Le/d/e/x/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Le/d/e/q$b;Le/d/e/q$a;)V

    return-void
.end method


# virtual methods
.method public parseNetworkResponse(Le/d/e/l;)Le/d/e/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/e/l;",
            ")",
            "Le/d/e/q<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Le/d/e/l;->b:[B

    iget-object v2, p1, Le/d/e/l;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 2
    invoke-static {v2, v3}, Ln3/g0/y;->p1(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ln3/g0/y;->o1(Le/d/e/l;)Le/d/e/b$a;

    move-result-object p1

    .line 5
    new-instance v0, Le/d/e/q;

    invoke-direct {v0, v1, p1}, Le/d/e/q;-><init>(Ljava/lang/Object;Le/d/e/b$a;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Le/d/e/n;

    invoke-direct {v0, p1}, Le/d/e/n;-><init>(Ljava/lang/Throwable;)V

    .line 7
    new-instance p1, Le/d/e/q;

    invoke-direct {p1, v0}, Le/d/e/q;-><init>(Le/d/e/v;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Le/d/e/n;

    invoke-direct {v0, p1}, Le/d/e/n;-><init>(Ljava/lang/Throwable;)V

    .line 9
    new-instance p1, Le/d/e/q;

    invoke-direct {p1, v0}, Le/d/e/q;-><init>(Le/d/e/v;)V

    return-object p1
.end method
