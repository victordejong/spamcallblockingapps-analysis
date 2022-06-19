.class public final Le/a/i/b0/b$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/b0/b;->b(Le/a/i/b0/d/a;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.keywords.AdCampaignsManagerImpl$preloadCampaigns$1"
    f = "AdCampaignsManager.kt"
    l = {
        0x56,
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/b0/b;

.field public final synthetic g:Le/a/i/b0/d/a;


# direct methods
.method public constructor <init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/b0/b$e;->f:Le/a/i/b0/b;

    iput-object p2, p0, Le/a/i/b0/b$e;->g:Le/a/i/b0/d/a;

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

    new-instance p1, Le/a/i/b0/b$e;

    iget-object v0, p0, Le/a/i/b0/b$e;->f:Le/a/i/b0/b;

    iget-object v1, p0, Le/a/i/b0/b$e;->g:Le/a/i/b0/d/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/b0/b$e;-><init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/b0/b$e;

    iget-object v0, p0, Le/a/i/b0/b$e;->f:Le/a/i/b0/b;

    iget-object v1, p0, Le/a/i/b0/b$e;->g:Le/a/i/b0/d/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/b0/b$e;-><init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/b0/b$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/b0/b$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/b0/b$e;->f:Le/a/i/b0/b;

    .line 5
    iget-object p1, p1, Le/a/i/b0/b;->e:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/b0/e/d;

    iget-object v1, p0, Le/a/i/b0/b$e;->g:Le/a/i/b0/d/a;

    iput v3, p0, Le/a/i/b0/b$e;->e:I

    invoke-interface {p1, v1, p0}, Le/a/i/b0/e/d;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;

    if-eqz p1, :cond_4

    .line 7
    iget-object v1, p0, Le/a/i/b0/b$e;->f:Le/a/i/b0/b;

    .line 8
    iget-object v1, v1, Le/a/i/b0/b;->d:Lo3/a;

    .line 9
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/b0/c/a;

    iget-object v3, p0, Le/a/i/b0/b$e;->g:Le/a/i/b0/d/a;

    iput v2, p0, Le/a/i/b0/b$e;->e:I

    invoke-interface {v1, v3, p1, p0}, Le/a/i/b0/c/a;->f(Le/a/i/b0/d/a;Lcom/truecaller/ads/keywords/model/AdCampaignsRestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
