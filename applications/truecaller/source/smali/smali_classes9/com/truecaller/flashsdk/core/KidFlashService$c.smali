.class public final Lcom/truecaller/flashsdk/core/KidFlashService$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/core/KidFlashService;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/core/KidFlashService;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/core/KidFlashService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 6
    iget-wide v4, v4, Lcom/truecaller/flashsdk/models/Flash;->g:J

    sub-long/2addr v2, v4

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 8
    iget-wide v6, v6, Lcom/truecaller/flashsdk/models/Flash;->g:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 9
    iget-object v2, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-boolean v4, v1, Lcom/truecaller/flashsdk/models/QueuedFlash;->i:Z

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    .line 15
    :cond_1
    iget-boolean v4, v1, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    if-eqz v4, :cond_2

    .line 16
    invoke-static {v2}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v4

    iget-object v5, v2, Lcom/truecaller/flashsdk/core/KidFlashService;->s:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    .line 17
    :cond_2
    sget-object v6, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object v7

    new-instance v9, Le/a/y/c/t;

    const/4 v4, 0x0

    invoke-direct {v9, v2, v1, v2, v4}, Le/a/y/c/t;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Lcom/truecaller/flashsdk/core/KidFlashService;Ls1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const-string v4, "FlashMissed"

    const-string v5, "missed"

    .line 18
    invoke-virtual {v2, v1, v4, v5}, Lcom/truecaller/flashsdk/core/KidFlashService;->h(Lcom/truecaller/flashsdk/models/QueuedFlash;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v1}, Lcom/truecaller/flashsdk/core/KidFlashService;->i(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    if-eqz v3, :cond_3

    .line 20
    iget-object v1, v2, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_3
    iget-object v1, v2, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v2, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    goto/16 :goto_0

    .line 23
    :cond_4
    iget-object v4, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/models/QueuedFlash;

    sub-long/2addr v6, v2

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean v1, v1, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "type_publish_progress"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, Lcom/truecaller/flashsdk/core/KidFlashService;->r:Landroid/content/Intent;

    const-string v2, "extra_timer_progress"

    .line 27
    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    invoke-static {v4}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v1

    iget-object v2, v4, Lcom/truecaller/flashsdk/core/KidFlashService;->r:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 30
    iget-object v0, v0, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 33
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/core/KidFlashService;->q()V

    .line 34
    iget-object v0, p0, Lcom/truecaller/flashsdk/core/KidFlashService$c;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 35
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    :cond_6
    return-void
.end method
