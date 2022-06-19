.class public final synthetic Lcom/facebook/appevents/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/c;

    invoke-direct {v0}, Lcom/facebook/appevents/c;-><init>()V

    sput-object v0, Lcom/facebook/appevents/c;->a:Lcom/facebook/appevents/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/appevents/t;->a:Lcom/facebook/appevents/t;

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-object v1, Lcom/facebook/appevents/t;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    sget-object v1, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    invoke-virtual {v1}, Lcom/facebook/appevents/x$a;->b()Lcom/facebook/appevents/w;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/facebook/appevents/w;->b:Lcom/facebook/appevents/w;

    if-eq v1, v2, :cond_1

    .line 5
    sget-object v1, Lcom/facebook/appevents/a0;->b:Lcom/facebook/appevents/a0;

    invoke-static {v1}, Lcom/facebook/appevents/t;->d(Lcom/facebook/appevents/a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
