.class public final Le/a/o/b/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/n0;


# instance fields
.field public final a:Le/a/o/b/q;

.field public final b:Le/a/o/b/l0;

.field public final c:Le/a/o/b/d;


# direct methods
.method public constructor <init>(Le/a/o/b/q;Le/a/o/b/l0;Le/a/o/b/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCallStubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingMessageHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/o0;->a:Le/a/o/b/q;

    iput-object p2, p0, Le/a/o/b/o0;->b:Le/a/o/b/l0;

    iput-object p3, p0, Le/a/o/b/o0;->c:Le/a/o/b/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/CallContextMessage;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/o/b/o0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/o/b/o0$a;

    iget v1, v0, Le/a/o/b/o0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/o/b/o0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/o/b/o0$a;

    invoke-direct {v0, p0, p2}, Le/a/o/b/o0$a;-><init>(Le/a/o/b/o0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/o/b/o0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/o/b/o0$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/o/b/o0$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    iget-object v0, v0, Le/a/o/b/o0$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/o/b/o0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/o/b/o0;->a:Le/a/o/b/q;

    iput-object p0, v0, Le/a/o/b/o0$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/o/b/o0$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/o/b/o0$a;->e:I

    check-cast p2, Le/a/o/b/s;

    .line 5
    iget-object v2, p2, Le/a/o/b/s;->o:Ls1/w/f;

    new-instance v5, Le/a/o/b/r;

    invoke-direct {v5, p2, p1, v3}, Le/a/o/b/r;-><init>(Le/a/o/b/s;Lcom/truecaller/data/entity/CallContextMessage;Ls1/w/d;)V

    invoke-static {v2, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, v0, Le/a/o/b/o0;->b:Le/a/o/b/l0;

    invoke-interface {p2}, Le/a/o/b/l0;->i()Lq3/a/x2/a1;

    move-result-object p2

    invoke-interface {p2, p1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 8
    iget-object p2, v0, Le/a/o/b/o0;->c:Le/a/o/b/d;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Le/a/o/b/d;->h(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object p1, v0, Le/a/o/b/o0;->b:Le/a/o/b/l0;

    invoke-interface {p1}, Le/a/o/b/l0;->i()Lq3/a/x2/a1;

    move-result-object p1

    invoke-interface {p1, v3}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 10
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
