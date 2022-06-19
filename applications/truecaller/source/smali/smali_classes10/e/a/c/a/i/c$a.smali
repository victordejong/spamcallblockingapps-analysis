.class public final Le/a/c/a/i/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-TT;>;",
        "Ljava/lang/Throwable;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.domain.FlowUseCase$invoke$1"
    f = "FlowUseCase.kt"
    l = {
        0x12
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/c/a/i/c;


# direct methods
.method public constructor <init>(Le/a/c/a/i/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/i/c$a;->h:Le/a/c/a/i/c;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ls1/w/d;

    const-string v0, "$this$create"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/i/c$a;

    iget-object v1, p0, Le/a/c/a/i/c$a;->h:Le/a/c/a/i/c;

    invoke-direct {v0, v1, p3}, Le/a/c/a/i/c$a;-><init>(Le/a/c/a/i/c;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/i/c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a/i/c$a;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/a/i/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/i/c$a;->g:I

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

    iget-object p1, p0, Le/a/c/a/i/c$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/c/a/i/c$a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    .line 4
    sget-object v3, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v4, Lcom/truecaller/log/UnmutedException$i;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "e.localizedMessage"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Lcom/truecaller/log/UnmutedException$i;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v3, v4, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Le/a/c/a/i/c$a;->h:Le/a/c/a/i/c;

    invoke-virtual {v3}, Le/a/c/a/i/c;->a()Ljava/lang/Object;

    move-result-object v3

    iput-object v1, p0, Le/a/c/a/i/c$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/c/a/i/c$a;->g:I

    invoke-interface {p1, v3, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
