.class public final Le/a/e3/k/m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Integer;",
        "Ls1/w/d<",
        "-",
        "Lq3/a/x2/f<",
        "+",
        "Le/a/p5/v0/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$listenCallStatesFlow$2"
    f = "CallAlertSimSupport.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:I

.field public final synthetic f:Le/a/e3/k/k;


# direct methods
.method public constructor <init>(Le/a/e3/k/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/m;->f:Le/a/e3/k/k;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e3/k/m;

    iget-object v1, p0, Le/a/e3/k/m;->f:Le/a/e3/k/k;

    invoke-direct {v0, v1, p2}, Le/a/e3/k/m;-><init>(Le/a/e3/k/k;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Le/a/e3/k/m;->e:I

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e3/k/m;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e3/k/m;

    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget p2, p1, Le/a/e3/k/m;->e:I

    .line 2
    iget-object p1, p1, Le/a/e3/k/m;->f:Le/a/e3/k/k;

    .line 3
    iget-object p1, p1, Le/a/e3/k/k;->g:Le/a/p5/v0/b;

    .line 4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    invoke-interface {p1, v0}, Le/a/p5/v0/b;->e(Ljava/lang/Integer;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget p1, p0, Le/a/e3/k/m;->e:I

    .line 2
    iget-object v0, p0, Le/a/e3/k/m;->f:Le/a/e3/k/k;

    .line 3
    iget-object v0, v0, Le/a/e3/k/k;->g:Le/a/p5/v0/b;

    .line 4
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    invoke-interface {v0, v1}, Le/a/p5/v0/b;->e(Ljava/lang/Integer;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
