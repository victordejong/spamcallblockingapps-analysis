.class final Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

.field final synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;->g:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Failed to either save or send callback sms, sms event receiver"

    .line 1
    invoke-static {p1, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    iget-object v1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;->g:Landroid/app/job/JobParameters;

    invoke-virtual {p1, v1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
