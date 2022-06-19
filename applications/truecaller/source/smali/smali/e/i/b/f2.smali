.class public Le/i/b/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x1;


# instance fields
.field public final synthetic a:Lcom/criteo/publisher/model/AdUnit;

.field public final synthetic b:Lcom/criteo/publisher/BidResponseListener;

.field public final synthetic c:Le/i/b/h2;


# direct methods
.method public constructor <init>(Le/i/b/h2;Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/f2;->c:Le/i/b/h2;

    iput-object p2, p0, Le/i/b/f2;->a:Lcom/criteo/publisher/model/AdUnit;

    iput-object p3, p0, Le/i/b/f2;->b:Lcom/criteo/publisher/BidResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Le/i/b/f2;->b(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public a(Le/i/b/u2/w;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/criteo/publisher/Bid;

    iget-object v1, p0, Le/i/b/f2;->a:Lcom/criteo/publisher/model/AdUnit;

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitType()Le/i/b/s2/a;

    move-result-object v1

    iget-object v2, p0, Le/i/b/f2;->c:Le/i/b/h2;

    .line 2
    iget-object v2, v2, Le/i/b/h2;->c:Le/i/b/e2;

    .line 3
    invoke-direct {v0, v1, v2, p1}, Lcom/criteo/publisher/Bid;-><init>(Le/i/b/s2/a;Le/i/b/e2;Le/i/b/u2/w;)V

    .line 4
    invoke-virtual {p0, v0}, Le/i/b/f2;->b(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public final b(Lcom/criteo/publisher/Bid;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/i/b/f2;->c:Le/i/b/h2;

    .line 2
    iget-object v0, v0, Le/i/b/h2;->a:Le/i/b/q2/h;

    .line 3
    iget-object v1, p0, Le/i/b/f2;->a:Lcom/criteo/publisher/model/AdUnit;

    const-string v2, "adUnit"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Le/i/b/q2/f;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting bid response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Bid: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ln3/g0/y;->f(Lcom/criteo/publisher/Bid;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", price: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    move-object v3, v2

    .line 7
    invoke-direct/range {v3 .. v8}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 9
    iget-object v0, p0, Le/i/b/f2;->c:Le/i/b/h2;

    .line 10
    iget-object v0, v0, Le/i/b/h2;->d:Le/i/b/w1/c;

    .line 11
    iget-object v1, p0, Le/i/b/f2;->b:Lcom/criteo/publisher/BidResponseListener;

    new-instance v2, Le/i/b/k;

    invoke-direct {v2, v1, p1}, Le/i/b/k;-><init>(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V

    .line 12
    iget-object p1, v0, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
