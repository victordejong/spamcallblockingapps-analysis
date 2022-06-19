.class public Le/a/i/w/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/w/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "[",
        "Lcom/truecaller/ads/campaigns/AdCampaigns;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lcom/truecaller/ads/campaigns/AdCampaigns;

.field public c:I

.field public volatile d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

.field public final e:Ljava/util/concurrent/locks/Lock;

.field public final f:Ljava/util/concurrent/locks/Condition;

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/a/i/w/f$b;->c:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Le/a/i/w/f$b;->f:Ljava/util/concurrent/locks/Condition;

    .line 6
    iput-object p1, p0, Le/a/i/w/f$b;->a:Ljava/lang/String;

    .line 7
    new-array p1, p2, [Lcom/truecaller/ads/campaigns/AdCampaigns;

    iput-object p1, p0, Le/a/i/w/f$b;->b:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/i/w/f$b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 5
    iget-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    iget-object v1, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    :try_start_0
    iget-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Le/a/i/w/f$b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    move-object v0, p1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    throw p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
