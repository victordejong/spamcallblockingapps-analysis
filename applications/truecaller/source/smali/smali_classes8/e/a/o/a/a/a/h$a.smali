.class public final Le/a/o/a/a/a/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/a/a/h;->bc()V
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
    c = "com.truecaller.contextcall.ui.reasonpicker.onboarded.OnBoardedReasonPickerPresenter$onHidePersonClicked$1"
    f = "OnBoardedReasonPickerPresenter.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/a/a/a/h;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;


# direct methods
.method public constructor <init>(Le/a/o/a/a/a/h;Ljava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    iput-object p2, p0, Le/a/o/a/a/a/h$a;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/o/a/a/a/h$a;->h:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

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

    new-instance p1, Le/a/o/a/a/a/h$a;

    iget-object v0, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    iget-object v1, p0, Le/a/o/a/a/a/h$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/o/a/a/a/h$a;->h:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o/a/a/a/h$a;-><init>(Le/a/o/a/a/a/h;Ljava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/a/a/a/h$a;

    iget-object v0, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    iget-object v1, p0, Le/a/o/a/a/a/h$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/o/a/a/a/h$a;->h:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o/a/a/a/h$a;-><init>(Le/a/o/a/a/a/h;Ljava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/a/a/a/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/a/a/a/h$a;->e:I

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
    iget-object p1, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    .line 5
    iget-object p1, p1, Le/a/o/a/a/a/h;->h:Le/a/o/p/b/d;

    .line 6
    iget-object v1, p0, Le/a/o/a/a/a/h$a;->g:Ljava/lang/String;

    iput v2, p0, Le/a/o/a/a/a/h$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/o/p/b/d;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    .line 8
    iget-object p1, p1, Le/a/o/a/a/a/h;->i:Le/a/o/b/o;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const-string v4, "HiddenContactInfoIsShown"

    .line 9
    invoke-static {p1, v4, v0, v1, v3}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/a/f;

    if-eqz p1, :cond_3

    .line 12
    iget-object v0, p0, Le/a/o/a/a/a/h$a;->h:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    invoke-interface {p1, v0}, Le/a/o/a/a/a/f;->gc(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/a/f;

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Le/a/o/a/a/a/f;->t()V

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Le/a/o/a/a/a/h$a;->f:Le/a/o/a/a/a/h;

    .line 17
    invoke-virtual {p1}, Le/a/o/a/a/a/h;->Ij()V

    .line 18
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
