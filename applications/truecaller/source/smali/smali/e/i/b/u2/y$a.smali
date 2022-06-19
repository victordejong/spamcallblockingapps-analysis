.class public Le/i/b/u2/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/u2/y;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/i/b/u2/y;


# direct methods
.method public constructor <init>(Le/i/b/u2/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/u2/y$a;->a:Le/i/b/u2/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/u2/y$a;->a:Le/i/b/u2/y;

    .line 2
    iget-object v0, v0, Le/i/b/u2/y;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/i/b/u2/y$a;->a:Le/i/b/u2/y;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    iget-object v0, v0, Le/i/b/u2/y;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v0, "http.agent"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 11
    invoke-static {v0}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ""

    .line 12
    :cond_1
    :goto_2
    iget-object v2, p0, Le/i/b/u2/y$a;->a:Le/i/b/u2/y;

    .line 13
    iget-object v2, v2, Le/i/b/u2/y;->c:Le/i/b/s2/g;

    .line 14
    iget-object v3, v2, Le/i/b/s2/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Le/i/b/s2/g$c;

    invoke-direct {v4, v0}, Le/i/b/s2/g$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    iget-object v0, v2, Le/i/b/s2/g;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-void
.end method
