.class public final Le/a/o/a/g/h/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/g/h/e;->w1(Ljava/lang/String;)V
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
    c = "com.truecaller.contextcall.ui.custommessage.editcallreason.EditCallReasonPresenter$onDoneClicked$1"
    f = "EditCallReasonPresenter.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/g/h/e;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/a/g/h/e;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/h/e$a;->f:Le/a/o/a/g/h/e;

    iput-object p2, p0, Le/a/o/a/g/h/e$a;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/o/a/g/h/e$a;

    iget-object v0, p0, Le/a/o/a/g/h/e$a;->f:Le/a/o/a/g/h/e;

    iget-object v1, p0, Le/a/o/a/g/h/e$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/a/g/h/e$a;-><init>(Le/a/o/a/g/h/e;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/g/h/e$a;

    iget-object v0, p0, Le/a/o/a/g/h/e$a;->f:Le/a/o/a/g/h/e;

    iget-object v1, p0, Le/a/o/a/g/h/e$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/a/g/h/e$a;-><init>(Le/a/o/a/g/h/e;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/g/h/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/a/g/h/e$a;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/o/a/g/h/e$a;->f:Le/a/o/a/g/h/e;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/h/d;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Le/a/o/a/g/h/d;->T3()Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object v2, p0, Le/a/o/a/g/h/e$a;->f:Le/a/o/a/g/h/e;

    .line 8
    iget-object v2, v2, Le/a/o/a/g/h/e;->f:Le/a/o/p/e/e;

    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Le/a/o/a/g/h/e$a;->g:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v3, v6}, Lcom/truecaller/contextcall/db/reason/CallReason;->copy$default(Lcom/truecaller/contextcall/db/reason/CallReason;ILjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object p1

    iput v3, p0, Le/a/o/a/g/h/e$a;->e:I

    invoke-interface {v2, p1, p0}, Le/a/o/p/e/e;->b(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/o/a/g/h/e$a;->f:Le/a/o/a/g/h/e;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/h/d;

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Le/a/o/a/g/f;->t7()V

    :cond_3
    return-object v0
.end method
