.class abstract Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ActionLoadComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MinimumTimeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/service/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final minTime:J

.field private final minTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private final start:J


# direct methods
.method constructor <init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->start:J

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->handler:Landroid/os/Handler;

    .line 4
    iput-wide p2, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->minTime:J

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->minTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private remainingTime()J
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->start:J

    sub-long/2addr v0, v2

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->minTime:J

    iget-object v5, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->minTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public abstract onDelayedError(Lcom/zendesk/service/a;)V
.end method

.method public abstract onDelayedSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public onError(Lcom/zendesk/service/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->remainingTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->handler:Landroid/os/Handler;

    new-instance v3, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;

    invoke-direct {v3, p0, p1}, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;-><init>(Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;Lcom/zendesk/service/a;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->remainingTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->handler:Landroid/os/Handler;

    new-instance v3, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$1;

    invoke-direct {v3, p0, p1}, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$1;-><init>(Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
