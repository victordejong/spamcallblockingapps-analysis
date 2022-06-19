.class public Lcom/criteo/publisher/Bid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:Le/i/b/s2/a;

.field public final c:Le/i/b/e2;

.field public d:Le/i/b/u2/w;


# direct methods
.method public constructor <init>(Le/i/b/s2/a;Le/i/b/e2;Le/i/b/u2/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p3}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/criteo/publisher/Bid;->a:D

    .line 3
    iput-object p1, p0, Lcom/criteo/publisher/Bid;->b:Le/i/b/s2/a;

    .line 4
    iput-object p3, p0, Lcom/criteo/publisher/Bid;->d:Le/i/b/u2/w;

    .line 5
    iput-object p2, p0, Lcom/criteo/publisher/Bid;->c:Le/i/b/e2;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ls1/z/b/l;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "Le/i/b/u2/w;",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->d:Le/i/b/u2/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/criteo/publisher/Bid;->c:Le/i/b/e2;

    invoke-virtual {v0, v2}, Le/i/b/u2/w;->d(Le/i/b/e2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->d:Le/i/b/u2/w;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iput-object v1, p0, Lcom/criteo/publisher/Bid;->d:Le/i/b/u2/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Le/i/b/s2/a;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/criteo/publisher/annotation/Internal;
        value = {
            "InHouse"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->b:Le/i/b/s2/a;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Le/i/b/h;->a:Le/i/b/h;

    invoke-virtual {p0, p1}, Lcom/criteo/publisher/Bid;->a(Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPrice()D
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/criteo/publisher/Bid;->a:D

    return-wide v0
.end method
