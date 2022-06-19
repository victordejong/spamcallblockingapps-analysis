.class public Lcom/hiya/stingray/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/util/a0$d;
    }
.end annotation


# static fields
.field private static final c:Lcom/hiya/stingray/util/a0$d;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Li/c/b0/k/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Li/c/b0/k/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/a0$d;

    invoke-direct {v0}, Lcom/hiya/stingray/util/a0$d;-><init>()V

    sput-object v0, Lcom/hiya/stingray/util/a0;->c:Lcom/hiya/stingray/util/a0$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/k/d;->a()Li/c/b0/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/util/a0;->b:Li/c/b0/k/d;

    .line 3
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Lcom/hiya/stingray/util/a0$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/a0;->c:Lcom/hiya/stingray/util/a0$d;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Li/c/b0/b/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/util/a0;->b:Li/c/b0/k/d;

    iget-object v1, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/b/a0;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->mergeWith(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Li/c/b0/k/a;->c()Li/c/b0/k/a;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/k/d;->a()Li/c/b0/k/d;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/util/a0;->b:Li/c/b0/k/d;

    invoke-virtual {v1, v0}, Li/c/b0/b/v;->mergeWith(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Lcom/hiya/stingray/util/a0$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/util/a0$c;-><init>(Lcom/hiya/stingray/util/a0;)V

    .line 7
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/util/a0$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/util/a0$b;-><init>(Lcom/hiya/stingray/util/a0;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/util/a0$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/util/a0$a;-><init>(Lcom/hiya/stingray/util/a0;)V

    .line 9
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/a0;->b:Li/c/b0/k/d;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/k/d;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Li/c/b0/k/a;->c()Li/c/b0/k/a;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/k/d;->a()Li/c/b0/k/d;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/a0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/c/b0/k/d;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/util/a0;->c:Lcom/hiya/stingray/util/a0$d;

    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
