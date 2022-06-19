.class public Le/m/d/n/j/p/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/m/d/n/j/m/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/m/d/n/j/m/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p2, p0, Le/m/d/n/j/p/k/a;->b:Le/m/d/n/j/m/b;

    .line 3
    iput-object p1, p0, Le/m/d/n/j/p/k/a;->a:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Le/m/d/n/j/m/a;Le/m/d/n/j/p/j/f;)Le/m/d/n/j/m/a;
    .locals 2

    .line 1
    iget-object v0, p2, Le/m/d/n/j/p/j/f;->a:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    invoke-virtual {p0, p1, v1, v0}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    const-string v1, "18.2.8"

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p2, Le/m/d/n/j/p/j/f;->b:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    invoke-virtual {p0, p1, v1, v0}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Le/m/d/n/j/p/j/f;->c:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    invoke-virtual {p0, p1, v1, v0}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p2, Le/m/d/n/j/p/j/f;->d:Ljava/lang/String;

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    invoke-virtual {p0, p1, v1, v0}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p2, Le/m/d/n/j/p/j/f;->e:Le/m/d/n/j/j/o0;

    .line 9
    check-cast p2, Le/m/d/n/j/j/n0;

    invoke-virtual {p2}, Le/m/d/n/j/j/n0;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Le/m/d/n/j/p/k/a;->b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Le/m/d/n/j/m/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Le/m/d/n/j/m/a;->c:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c(Le/m/d/n/j/p/j/f;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/n/j/p/j/f;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Le/m/d/n/j/p/j/f;->h:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Le/m/d/n/j/p/j/f;->g:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p1, Le/m/d/n/j/p/j/f;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Le/m/d/n/j/p/j/f;->f:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "instance"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public d(Le/m/d/n/j/m/c;)Lorg/json/JSONObject;
    .locals 4

    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    .line 1
    iget v1, p1, Le/m/d/n/j/m/c;->a:I

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object p1, p1, Le/m/d/n/j/m/c;->b:Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "Failed to parse settings JSON from "

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/n/j/p/k/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Le/m/d/n/j/f;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x5

    .line 6
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x6

    .line 7
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z

    :goto_2
    return-object v2
.end method
