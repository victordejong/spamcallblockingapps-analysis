.class public Lcom/hiya/stingray/receiver/OnUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/s/d/c;

.field b:Lcom/hiya/stingray/q/d/a;

.field c:Landroid/app/job/JobScheduler;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/hiya/stingray/manager/p4/a;

.field f:Lcom/hiya/stingray/manager/i1;

.field g:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->a:Lcom/hiya/stingray/s/d/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->a:Lcom/hiya/stingray/s/d/c;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 2
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->a(Landroid/content/Context;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->a:Lcom/hiya/stingray/s/d/c;

    invoke-interface {p2, p0}, Lcom/hiya/stingray/s/d/c;->b(Lcom/hiya/stingray/receiver/OnUpgradeReceiver;)V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->f:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->e:Lcom/hiya/stingray/manager/p4/a;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/p4/a;->e()V

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {p2}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->b:Lcom/hiya/stingray/q/d/a;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "remote_config_last_schedule_time"

    .line 10
    invoke-virtual {p2, v0, v2, v3}, Lcom/hiya/stingray/q/d/a;->b0(Ljava/lang/String;J)V

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->b:Lcom/hiya/stingray/q/d/a;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "request_queue_last_job_schedule_time"

    .line 13
    invoke-virtual {p2, v0, v2, v3}, Lcom/hiya/stingray/q/d/a;->b0(Ljava/lang/String;J)V

    .line 14
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$Builder;

    .line 15
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_1

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->g:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/o2;->m()I

    move-result p2

    const v0, 0x13880

    if-ge p2, v0, :cond_4

    .line 18
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->g:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/manager/o2;->C(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/hiya/stingray/manager/o2;->K(Landroid/content/Context;Z)V

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/hiya/stingray/receiver/OnUpgradeReceiver;->g:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/o2;->m()I

    move-result p2

    const v0, 0x13881

    if-ge p2, v0, :cond_5

    .line 20
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "SEND_PHONE_EVENTS"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_5
    return-void
.end method
