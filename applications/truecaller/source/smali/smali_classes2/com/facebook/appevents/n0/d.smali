.class public final synthetic Lcom/facebook/appevents/n0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/n0/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/n0/d;

    invoke-direct {v0}, Lcom/facebook/appevents/n0/d;-><init>()V

    sput-object v0, Lcom/facebook/appevents/n0/d;->a:Lcom/facebook/appevents/n0/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    const-class v0, Lcom/facebook/appevents/n0/h;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    const-class v1, Lcom/facebook/appevents/l0/a;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 3
    :try_start_1
    sput-boolean v2, Lcom/facebook/appevents/l0/a;->b:Z

    .line 4
    sget-object v2, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    const-string v2, "FBSDKFeatureIntegritySample"

    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/b0;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 5
    sput-boolean v2, Lcom/facebook/appevents/l0/a;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 7
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
