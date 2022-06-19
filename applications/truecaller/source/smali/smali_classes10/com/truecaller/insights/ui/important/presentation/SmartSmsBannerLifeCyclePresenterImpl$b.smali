.class public final Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->onResume()V
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
    c = "com.truecaller.insights.ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl$onResume$1"
    f = "SmartSmsBannerLifeCyclePresenter.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

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

    new-instance p1, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;

    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;-><init>(Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;

    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;-><init>(Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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

    const-wide/16 v4, 0xbb8

    .line 4
    iput v3, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    .line 6
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    .line 9
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->e:Le/a/c/c0/o;

    .line 10
    invoke-interface {p1}, Le/a/c/c0/o;->d0()V

    .line 11
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;->f:Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    .line 12
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0
.end method
