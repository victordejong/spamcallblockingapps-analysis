.class public final Le/a/d0/m0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/m0;->c(Le/a/d0/v;Ljava/lang/String;Le/a/d0/o0;)V
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
    c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$handleCallEnded$1"
    f = "ContextCallCallerIdHelper.kt"
    l = {
        0x3c,
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d0/m0;

.field public final synthetic h:Le/a/d0/o0;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d0/m0;Le/a/d0/o0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    iput-object p2, p0, Le/a/d0/m0$a;->h:Le/a/d0/o0;

    iput-object p3, p0, Le/a/d0/m0$a;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/d0/m0$a;

    iget-object v0, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    iget-object v1, p0, Le/a/d0/m0$a;->h:Le/a/d0/o0;

    iget-object v2, p0, Le/a/d0/m0$a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d0/m0$a;-><init>(Le/a/d0/m0;Le/a/d0/o0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/m0$a;

    iget-object v0, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    iget-object v1, p0, Le/a/d0/m0$a;->h:Le/a/d0/o0;

    iget-object v2, p0, Le/a/d0/m0$a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d0/m0$a;-><init>(Le/a/d0/m0;Le/a/d0/o0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/m0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d0/m0$a;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d0/m0$a;->e:Ljava/lang/Object;

    check-cast v2, Le/a/d0/o0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Le/a/d0/m0$a;->h:Le/a/d0/o0;

    iget-object p1, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    .line 5
    iget-object p1, p1, Le/a/d0/m0;->e:Le/a/o/c;

    .line 6
    iget-object v5, p0, Le/a/d0/m0$a;->i:Ljava/lang/String;

    iput-object v2, p0, Le/a/d0/m0$a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d0/m0$a;->f:I

    invoke-interface {p1, v5, p0}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Le/a/m0/a1$k;->T0(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    invoke-interface {v2, p1}, Le/a/d0/o0;->a(Lcom/truecaller/data/entity/CallContextMessage;)V

    .line 7
    iget-object p1, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    .line 8
    invoke-virtual {p1}, Le/a/d0/m0;->e()Z

    move-result p1

    if-nez p1, :cond_5

    return-object v0

    .line 9
    :cond_5
    iget-object p1, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    .line 10
    iget-object p1, p1, Le/a/d0/m0;->e:Le/a/o/c;

    .line 11
    invoke-interface {p1}, Le/a/o/c;->J()V

    .line 12
    iget-object p1, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    .line 13
    iget-object p1, p1, Le/a/d0/m0;->e:Le/a/o/c;

    .line 14
    invoke-interface {p1}, Le/a/o/c;->u()V

    .line 15
    iget-object p1, p0, Le/a/d0/m0$a;->g:Le/a/d0/m0;

    iget-object v2, p0, Le/a/d0/m0$a;->i:Ljava/lang/String;

    iput-object v4, p0, Le/a/d0/m0$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d0/m0$a;->f:I

    .line 16
    iget-object v3, p1, Le/a/d0/m0;->e:Le/a/o/c;

    invoke-interface {v3}, Le/a/o/c;->i()Lq3/a/x2/a1;

    move-result-object v3

    invoke-interface {v3, v4}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p1, Le/a/d0/m0;->e:Le/a/o/c;

    invoke-interface {p1, v2, p0}, Le/a/o/c;->y(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object v0
.end method
