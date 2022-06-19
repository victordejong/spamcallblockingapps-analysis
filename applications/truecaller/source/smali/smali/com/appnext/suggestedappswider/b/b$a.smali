.class public final Lcom/appnext/suggestedappswider/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/suggestedappswider/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsManager$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/appnext/suggestedappswider/managers/SuggestedAppsWiderAdsManager;",
        "getInstance",
        "SuggestedAppsWider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls1/z/c/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/appnext/suggestedappswider/b/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final br()Lcom/appnext/suggestedappswider/b/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/appnext/suggestedappswider/b/b;->bq()Lcom/appnext/suggestedappswider/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/appnext/suggestedappswider/b/b;->bq()Lcom/appnext/suggestedappswider/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/appnext/suggestedappswider/b/b;

    invoke-direct {v0}, Lcom/appnext/suggestedappswider/b/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    return-object v0
.end method
