.class final Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->g(Ljava/util/List;Landroid/app/job/JobParameters;)V
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/hiya/stingray/q/c/i/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/SendTextEventsJobService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    iput-object p2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->g:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/d;

    .line 3
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/d;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/c/i/c;

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    invoke-virtual {v3}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->e()Lcom/hiya/stingray/manager/h2;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/hiya/stingray/manager/h2;->A(Ljava/lang/String;Lcom/hiya/stingray/q/c/d;)V

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    invoke-virtual {v3}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->e()Lcom/hiya/stingray/manager/h2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/i/c;->W0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/hiya/stingray/manager/h2;->y(Ljava/lang/String;Lcom/hiya/stingray/q/c/i/c;)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    invoke-virtual {v2}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->e()Lcom/hiya/stingray/manager/h2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/manager/h2;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->f:Lcom/hiya/stingray/data/sync/SendTextEventsJobService;

    invoke-virtual {p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService;->f()Lcom/hiya/stingray/manager/o2;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/d;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/d;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/manager/o2;->H(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/SendTextEventsJobService$b;->a(Ljava/util/Map;)V

    return-void
.end method
