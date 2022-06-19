.class public Le/i/b/o2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Lcom/criteo/publisher/CriteoBannerAdListener;

.field public final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/i/b/v2;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoBannerAdListener;Ljava/lang/ref/Reference;Le/i/b/v2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/CriteoBannerAdListener;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;",
            "Le/i/b/v2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/o2/a;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/o2/a;->a:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/o2/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    .line 4
    iput-object p2, p0, Le/i/b/o2/a;->c:Ljava/lang/ref/Reference;

    .line 5
    iput-object p3, p0, Le/i/b/o2/a;->d:Le/i/b/v2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/i/b/o2/a;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoBannerView;

    .line 2
    iget-object v1, p0, Le/i/b/o2/a;->d:Le/i/b/v2;

    sget-object v2, Le/i/b/v2;->b:Le/i/b/v2;

    const/4 v3, 0x0

    const-string v4, "BannerView("

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/i/b/o2/a;->a:Le/i/b/q2/h;

    .line 4
    new-instance v2, Le/i/b/q2/f;

    .line 5
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") failed to load"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    move-object v5, v2

    .line 6
    invoke-direct/range {v5 .. v10}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v1, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Le/i/b/v2;->a:Le/i/b/v2;

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Le/i/b/o2/a;->a:Le/i/b/q2/h;

    .line 10
    new-instance v2, Le/i/b/q2/f;

    .line 11
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is loaded"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    move-object v5, v2

    .line 12
    invoke-direct/range {v5 .. v10}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 13
    invoke-virtual {v1, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 14
    :cond_3
    :goto_0
    iget-object v1, p0, Le/i/b/o2/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    if-eqz v1, :cond_8

    if-nez v0, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    sget-object v1, Le/i/b/o2/a$a;->a:[I

    iget-object v2, p0, Le/i/b/o2/a;->d:Le/i/b/v2;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Le/i/b/o2/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdClicked()V

    .line 17
    iget-object v0, p0, Le/i/b/o2/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdLeftApplication()V

    goto :goto_1

    .line 18
    :cond_6
    iget-object v1, p0, Le/i/b/o2/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    invoke-interface {v1, v0}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V

    goto :goto_1

    .line 19
    :cond_7
    iget-object v0, p0, Le/i/b/o2/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    :cond_8
    :goto_1
    return-void
.end method
