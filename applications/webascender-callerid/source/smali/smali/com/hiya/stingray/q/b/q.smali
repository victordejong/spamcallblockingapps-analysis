.class public Lcom/hiya/stingray/q/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/q/b/v;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/q;->a:Lcom/hiya/stingray/q/b/v;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/q/b/q;)Lcom/hiya/stingray/q/b/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/b/q;->a:Lcom/hiya/stingray/q/b/v;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/q/b/q;->a:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/hiya/stingray/q/b/q$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/q/b/q$a;-><init>(Lcom/hiya/stingray/q/b/q;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    .line 4
    invoke-virtual {v0}, Lio/realm/y;->close()V

    return-void
.end method

.method public c()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/q$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/q$b;-><init>(Lcom/hiya/stingray/q/b/q;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
