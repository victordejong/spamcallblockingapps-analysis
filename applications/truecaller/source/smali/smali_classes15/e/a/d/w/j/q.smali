.class public final Le/a/d/w/j/q;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.invitation.action.EndWhenDeletedOnRemoteImpl$end$2"
    f = "EndWhenDeletedOnRemote.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/w/j/r;


# direct methods
.method public constructor <init>(Le/a/d/w/j/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/j/q;->e:Le/a/d/w/j/r;

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

    new-instance p1, Le/a/d/w/j/q;

    iget-object v0, p0, Le/a/d/w/j/q;->e:Le/a/d/w/j/r;

    invoke-direct {p1, v0, p2}, Le/a/d/w/j/q;-><init>(Le/a/d/w/j/r;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/d/w/j/q;->e:Le/a/d/w/j/r;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/d/w/j/r;->b:Le/a/d/w/j/m;

    .line 6
    sget-object v0, Le/a/d/w/h$b$g;->b:Le/a/d/w/h$b$g;

    invoke-interface {p1, v0}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/w/j/q;->e:Le/a/d/w/j/r;

    .line 3
    iget-object p1, p1, Le/a/d/w/j/r;->b:Le/a/d/w/j/m;

    .line 4
    sget-object v0, Le/a/d/w/h$b$g;->b:Le/a/d/w/h$b$g;

    invoke-interface {p1, v0}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
