.class public final Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/lifecycle/b0;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/g<",
        "TVM;>;"
    }
.end annotation


# instance fields
.field private f:Landroidx/lifecycle/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/a0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/a0/b<",
            "TVM;>;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Landroidx/lifecycle/f0;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Landroidx/lifecycle/d0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/a0/b;Lkotlin/w/b/a;Lkotlin/w/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/a0/b<",
            "TVM;>;",
            "Lkotlin/w/b/a<",
            "+",
            "Landroidx/lifecycle/f0;",
            ">;",
            "Lkotlin/w/b/a<",
            "+",
            "Landroidx/lifecycle/d0$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/c0;->g:Lkotlin/a0/b;

    iput-object p2, p0, Landroidx/lifecycle/c0;->h:Lkotlin/w/b/a;

    iput-object p3, p0, Landroidx/lifecycle/c0;->i:Lkotlin/w/b/a;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/c0;->i:Lkotlin/w/b/a;

    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/d0$b;

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/c0;->h:Lkotlin/w/b/a;

    invoke-interface {v1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/f0;

    .line 4
    new-instance v2, Landroidx/lifecycle/d0;

    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/f0;Landroidx/lifecycle/d0$b;)V

    iget-object v0, p0, Landroidx/lifecycle/c0;->g:Lkotlin/a0/b;

    invoke-static {v0}, Lkotlin/w/a;->a(Lkotlin/a0/b;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/b0;

    const-string v1, "ViewModelProvider(store,\u2026ed = it\n                }"

    .line 6
    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/c0;->a()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method
