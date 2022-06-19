.class public final Lcom/appnext/core/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cQ:Lcom/appnext/core/d$1;


# direct methods
.method public constructor <init>(Lcom/appnext/core/d$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/d$1$1;->cQ:Lcom/appnext/core/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/d$1$1;->cQ:Lcom/appnext/core/d$1;

    iget-object v1, v0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v0, v0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v0}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/d$1$1;->cQ:Lcom/appnext/core/d$1;

    iget-object v2, v1, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v1, v1, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v1}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/appnext/core/a$1;

    invoke-direct {v3, v0, v1}, Lcom/appnext/core/a$1;-><init>(Lcom/appnext/core/a;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "AdContainer$notifyListenersSuccess"

    .line 3
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/appnext/core/d$1$1;->cQ:Lcom/appnext/core/d$1;

    iget-object v1, v0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v2, v0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iget-object v0, v0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v0}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 5
    :catchall_1
    iget-object v0, p0, Lcom/appnext/core/d$1$1;->cQ:Lcom/appnext/core/d$1;

    iget-object v1, v0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v0, v0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    const-string v2, "Internal error"

    invoke-virtual {v1, v2, v0}, Lcom/appnext/core/d;->b(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void
.end method
