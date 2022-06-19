.class public final Le/a/r/z/s$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/s$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.verification.VerificationPresenterImpl$verifyToken$2$1"
    f = "VerificationPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/z/s$c;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/r/z/s$c;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/s$c$a;->e:Le/a/r/z/s$c;

    iput-object p2, p0, Le/a/r/z/s$c$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/r/z/s$c$a;

    iget-object v0, p0, Le/a/r/z/s$c$a;->e:Le/a/r/z/s$c;

    iget-object v1, p0, Le/a/r/z/s$c$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/z/s$c$a;-><init>(Le/a/r/z/s$c;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    move-object/from16 v2, p2

    check-cast v2, Ls1/w/d;

    const-string v3, "completion"

    .line 1
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Le/a/r/z/s$c$a;->e:Le/a/r/z/s$c;

    iget-object v4, v0, Le/a/r/z/s$c$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {v2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v3, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    .line 5
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/z/y;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    const/4 v7, 0x2

    .line 6
    invoke-static {v2, v6, v6, v7, v5}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    .line 7
    :cond_0
    iget-object v2, v3, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    iget-object v7, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v7, Le/a/r/r/a;

    iget-object v8, v3, Le/a/r/z/s$c;->j:Ls1/z/c/c0;

    iget-object v8, v8, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/account/network/SimDto;

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move v15, v9

    goto :goto_0

    :cond_1
    move v15, v6

    .line 8
    :goto_0
    iget-object v8, v2, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    if-eqz v7, :cond_2

    .line 9
    iget-object v5, v7, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    :cond_2
    if-eqz v5, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v6

    .line 10
    :goto_1
    invoke-static {v7}, Le/a/p5/s0/g;->e0(Le/a/r/r/a;)Ljava/lang/Integer;

    move-result-object v12

    .line 11
    iget-object v13, v2, Le/a/r/z/s;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v13}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v14

    .line 13
    check-cast v8, Le/a/r/z/d0/e;

    .line 14
    iget-object v2, v8, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v5, Le/a/r/z/d0/j;

    iget-object v6, v8, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    move-object v10, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Le/a/r/z/d0/j;-><init>(ZLjava/lang/Integer;Ljava/lang/String;ZZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v2, v5}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 15
    iget-object v2, v3, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    iget-object v3, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Le/a/r/r/a;

    const-string v4, "VerifyOnboardingOTP"

    invoke-static {v2, v3, v4}, Le/a/r/z/s;->Ij(Le/a/r/z/s;Le/a/r/r/a;Ljava/lang/String;)V

    return-object v1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r/z/s$c$a;->e:Le/a/r/z/s$c;

    iget-object p1, p1, Le/a/r/z/s$c;->h:Le/a/r/z/s;

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
    iget-object p1, p0, Le/a/r/z/s$c$a;->e:Le/a/r/z/s$c;

    iget-object v2, p1, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    iget-object v3, p0, Le/a/r/z/s$c$a;->f:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Le/a/r/r/a;

    iget-object p1, p1, Le/a/r/z/s$c;->j:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/account/network/SimDto;

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v1

    .line 6
    :goto_0
    iget-object p1, v2, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    if-eqz v3, :cond_2

    .line 7
    iget-object v0, v3, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    :cond_2
    if-eqz v0, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v1

    .line 8
    :goto_1
    invoke-static {v3}, Le/a/p5/s0/g;->e0(Le/a/r/r/a;)Ljava/lang/Integer;

    move-result-object v7

    .line 9
    iget-object v8, v2, Le/a/r/z/s;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v8}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v9

    .line 11
    check-cast p1, Le/a/r/z/d0/e;

    .line 12
    iget-object v0, p1, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v1, Le/a/r/z/d0/j;

    iget-object v11, p1, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Le/a/r/z/d0/j;-><init>(ZLjava/lang/Integer;Ljava/lang/String;ZZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 13
    iget-object p1, p0, Le/a/r/z/s$c$a;->e:Le/a/r/z/s$c;

    iget-object p1, p1, Le/a/r/z/s$c;->h:Le/a/r/z/s;

    iget-object v0, p0, Le/a/r/z/s$c$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/r/a;

    const-string v1, "VerifyOnboardingOTP"

    invoke-static {p1, v0, v1}, Le/a/r/z/s;->Ij(Le/a/r/z/s;Le/a/r/r/a;Ljava/lang/String;)V

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
