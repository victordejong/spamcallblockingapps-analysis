.class public final Lcom/hiya/stingray/ui/v/f;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/v/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/stingray/manager/y2;

.field private final c:Li/c/b0/c/a;

.field private final d:Lcom/hiya/stingray/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/manager/y2;Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/util/b0;)V
    .locals 1

    const-string v0, "lookupManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sticky"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/f;->b:Lcom/hiya/stingray/manager/y2;

    iput-object p2, p0, Lcom/hiya/stingray/ui/v/f;->c:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/v/f;->d:Lcom/hiya/stingray/util/a0;

    .line 2
    const-class p1, Lcom/hiya/stingray/manager/y2$b;

    invoke-virtual {p3, p1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance p4, Lcom/hiya/stingray/s/b;

    invoke-direct {p4}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, p4}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    new-instance p4, Lcom/hiya/stingray/ui/v/f$a;

    invoke-direct {p4, p0}, Lcom/hiya/stingray/ui/v/f$a;-><init>(Lcom/hiya/stingray/ui/v/f;)V

    invoke-virtual {p1, p4}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 6
    const-class p1, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p3, p1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    .line 7
    new-instance p3, Lcom/hiya/stingray/s/b;

    invoke-direct {p3}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, p3}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 8
    new-instance p3, Lcom/hiya/stingray/ui/v/f$b;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/v/f$b;-><init>(Lcom/hiya/stingray/ui/v/f;)V

    invoke-virtual {p1, p3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/v/f;)Lcom/hiya/stingray/manager/y2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/v/f;->b:Lcom/hiya/stingray/manager/y2;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/v/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/v/f;->v()V

    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/v/g;

    iget-object v1, p0, Lcom/hiya/stingray/ui/v/f;->b:Lcom/hiya/stingray/manager/y2;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/y2;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/v/g;->t(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/v/f;->v()V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/f;->b:Lcom/hiya/stingray/manager/y2;

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/y2;->m(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/v/f$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/v/f$c;-><init>(Lcom/hiya/stingray/ui/v/f;)V

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/v/f$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/v/f$d;-><init>(Lcom/hiya/stingray/ui/v/f;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/f;->c:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/v/g;

    iget-object v1, p0, Lcom/hiya/stingray/ui/v/f;->b:Lcom/hiya/stingray/manager/y2;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/y2;->i()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hiya/stingray/t/t0;

    .line 4
    invoke-virtual {v4}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/c0/m;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/v/g;->t(Ljava/util/List;)V

    return-void
.end method
