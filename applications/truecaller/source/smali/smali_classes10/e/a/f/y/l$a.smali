.class public final Le/a/f/y/l$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/l;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/incallui/utils/BlockAction;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$getBlockedAction$1$action$1$1"
    f = "InCallUIServicePresenter.kt"
    l = {
        0xc8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Landroid/telecom/Call;

.field public final synthetic g:Le/a/f/y/l;


# direct methods
.method public constructor <init>(Landroid/telecom/Call;Ls1/w/d;Le/a/f/y/l;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/l$a;->f:Landroid/telecom/Call;

    iput-object p3, p0, Le/a/f/y/l$a;->g:Le/a/f/y/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/f/y/l$a;

    iget-object v0, p0, Le/a/f/y/l$a;->f:Landroid/telecom/Call;

    iget-object v1, p0, Le/a/f/y/l$a;->g:Le/a/f/y/l;

    invoke-direct {p1, v0, p2, v1}, Le/a/f/y/l$a;-><init>(Landroid/telecom/Call;Ls1/w/d;Le/a/f/y/l;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/y/l$a;

    iget-object v0, p0, Le/a/f/y/l$a;->f:Landroid/telecom/Call;

    iget-object v1, p0, Le/a/f/y/l$a;->g:Le/a/f/y/l;

    invoke-direct {p1, v0, p2, v1}, Le/a/f/y/l$a;-><init>(Landroid/telecom/Call;Ls1/w/d;Le/a/f/y/l;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/y/l$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/y/l$a;->e:I

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
    iget-object p1, p0, Le/a/f/y/l$a;->g:Le/a/f/y/l;

    iget-object p1, p1, Le/a/f/y/l;->f:Le/a/f/y/o;

    .line 5
    iget-object p1, p1, Le/a/f/y/o;->q:Le/a/f/z/k;

    .line 6
    iget-object v1, p0, Le/a/f/y/l$a;->f:Landroid/telecom/Call;

    invoke-static {v1}, Le/a/m0/a1$k;->b0(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Le/a/f/y/l$a;->e:I

    check-cast p1, Le/a/f/g;

    .line 7
    iget-object v2, p1, Le/a/f/g;->a:Ls1/w/f;

    new-instance v3, Le/a/f/i;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Le/a/f/i;-><init>(Le/a/f/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
