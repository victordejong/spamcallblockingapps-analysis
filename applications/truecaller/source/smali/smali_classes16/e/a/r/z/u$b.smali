.class public final Le/a/r/z/u$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/u;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$onVerified$1$2"
    f = "VerificationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/z/u;


# direct methods
.method public constructor <init>(Le/a/r/z/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/u$b;->e:Le/a/r/z/u;

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

    new-instance p1, Le/a/r/z/u$b;

    iget-object v0, p0, Le/a/r/z/u$b;->e:Le/a/r/z/u;

    invoke-direct {p1, v0, p2}, Le/a/r/z/u$b;-><init>(Le/a/r/z/u;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/r/z/u$b;->e:Le/a/r/z/u;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, p1, Le/a/r/z/u;->f:Le/a/r/z/s;

    sget-object v1, Le/a/r/z/o$e;->e:Le/a/r/z/o$e;

    iget-object p1, p1, Le/a/r/z/u;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, p1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/r/z/u$b;->e:Le/a/r/z/u;

    iget-object v0, p1, Le/a/r/z/u;->f:Le/a/r/z/s;

    sget-object v1, Le/a/r/z/o$e;->e:Le/a/r/z/o$e;

    iget-object p1, p1, Le/a/r/z/u;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, p1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
