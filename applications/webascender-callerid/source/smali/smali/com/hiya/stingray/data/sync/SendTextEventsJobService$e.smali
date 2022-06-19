.class final Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;
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
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/q/c/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

.field final synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;->g:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    const-string v1, "compositeCallLogDTOs"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;->g:Landroid/app/job/JobParameters;

    invoke-static {v0, p1, v1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->d(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Ljava/util/List;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$e;->a(Ljava/util/List;)V

    return-void
.end method
