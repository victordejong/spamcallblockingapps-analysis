.class public final Lcom/hiya/client/callerid/job/services/CleanCacheService$a;
.super Li/c/b0/g/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/job/services/CleanCacheService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/hiya/client/callerid/job/services/CleanCacheService;

.field final synthetic h:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/job/services/CleanCacheService;Landroid/app/job/JobParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;->g:Lcom/hiya/client/callerid/job/services/CleanCacheService;

    iput-object p2, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;->h:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Li/c/b0/g/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    const-string v0, "HiyaJob"

    const-string v1, "onComplete called for clean cache service"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;->g:Lcom/hiya/client/callerid/job/services/CleanCacheService;

    iget-object v1, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;->h:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 3
    invoke-virtual {p0}, Li/c/b0/g/c;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError called for clean cache service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HiyaJob"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;->g:Lcom/hiya/client/callerid/job/services/CleanCacheService;

    iget-object v0, p0, Lcom/hiya/client/callerid/job/services/CleanCacheService$a;->h:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 3
    invoke-virtual {p0}, Li/c/b0/g/c;->dispose()V

    return-void
.end method
