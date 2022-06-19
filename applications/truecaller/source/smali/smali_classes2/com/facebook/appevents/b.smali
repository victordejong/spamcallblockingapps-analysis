.class public final synthetic Lcom/facebook/appevents/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/b;

    invoke-direct {v0}, Lcom/facebook/appevents/b;-><init>()V

    sput-object v0, Lcom/facebook/appevents/b;->a:Lcom/facebook/appevents/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/appevents/t;->a:Lcom/facebook/appevents/t;

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/u;->a:Lcom/facebook/appevents/u;

    sget-object v1, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    invoke-static {v1}, Lcom/facebook/appevents/u;->b(Lcom/facebook/appevents/s;)V

    .line 3
    new-instance v1, Lcom/facebook/appevents/s;

    invoke-direct {v1}, Lcom/facebook/appevents/s;-><init>()V

    sput-object v1, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
