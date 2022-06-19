.class public final Le/a/d/v/k/f$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/f;->q()Lq3/a/p1;
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
    c = "com.truecaller.voip.groupcall.action.ChangeGroupCallAudioRouteImpl$toggleSpeaker$1"
    f = "ChangeGroupCallAudioRoute.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/v/k/f;


# direct methods
.method public constructor <init>(Le/a/d/v/k/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/f$b;->f:Le/a/d/v/k/f;

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

    new-instance p1, Le/a/d/v/k/f$b;

    iget-object v0, p0, Le/a/d/v/k/f$b;->f:Le/a/d/v/k/f;

    invoke-direct {p1, v0, p2}, Le/a/d/v/k/f$b;-><init>(Le/a/d/v/k/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/k/f$b;

    iget-object v0, p0, Le/a/d/v/k/f$b;->f:Le/a/d/v/k/f;

    invoke-direct {p1, v0, p2}, Le/a/d/v/k/f$b;-><init>(Le/a/d/v/k/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/k/f$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/d/v/k/f$b;->f:Le/a/d/v/k/f;

    .line 5
    iget-object p1, p1, Le/a/d/v/k/f;->b:Le/a/d/c0/r;

    .line 6
    invoke-virtual {p1}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/x1/b;

    .line 7
    iget-object p1, p1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 8
    instance-of p1, p1, Le/a/d/c0/x1/a$c;

    if-eqz p1, :cond_2

    .line 9
    sget-object p1, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    .line 11
    :goto_0
    iget-object v1, p0, Le/a/d/v/k/f$b;->f:Le/a/d/v/k/f;

    .line 12
    iget-object v3, v1, Le/a/d/v/k/f;->a:Le/a/d/c0/x1/e;

    .line 13
    iget-object v1, v1, Le/a/d/v/k/f;->c:Le/a/d/x/q/h;

    .line 14
    iput v2, p0, Le/a/d/v/k/f$b;->e:I

    invoke-interface {v3, p1, v1, p0}, Le/a/d/c0/x1/e;->d(Le/a/d/c0/x1/a;Le/a/d/x/q/h;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
