.class public final Le/a/i/d0/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/d0/e0/d$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Le/a/i/d0/e0/d$a;

.field public static final c:Le/a/i/d0/e0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/e0/d;

    invoke-direct {v0}, Le/a/i/d0/e0/d;-><init>()V

    sput-object v0, Le/a/i/d0/e0/d;->c:Le/a/i/d0/e0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 3

    const-string v0, "listener"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Le/a/i/d0/e0/d;->a:Z

    .line 3
    sget-object p1, Le/a/i/d0/e0/d;->b:Le/a/i/d0/e0/d$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/i/d0/e0/d$a;->onInitializeSuccess()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    sget-object v2, Le/a/i/d0/e0/d;->b:Le/a/i/d0/e0/d$a;

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Le/a/i/d0/e0/d$a;->onInitializeError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_4
    sget-object p1, Le/a/i/d0/e0/d;->b:Le/a/i/d0/e0/d$a;

    if-eqz p1, :cond_5

    const-string v0, "FB Ads SDK Initialization error"

    invoke-interface {p1, v0}, Le/a/i/d0/e0/d$a;->onInitializeError(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
