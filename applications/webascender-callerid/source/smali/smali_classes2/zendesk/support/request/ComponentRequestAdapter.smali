.class Lzendesk/support/request/ComponentRequestAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;,
        Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;,
        Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;,
        Lzendesk/support/request/ComponentRequestAdapter$DiffCalculator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt/a/k<",
        "Ljava/util/List<",
        "Lzendesk/support/request/CellType$Base;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final listUpdateCallback:Landroidx/recyclerview/widget/o;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

.field private final requestMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation
.end field

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/o;Lzendesk/support/request/CellFactory;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->listUpdateCallback:Landroidx/recyclerview/widget/o;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    .line 6
    new-instance p1, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    invoke-direct {p1, p2}, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;-><init>(Lzendesk/support/request/CellFactory;)V

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ComponentRequestAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ComponentRequestAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ComponentRequestAdapter;->updateDataSet(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateDataSet(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentRequestAdapter$DiffCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lzendesk/support/request/ComponentRequestAdapter$DiffCalculator;-><init>(Ljava/util/List;Ljava/util/List;Lzendesk/support/request/ComponentRequestAdapter$1;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/h;->b(Landroidx/recyclerview/widget/h$b;Z)Landroidx/recyclerview/widget/h$c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p2, p0, Lzendesk/support/request/ComponentRequestAdapter;->listUpdateCallback:Landroidx/recyclerview/widget/o;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/h$c;->d(Landroidx/recyclerview/widget/o;)V

    return-void
.end method


# virtual methods
.method getMessageCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getMessageForPos(I)Lzendesk/support/request/CellType$Base;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/CellType$Base;

    return-object p1
.end method

.method getSelector()Lt/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt/a/p<",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentRequestAdapter;->update(Ljava/util/List;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    new-instance v0, Lzendesk/support/request/ComponentRequestAdapter$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/ComponentRequestAdapter$1;-><init>(Lzendesk/support/request/ComponentRequestAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    .line 4
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
