.class public final Lcom/hiya/stingray/ui/local/location/f;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/location/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/o4/b;

.field private final c:Li/c/b0/c/a;

.field private final d:Lcom/hiya/stingray/ui/local/location/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/manager/o4/b;Li/c/b0/c/a;Lcom/hiya/stingray/ui/local/location/c;)V
    .locals 1

    const-string v0, "locationManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAnalytics"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/location/f;->c:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/location/f;->d:Lcom/hiya/stingray/ui/local/location/c;

    return-void
.end method

.method private final w(Li/c/b0/b/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Landroid/location/Location;",
            "Landroid/location/Address;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/local/location/f$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/location/f$a;-><init>(Lcom/hiya/stingray/ui/local/location/f;)V

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/location/f$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/location/f$b;-><init>(Lcom/hiya/stingray/ui/local/location/f;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->c:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method


# virtual methods
.method public final A(Lcom/hiya/stingray/t/h1/i;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/i;->f()Lcom/hiya/stingray/t/h1/i$a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/hiya/stingray/t/h1/i$a;->GPS:Lcom/hiya/stingray/t/h1/i$a;

    if-ne v1, v2, :cond_1

    move-object p1, v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/o4/b;->o(Lcom/hiya/stingray/t/h1/i;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->d:Lcom/hiya/stingray/ui/local/location/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/i;->f()Lcom/hiya/stingray/t/h1/i$a;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/local/location/c;->b(Lcom/hiya/stingray/t/h1/i$a;)V

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/location/g;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/location/g;->close()V

    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o4/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/local/location/g;->j(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o4/b;->f()Li/c/b0/b/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/location/f;->w(Li/c/b0/b/v;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/location/g;->n()V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o4/b;->n()Lcom/hiya/stingray/t/h1/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/location/g;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/hiya/stingray/ui/local/location/g;->l(Lcom/hiya/stingray/t/h1/i;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/location/f;->v()V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o4/b;->h()Li/c/b0/b/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/location/f;->w(Li/c/b0/b/v;)V

    return-void
.end method

.method public final x(DD)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/manager/o4/b;->c(DDI)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v7, Lcom/hiya/stingray/ui/local/location/f$c;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/location/f$c;-><init>(Lcom/hiya/stingray/ui/local/location/f;DD)V

    .line 4
    new-instance v8, Lcom/hiya/stingray/ui/local/location/f$d;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/location/f$d;-><init>(Lcom/hiya/stingray/ui/local/location/f;DD)V

    .line 5
    invoke-virtual {v0, v7, v8}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/location/f;->c:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o4/b;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/k;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/local/location/g;->x(Ljava/util/List;)V

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->b:Lcom/hiya/stingray/manager/o4/b;

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/o4/b;->k(Ljava/lang/String;I)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/local/location/f$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/location/f$e;-><init>(Lcom/hiya/stingray/ui/local/location/f;)V

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/location/f$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/location/f$f;-><init>(Lcom/hiya/stingray/ui/local/location/f;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f;->c:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
