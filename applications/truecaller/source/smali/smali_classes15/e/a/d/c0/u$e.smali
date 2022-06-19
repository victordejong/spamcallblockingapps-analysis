.class public final Le/a/d/c0/u$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/u;->c(JLs1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.NativeCallStateModelImpl$waitForIdleNativeState$2"
    f = "NativeCallStateModel.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/u;


# direct methods
.method public constructor <init>(Le/a/d/c0/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/u$e;->f:Le/a/d/c0/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/c0/u$e;

    iget-object v0, p0, Le/a/d/c0/u$e;->f:Le/a/d/c0/u;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/u$e;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/u$e;

    iget-object v0, p0, Le/a/d/c0/u$e;->f:Le/a/d/c0/u;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/u$e;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/u$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/u$e;->e:I

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
    iget-object p1, p0, Le/a/d/c0/u$e;->f:Le/a/d/c0/u;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Le/a/d/c0/u$b;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Le/a/d/c0/u$b;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object v1

    .line 7
    iget-object p1, p1, Le/a/d/c0/u;->a:Ls1/w/f;

    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->X0(Lq3/a/x2/f;Ls1/w/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 8
    new-instance v1, Le/a/d/c0/u$e$a;

    invoke-direct {v1, v3}, Le/a/d/c0/u$e$a;-><init>(Ls1/w/d;)V

    iput v2, p0, Le/a/d/c0/u$e;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
