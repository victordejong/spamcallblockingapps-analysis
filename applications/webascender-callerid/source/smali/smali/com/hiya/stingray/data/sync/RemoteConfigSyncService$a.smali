.class final Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;

.field final synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;->f:Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;->g:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;->f:Lcom/hiya/stingray/data/sync/RemoteConfigSyncService;

    iget-object v1, p0, Lcom/hiya/stingray/data/sync/RemoteConfigSyncService$a;->g:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
