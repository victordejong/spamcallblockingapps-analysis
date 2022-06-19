.class public final synthetic Lcom/facebook/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/internal/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/internal/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/e;->c:Ljava/lang/String;

    const-string v3, "$applicationId"

    .line 1
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$context"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$gateKeepersKey"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    invoke-static {}, Lcom/facebook/internal/b0;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v0, v3}, Lcom/facebook/internal/b0;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 5
    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/b0;->e:Ljava/lang/Long;

    .line 10
    :cond_0
    invoke-static {}, Lcom/facebook/internal/b0;->e()V

    .line 11
    sget-object v0, Lcom/facebook/internal/b0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
