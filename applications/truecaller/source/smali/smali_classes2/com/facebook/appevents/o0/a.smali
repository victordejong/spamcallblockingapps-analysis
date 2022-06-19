.class public final synthetic Lcom/facebook/appevents/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/o0/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/o0/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/o0/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/facebook/appevents/o0/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/o0/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/o0/a;->c:Ljava/lang/String;

    .line 1
    const-class v3, Lcom/facebook/appevents/o0/c;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v4, "$context"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pingForOnDevice"

    .line 3
    invoke-static {v2, v1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 4
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_2

    .line 5
    sget-object v4, Lcom/facebook/appevents/o0/e;->a:Lcom/facebook/appevents/o0/e;

    .line 6
    const-class v5, Lcom/facebook/appevents/o0/e;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v6, "applicationId"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v6, Lcom/facebook/appevents/o0/e$a;->b:Lcom/facebook/appevents/o0/e$a;

    sget-object v7, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {v4, v6, v2, v7}, Lcom/facebook/appevents/o0/e;->b(Lcom/facebook/appevents/o0/e$a;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/appevents/o0/e$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 10
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
