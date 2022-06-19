.class public final Le/a/f/a/t/c$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/t/c;->Jj(Le/a/f/w/f;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/a/k/z/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter$maybeSubscribeToPlayingState$2"
    f = "CallerGradientPresenter.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/t/c;

.field public final synthetic h:Lcom/truecaller/incallui/service/CallState;

.field public final synthetic i:Le/a/f/w/f;


# direct methods
.method public constructor <init>(Le/a/f/a/t/c;Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/t/c$c;->g:Le/a/f/a/t/c;

    iput-object p2, p0, Le/a/f/a/t/c$c;->h:Lcom/truecaller/incallui/service/CallState;

    iput-object p3, p0, Le/a/f/a/t/c$c;->i:Le/a/f/w/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/t/c$c;

    iget-object v1, p0, Le/a/f/a/t/c$c;->g:Le/a/f/a/t/c;

    iget-object v2, p0, Le/a/f/a/t/c$c;->h:Lcom/truecaller/incallui/service/CallState;

    iget-object v3, p0, Le/a/f/a/t/c$c;->i:Le/a/f/w/f;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/a/t/c$c;-><init>(Le/a/f/a/t/c;Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/t/c$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/t/c$c;

    iget-object v1, p0, Le/a/f/a/t/c$c;->g:Le/a/f/a/t/c;

    iget-object v2, p0, Le/a/f/a/t/c$c;->h:Lcom/truecaller/incallui/service/CallState;

    iget-object v3, p0, Le/a/f/a/t/c$c;->i:Le/a/f/w/f;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/a/t/c$c;-><init>(Le/a/f/a/t/c;Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/t/c$c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/t/c$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/t/c$c;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/t/c$c;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    .line 4
    instance-of v1, p1, Le/a/k/a/k/z/b$c;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, p1, Le/a/k/a/k/z/b$f;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    instance-of v1, p1, Le/a/k/a/k/z/b$e;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    instance-of p1, p1, Le/a/k/a/k/z/b$a;

    if-eqz p1, :cond_5

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 8
    :goto_1
    iget-object v1, p0, Le/a/f/a/t/c$c;->g:Le/a/f/a/t/c;

    iget-object v3, p0, Le/a/f/a/t/c$c;->h:Lcom/truecaller/incallui/service/CallState;

    iget-object v4, p0, Le/a/f/a/t/c$c;->i:Le/a/f/w/f;

    iput v2, p0, Le/a/f/a/t/c$c;->f:I

    invoke-virtual {v1, v3, v4, p1, p0}, Le/a/f/a/t/c;->Kj(Lcom/truecaller/incallui/service/CallState;Le/a/f/w/f;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 9
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
