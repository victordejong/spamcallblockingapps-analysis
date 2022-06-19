.class final Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


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
        "Li/c/b0/d/p<",
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

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;->g:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/d;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/t;->c(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    iget-object v2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;->g:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v2, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_1
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$d;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
