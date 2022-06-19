.class public final synthetic Lcom/facebook/appevents/q0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/facebook/appevents/q0/j;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/appevents/q0/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/q0/d;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/facebook/appevents/q0/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/q0/d;->c:Lcom/facebook/appevents/q0/j;

    iput-object p4, p0, Lcom/facebook/appevents/q0/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/facebook/appevents/q0/d;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/appevents/q0/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/q0/d;->c:Lcom/facebook/appevents/q0/j;

    iget-object v3, p0, Lcom/facebook/appevents/q0/d;->d:Ljava/lang/String;

    .line 1
    const-class v4, Lcom/facebook/appevents/q0/j;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v4, "$viewData"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$buttonText"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$pathID"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    sget-object v4, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/q0;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.String).toLowerCase()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, v4}, Lcom/facebook/appevents/q0/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v0

    .line 4
    iget-object v2, v2, Lcom/facebook/appevents/q0/j;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/facebook/appevents/q0/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v4, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    .line 6
    sget-object v4, Lcom/facebook/appevents/n0/h$a;->b:Lcom/facebook/appevents/n0/h$a;

    const/4 v5, 0x1

    new-array v6, v5, [[F

    const/4 v7, 0x0

    aput-object v0, v6, v7

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v7

    .line 7
    invoke-static {v4, v6, v5}, Lcom/facebook/appevents/n0/h;->f(Lcom/facebook/appevents/n0/h$a;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    aget-object v2, v2, v7

    .line 9
    sget-object v4, Lcom/facebook/appevents/q0/f;->a:Lcom/facebook/appevents/q0/f;

    invoke-static {v3, v2}, Lcom/facebook/appevents/q0/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "other"

    .line 10
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    sget-object v3, Lcom/facebook/appevents/q0/j;->e:Lcom/facebook/appevents/q0/j$a;

    .line 12
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/appevents/q0/j$a;->b(Ljava/lang/String;Ljava/lang/String;[F)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 14
    const-class v1, Lcom/facebook/appevents/q0/j;

    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
