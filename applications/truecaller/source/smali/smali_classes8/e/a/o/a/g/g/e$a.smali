.class public final Le/a/o/a/g/g/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/g/g/e;->w1(Ljava/lang/String;)V
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
    c = "com.truecaller.contextcall.ui.custommessage.addcallreason.AddCallReasonPresenter$onDoneClicked$1"
    f = "AddCallReasonPresenter.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/g/g/e;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/a/g/g/e;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/g/e$a;->f:Le/a/o/a/g/g/e;

    iput-object p2, p0, Le/a/o/a/g/g/e$a;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/o/a/g/g/e$a;

    iget-object v0, p0, Le/a/o/a/g/g/e$a;->f:Le/a/o/a/g/g/e;

    iget-object v1, p0, Le/a/o/a/g/g/e$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/a/g/g/e$a;-><init>(Le/a/o/a/g/g/e;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/g/g/e$a;

    iget-object v0, p0, Le/a/o/a/g/g/e$a;->f:Le/a/o/a/g/g/e;

    iget-object v1, p0, Le/a/o/a/g/g/e$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/a/g/g/e$a;-><init>(Le/a/o/a/g/g/e;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/g/g/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/a/g/g/e$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/o/a/g/g/e$a;->f:Le/a/o/a/g/g/e;

    .line 5
    iget-object p1, p1, Le/a/o/a/g/g/e;->f:Le/a/o/p/e/e;

    .line 6
    iget-object v1, p0, Le/a/o/a/g/g/e$a;->g:Ljava/lang/String;

    iput v2, p0, Le/a/o/a/g/g/e$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/o/p/e/e;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/o/a/g/g/e$a;->f:Le/a/o/a/g/g/e;

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/g/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/o/a/g/g/d;->Q3()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p1, Le/a/o/a/g/g/e;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    .line 10
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    const-string v0, "onBoardingAddReason"

    .line 12
    invoke-virtual {v1, v0}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 13
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 15
    :cond_3
    iget-object p1, p0, Le/a/o/a/g/g/e$a;->f:Le/a/o/a/g/g/e;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/g/d;

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p1}, Le/a/o/a/g/f;->t7()V

    .line 18
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
