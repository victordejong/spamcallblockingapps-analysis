.class public final Le/a/r/z/s$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/s$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$requestNextToken$1$1"
    f = "VerificationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/z/s$b;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/r/z/s$b;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/s$b$a;->e:Le/a/r/z/s$b;

    iput-object p2, p0, Le/a/r/z/s$b$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/r/z/s$b$a;

    iget-object v0, p0, Le/a/r/z/s$b$a;->e:Le/a/r/z/s$b;

    iget-object v1, p0, Le/a/r/z/s$b$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/s$b$a;-><init>(Le/a/r/z/s$b;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/z/s$b$a;->e:Le/a/r/z/s$b;

    iget-object v1, p0, Le/a/r/z/s$b$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/z/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 v4, 0x2

    .line 6
    invoke-static {p2, v3, v3, v4, v2}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    .line 7
    :cond_0
    iget-object p2, v0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iget-object v4, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Le/a/r/r/a;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 9
    iget-object v5, v4, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v5}, Lcom/truecaller/account/network/TokenResponseDto;->getMethod()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p2, Le/a/r/z/s;->e:Ljava/lang/String;

    :goto_0
    move-object v9, v5

    .line 11
    invoke-virtual {p2, v9}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v10

    .line 12
    iget-object p2, p2, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    if-eqz v4, :cond_2

    .line 13
    iget-object v2, v4, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    move v7, v3

    .line 14
    invoke-static {v4}, Le/a/p5/s0/g;->e0(Le/a/r/r/a;)Ljava/lang/Integer;

    move-result-object v8

    .line 15
    check-cast p2, Le/a/r/z/d0/e;

    .line 16
    iget-object v2, p2, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v3, Le/a/r/z/d0/a;

    iget-object v11, p2, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Le/a/r/z/d0/a;-><init>(ZLjava/lang/Integer;Ljava/lang/String;ZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v2, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 17
    iget-object p2, v0, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iget-object v0, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/r/a;

    const-string v1, "SendOnboardingOTP"

    invoke-static {p2, v0, v1}, Le/a/r/z/s;->Ij(Le/a/r/z/s;Le/a/r/r/a;Ljava/lang/String;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r/z/s$b$a;->e:Le/a/r/z/s$b;

    iget-object p1, p1, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/z/y;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v1, v1, v2, v0}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/r/z/s$b$a;->e:Le/a/r/z/s$b;

    iget-object p1, p1, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iget-object v2, p0, Le/a/r/z/s$b$a;->f:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/r/a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 7
    iget-object v3, v2, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/truecaller/account/network/TokenResponseDto;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Le/a/r/z/s;->e:Ljava/lang/String;

    :goto_0
    move-object v7, v3

    .line 9
    invoke-virtual {p1, v7}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v8

    .line 10
    iget-object p1, p1, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    if-eqz v2, :cond_2

    .line 11
    iget-object v0, v2, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v5, v1

    .line 12
    invoke-static {v2}, Le/a/p5/s0/g;->e0(Le/a/r/r/a;)Ljava/lang/Integer;

    move-result-object v6

    .line 13
    check-cast p1, Le/a/r/z/d0/e;

    .line 14
    iget-object v0, p1, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v1, Le/a/r/z/d0/a;

    iget-object v9, p1, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Le/a/r/z/d0/a;-><init>(ZLjava/lang/Integer;Ljava/lang/String;ZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 15
    iget-object p1, p0, Le/a/r/z/s$b$a;->e:Le/a/r/z/s$b;

    iget-object p1, p1, Le/a/r/z/s$b;->h:Le/a/r/z/s;

    iget-object v0, p0, Le/a/r/z/s$b$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/r/a;

    const-string v1, "SendOnboardingOTP"

    invoke-static {p1, v0, v1}, Le/a/r/z/s;->Ij(Le/a/r/z/s;Le/a/r/r/a;Ljava/lang/String;)V

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
