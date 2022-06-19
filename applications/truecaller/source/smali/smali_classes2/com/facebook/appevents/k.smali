.class public final synthetic Lcom/facebook/appevents/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/k;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/k;

    invoke-direct {v0}, Lcom/facebook/appevents/k;-><init>()V

    sput-object v0, Lcom/facebook/appevents/k;->a:Lcom/facebook/appevents/k;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcom/facebook/appevents/h0/c;->a:Lcom/facebook/appevents/h0/c;

    .line 2
    const-class p1, Lcom/facebook/appevents/h0/c;

    invoke-static {p1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/h0/a;->a:Lcom/facebook/appevents/h0/a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/h0/c;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
