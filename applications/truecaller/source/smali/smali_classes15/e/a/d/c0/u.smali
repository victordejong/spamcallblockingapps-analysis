.class public final Le/a/d/c0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/t;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/d/c0/m1;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/d/c0/m1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecomUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/u;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/u;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/d/c0/u;->c:Le/a/d/c0/m1;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/d/c0/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/d/c0/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/d/c0/u$b;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/d/c0/u;->a:Ls1/w/f;

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->X0(Lq3/a/x2/f;Ls1/w/f;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Lq3/a/w2/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/d0<",
            "-",
            "Le/a/d/c0/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/d/c0/u$c;

    invoke-direct {v0, p0, p1}, Le/a/d/c0/u$c;-><init>(Le/a/d/c0/u;Lq3/a/w2/d0;)V

    .line 2
    new-instance v1, Le/a/d/c0/u$a;

    invoke-direct {v1, p0, v0}, Le/a/d/c0/u$a;-><init>(Le/a/d/c0/u;Le/a/d/c0/u$c;)V

    check-cast p1, Lq3/a/w2/k;

    .line 3
    iget-object p1, p1, Lq3/a/w2/k;->c:Lq3/a/w2/j;

    invoke-interface {p1, v1}, Lq3/a/w2/d0;->a(Ls1/z/b/l;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/u;->b:Landroid/content/Context;

    invoke-static {p1}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public c(JLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/c0/u$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/c0/u$d;

    iget v1, v0, Le/a/d/c0/u$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/u$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/u$d;

    invoke-direct {v0, p0, p3}, Le/a/d/c0/u$d;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/c0/u$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/u$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/u$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/u;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/d/c0/u;->n()Le/a/d/c0/s;

    move-result-object p3

    instance-of p3, p3, Le/a/d/c0/s$a;

    if-eqz p3, :cond_3

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p3, p1, v4

    if-gtz p3, :cond_4

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_4
    new-instance p3, Le/a/d/c0/u$e;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Le/a/d/c0/u$e;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    iput-object p0, v0, Le/a/d/c0/u$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/u$d;->e:I

    invoke-static {p1, p2, p3, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final d(IZ)Le/a/d/c0/s;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Le/a/d/c0/s$b;

    invoke-direct {p1, p2}, Le/a/d/c0/s$b;-><init>(Z)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Le/a/d/c0/s$c;

    invoke-direct {p1, p2}, Le/a/d/c0/s$c;-><init>(Z)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance p1, Le/a/d/c0/s$a;

    invoke-direct {p1, p2}, Le/a/d/c0/s$a;-><init>(Z)V

    :goto_0
    return-object p1
.end method

.method public n()Le/a/d/c0/s;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c0/u;->c:Le/a/d/c0/m1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Le/a/p5/s0/g;->u0(Le/a/d/c0/m1;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/d/c0/u;->b:Landroid/content/Context;

    invoke-static {v1}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Le/a/d/c0/u;->d(IZ)Le/a/d/c0/s;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/c0/s$a;

    invoke-direct {v1, v0}, Le/a/d/c0/s$a;-><init>(Z)V

    :goto_0
    return-object v1
.end method
