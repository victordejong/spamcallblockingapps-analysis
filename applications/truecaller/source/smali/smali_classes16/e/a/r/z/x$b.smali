.class public final Le/a/r/z/x$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/x;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$triggerAttestation$1$2"
    f = "VerificationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/z/x;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/r/z/x;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iput-object p2, p0, Le/a/r/z/x$b;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/r/z/x$b;

    iget-object v0, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object v1, p0, Le/a/r/z/x$b;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/x$b;-><init>(Le/a/r/z/x;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object v1, p0, Le/a/r/z/x$b;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/z/y;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 6
    invoke-static {p2, v3, v3, v4, v2}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    .line 7
    :cond_0
    iget-object p2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Le/a/v2/l;

    .line 8
    sget-object v1, Le/a/v2/l$b;->a:Le/a/v2/l$b;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, v0, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 9
    invoke-virtual {p2}, Le/a/r/z/s;->Wj()V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Le/a/v2/l$a$a;->b:Le/a/v2/l$a$a;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "NumberVerification"

    if-eqz v1, :cond_2

    iget-object p2, v0, Le/a/r/z/x;->h:Le/a/r/z/s;

    sget-object v0, Le/a/r/z/o$h;->e:Le/a/r/z/o$h;

    .line 11
    invoke-virtual {p2, v0, v2}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    sget-object v1, Le/a/v2/l$a$b;->b:Le/a/v2/l$a$b;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, v0, Le/a/r/z/x;->h:Le/a/r/z/s;

    sget-object v0, Le/a/r/z/o$d;->e:Le/a/r/z/o$d;

    .line 13
    invoke-virtual {p2, v0, v2}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    sget-object v1, Le/a/v2/l$a$c;->b:Le/a/v2/l$a$c;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    instance-of v1, p2, Le/a/v2/l$a$d;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    instance-of p2, p2, Le/a/v2/l$a$e;

    if-eqz p2, :cond_6

    .line 17
    :goto_0
    iget-object p2, v0, Le/a/r/z/x;->h:Le/a/r/z/s;

    sget-object v0, Le/a/r/z/o$k;->e:Le/a/r/z/o$k;

    .line 18
    invoke-virtual {p2, v0, v2}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object p1, p1, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/z/y;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v2, v2, v0, v1}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/r/z/x$b;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v2/l;

    .line 6
    sget-object v0, Le/a/v2/l$b;->a:Le/a/v2/l$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object p1, p1, Le/a/r/z/x;->h:Le/a/r/z/s;

    .line 7
    invoke-virtual {p1}, Le/a/r/z/s;->Wj()V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Le/a/v2/l$a$a;->b:Le/a/v2/l$a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NumberVerification"

    if-eqz v0, :cond_2

    iget-object p1, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object p1, p1, Le/a/r/z/x;->h:Le/a/r/z/s;

    sget-object v0, Le/a/r/z/o$h;->e:Le/a/r/z/o$h;

    .line 9
    invoke-virtual {p1, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Le/a/v2/l$a$b;->b:Le/a/v2/l$a$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object p1, p1, Le/a/r/z/x;->h:Le/a/r/z/s;

    sget-object v0, Le/a/r/z/o$d;->e:Le/a/r/z/o$d;

    .line 11
    invoke-virtual {p1, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Le/a/v2/l$a$c;->b:Le/a/v2/l$a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    instance-of v0, p1, Le/a/v2/l$a$d;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    instance-of p1, p1, Le/a/v2/l$a$e;

    if-eqz p1, :cond_6

    .line 15
    :goto_0
    iget-object p1, p0, Le/a/r/z/x$b;->e:Le/a/r/z/x;

    iget-object p1, p1, Le/a/r/z/x;->h:Le/a/r/z/s;

    sget-object v0, Le/a/r/z/o$k;->e:Le/a/r/z/o$k;

    .line 16
    invoke-virtual {p1, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    .line 17
    :cond_6
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
