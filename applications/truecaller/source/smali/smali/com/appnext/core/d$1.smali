.class public final Lcom/appnext/core/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d;->b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cM:Lcom/appnext/core/Ad;

.field public final synthetic cN:Lcom/appnext/core/d$a;

.field public final synthetic cO:Z

.field public final synthetic cP:Lcom/appnext/core/d;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Landroid/content/Context;Lcom/appnext/core/d$a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iput-object p2, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    iput-object p3, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/appnext/core/d$1;->cN:Lcom/appnext/core/d$a;

    iput-object p5, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/appnext/core/d$1;->cO:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    iget-object v1, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setSessionId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    invoke-static {v0}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v3}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/a;->an()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/appnext/core/d$1;->cN:Lcom/appnext/core/d$a;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/d$1;->cN:Lcom/appnext/core/d$a;

    invoke-virtual {v1, v2}, Lcom/appnext/core/a;->a(Lcom/appnext/core/d$a;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/appnext/core/a;

    invoke-direct {v1}, Lcom/appnext/core/a;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/appnext/core/d$1;->cN:Lcom/appnext/core/d$a;

    invoke-virtual {v1, v3}, Lcom/appnext/core/a;->a(Lcom/appnext/core/d$a;)V

    .line 9
    iget-object v3, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/appnext/core/a;->setPlacementID(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/appnext/core/a;->b(I)V

    .line 11
    iget-object v2, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    invoke-static {v2}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/appnext/core/b;

    iget-object v4, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-direct {v3, v4}, Lcom/appnext/core/b;-><init>(Lcom/appnext/core/Ad;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v3, v1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V

    .line 13
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 14
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    iget-object v5, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    iget-object v5, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdsManager request url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Lcom/appnext/core/e;->ap()Lcom/appnext/core/e;

    iget-object v2, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iget-object v0, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    const-string v5, "ads_caching_time_minutes"

    invoke-static {v0, v1, v5}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->getSpecificCategories()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->getCategories()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/appnext/core/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 18
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "{\"apps\":[]}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/appnext/core/d;->q(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 19
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "&q="

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&q="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPostback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    const/16 v4, 0x32

    invoke-static {v1, v2, v3, v0, v4}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/core/d$1;->val$placementID:Ljava/lang/String;

    iget-object v5, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v5}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_6

    .line 24
    :try_start_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v2}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->c(Ljava/util/ArrayList;)V

    .line 26
    iget-boolean v0, p0, Lcom/appnext/core/d$1;->cO:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v0, :cond_5

    .line 27
    :try_start_7
    iget-object v0, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v2}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 28
    :catchall_1
    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->j(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->b(I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/d$1$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/d$1$1;-><init>(Lcom/appnext/core/d$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 30
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    const-string v2, "No Ads"

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    :catchall_2
    move-exception v0

    const-string v1, "AdsManager$updateAdList"

    .line 31
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    const-string v2, "Internal error"

    invoke-static {v0}, Lcom/appnext/core/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    .line 33
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    const-string v2, "No Ads"

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    :catchall_3
    move-exception v0

    .line 34
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    const-string v2, "No Ads"

    invoke-static {v0}, Lcom/appnext/core/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;I)V

    return-void

    :catchall_4
    move-exception v1

    .line 35
    monitor-exit v0

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    const-string v1, "AdsManager$updateAdList"

    .line 36
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v1, p0, Lcom/appnext/core/d$1;->cP:Lcom/appnext/core/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/appnext/core/d$1;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v0, v2}, Lcom/appnext/core/d;->b(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void
.end method
