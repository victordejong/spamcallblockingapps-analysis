.class public final Le/a/q2/w0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/a;
.implements Lq3/a/i0;


# instance fields
.field public a:Z

.field public final b:Ls1/g;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/k;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/q2/w0/h/h;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/q2/w0/h/h;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Lo3/a<",
            "Le/a/q2/w0/h/e;",
            ">;",
            "Lo3/a<",
            "Le/a/f/b;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/w0/h/k;",
            ">;",
            "Le/a/q2/w0/h/h;",
            "Lo3/a<",
            "Le/a/q2/w0/h/a;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/w0/h/b;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/w0/h/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberNormalizer"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUI"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callListenerFactory"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initPointProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/w0/b;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/q2/w0/b;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/q2/w0/b;->e:Lo3/a;

    iput-object p4, p0, Le/a/q2/w0/b;->f:Lo3/a;

    iput-object p5, p0, Le/a/q2/w0/b;->g:Lo3/a;

    iput-object p6, p0, Le/a/q2/w0/b;->h:Lo3/a;

    iput-object p7, p0, Le/a/q2/w0/b;->i:Le/a/q2/w0/h/h;

    iput-object p8, p0, Le/a/q2/w0/b;->j:Lo3/a;

    iput-object p9, p0, Le/a/q2/w0/b;->k:Lo3/a;

    iput-object p10, p0, Le/a/q2/w0/b;->l:Lo3/a;

    .line 2
    sget-object p1, Le/a/q2/w0/b$b;->b:Le/a/q2/w0/b$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q2/w0/b;->b:Ls1/g;

    return-void
.end method

.method public static final c(Le/a/q2/w0/b;Le/a/q2/w0/h/n;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p1, Le/a/q2/w0/h/n$b;

    if-eqz p0, :cond_0

    check-cast p1, Le/a/q2/w0/h/n$b;

    .line 3
    iget-object p0, p1, Le/a/q2/w0/h/n$b;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    instance-of p0, p1, Le/a/q2/w0/h/n$a;

    if-eqz p0, :cond_1

    const-string p0, "unknown"

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final d(Le/a/q2/w0/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/q2/w0/b;->b:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Le/a/q2/w0/b;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q2/w0/b;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->p()Lq3/a/w2/z;

    move-result-object v0

    .line 3
    new-instance v4, Le/a/q2/w0/c;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v0, v1}, Le/a/q2/w0/c;-><init>(Le/a/q2/w0/b;Lq3/a/w2/z;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/q2/w0/b;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "initPoint"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/w0/b;->i:Le/a/q2/w0/h/h;

    invoke-interface {v0, p1, p2}, Le/a/q2/w0/h/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;Lcom/truecaller/analytics/call/CallAnswered;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/analytics/call/CallDirection;",
            "Lcom/truecaller/analytics/call/CallAnswered;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/q2/w0/b$a;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/q2/w0/b$a;

    iget v1, v0, Le/a/q2/w0/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q2/w0/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q2/w0/b$a;

    invoke-direct {v0, p0, p5}, Le/a/q2/w0/b$a;-><init>(Le/a/q2/w0/b;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p5, v6, Le/a/q2/w0/b$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/q2/w0/b$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Le/a/q2/w0/b$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/q2/w0/b;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/analytics/call/CallDirection;->isOutgoing()Z

    move-result p5

    const/4 v1, 0x0

    if-eqz p5, :cond_3

    if-eqz p4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    .line 5
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/analytics/call/CallDirection;->isIncoming()Z

    move-result p4

    if-eqz p4, :cond_4

    sget-object p4, Lcom/truecaller/analytics/call/CallAnswered;->NO:Lcom/truecaller/analytics/call/CallAnswered;

    if-ne p3, p4, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v1

    .line 6
    :goto_2
    iget-object p3, p0, Le/a/q2/w0/b;->j:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Le/a/q2/w0/h/a;

    iput-object p0, v6, Le/a/q2/w0/b$a;->g:Ljava/lang/Object;

    iput v2, v6, Le/a/q2/w0/b$a;->e:I

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Le/a/q2/w0/h/a;->a(Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_5

    return-object v0

    :cond_5
    move-object p1, p0

    :goto_3
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 7
    sget-object p1, Lcom/truecaller/analytics/call/AfterCallScreen;->SHOWN:Lcom/truecaller/analytics/call/AfterCallScreen;

    goto :goto_4

    .line 8
    :cond_6
    iget-object p1, p1, Le/a/q2/w0/b;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/truecaller/analytics/call/AfterCallScreen;->OTHER_CALL:Lcom/truecaller/analytics/call/AfterCallScreen;

    goto :goto_4

    .line 10
    :cond_7
    sget-object p1, Lcom/truecaller/analytics/call/AfterCallScreen;->NO_INFO:Lcom/truecaller/analytics/call/AfterCallScreen;

    .line 11
    :goto_4
    invoke-virtual {p1}, Lcom/truecaller/analytics/call/AfterCallScreen;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/w0/b;->c:Ls1/w/f;

    return-object v0
.end method
