.class public final Le/a/i/f0/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/e;-><init>(Ls1/w/f;Le/a/r2/f;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/i/f0/l/j;Le/a/i/f0/n/g;)V
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
    c = "com.truecaller.ads.provider.AdsProviderImpl$1"
    f = "AdsProviderImpl.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/i/f0/e;


# direct methods
.method public constructor <init>(Le/a/i/f0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/e$a;->h:Le/a/i/f0/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/i/f0/e$a;

    iget-object v0, p0, Le/a/i/f0/e$a;->h:Le/a/i/f0/e;

    invoke-direct {p1, v0, p2}, Le/a/i/f0/e$a;-><init>(Le/a/i/f0/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/e$a;

    iget-object v0, p0, Le/a/i/f0/e$a;->h:Le/a/i/f0/e;

    invoke-direct {p1, v0, p2}, Le/a/i/f0/e$a;-><init>(Le/a/i/f0/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/f0/e$a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/i/f0/e$a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/p5/l0;

    iget-object v1, p0, Le/a/i/f0/e$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/p5/l0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/f0/e$a;->h:Le/a/i/f0/e;

    .line 5
    iget-object p1, p1, Le/a/i/f0/e;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/m0;

    const-string v1, "GoogleAdsInit"

    .line 6
    invoke-interface {p1, v1}, Le/a/p5/m0;->a(Ljava/lang/String;)Le/a/p5/l0;

    move-result-object p1

    .line 7
    sget-object v1, Le/a/i/r;->c:Le/a/i/r;

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    const-string v4, "ApplicationBase.getAppBase()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/i/f0/e$a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/i/f0/e$a;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/i/f0/e$a;->g:I

    invoke-virtual {v1, v3, p0}, Le/a/i/r;->a(Landroid/content/Context;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    invoke-interface {v0}, Le/a/p5/l0;->stop()V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
