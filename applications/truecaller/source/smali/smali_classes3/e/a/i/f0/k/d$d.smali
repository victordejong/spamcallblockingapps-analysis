.class public final Le/a/i/f0/k/d$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/k/d;->d(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/concurrent/Future<",
        "[",
        "Lcom/truecaller/ads/campaigns/AdCampaigns;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.provider.campaigns.CampaignReceiverImpl$fetchCampaigns$future$1"
    f = "CampaignReceiverImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/i/f0/k/d;

.field public final synthetic f:Le/a/i/o;


# direct methods
.method public constructor <init>(Le/a/i/f0/k/d;Le/a/i/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/k/d$d;->e:Le/a/i/f0/k/d;

    iput-object p2, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/k/d$d;

    iget-object v0, p0, Le/a/i/f0/k/d$d;->e:Le/a/i/f0/k/d;

    iget-object v1, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/f0/k/d$d;-><init>(Le/a/i/f0/k/d;Le/a/i/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/i/f0/k/d$d;->e:Le/a/i/f0/k/d;

    iget-object v0, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p1, Le/a/i/f0/k/d;->e:Le/a/i/w/d;

    .line 6
    iget-object p1, p1, Le/a/i/f0/k/d;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 7
    iget-object v3, v0, Le/a/i/o;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    iget-object p2, v0, Le/a/i/o;->b:Ljava/lang/String;

    aput-object p2, v5, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Le/a/i/w/d;->d(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/i/f0/k/d$d;->e:Le/a/i/f0/k/d;

    .line 3
    iget-object v0, p1, Le/a/i/f0/k/d;->e:Le/a/i/w/d;

    .line 4
    iget-object p1, p1, Le/a/i/f0/k/d;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 5
    iget-object p1, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    iget-object v2, p1, Le/a/i/o;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    iget-object v5, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    iget-object v6, v5, Le/a/i/o;->b:Ljava/lang/String;

    aput-object v6, v4, p1

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object p1, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object p1, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object p1, p0, Le/a/i/f0/k/d$d;->f:Le/a/i/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Le/a/i/w/d;->d(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
