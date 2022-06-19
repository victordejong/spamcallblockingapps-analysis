.class public final Le/a/i/f0/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/n/g;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/i/s;",
            "Le/a/i/f0/n/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Ls1/w/f;

.field public final d:Le/a/z4/a;

.field public final e:Le/a/i/f0/n/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/z4/a;Le/a/i/f0/n/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "houseAdsRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/n/b;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/i/f0/n/b;->d:Le/a/z4/a;

    iput-object p3, p0, Le/a/i/f0/n/b;->e:Le/a/i/f0/n/c;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Le/a/i/f0/n/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/s;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/f0/n/e;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/a/i/f0/n/e;->e:Lq3/a/p1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Le/a/i/s;)Z
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/f0/n/e;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v1, p1, Le/a/i/f0/n/e;->c:Z

    if-nez v1, :cond_0

    .line 3
    iget-boolean v1, p1, Le/a/i/f0/n/e;->b:Z

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iget-boolean p1, p1, Le/a/i/f0/n/e;->d:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final c(Le/a/i/s;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Le/a/i/f0/n/b;->b(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/f0/n/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/n/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/i/f0/n/e;->f:Le/a/i/f0/n/f;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Le/a/i/f0/n/f;->e(Le/a/i/s;)V

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/n/b;->c:Ls1/w/f;

    return-object v0
.end method
