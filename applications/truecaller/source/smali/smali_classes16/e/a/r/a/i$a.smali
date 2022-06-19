.class public final Le/a/r/a/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/i;->Kj(Ljava/lang/String;)V
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
    c = "com.truecaller.wizard.backup.WizardRestoreBackupPresenter$complete$1"
    f = "WizardRestoreBackupPresenter.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a/i;

.field public final synthetic g:Lcom/truecaller/account/network/CompleteOnboardingDto;


# direct methods
.method public constructor <init>(Le/a/r/a/i;Lcom/truecaller/account/network/CompleteOnboardingDto;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    iput-object p2, p0, Le/a/r/a/i$a;->g:Lcom/truecaller/account/network/CompleteOnboardingDto;

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

    new-instance p1, Le/a/r/a/i$a;

    iget-object v0, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    iget-object v1, p0, Le/a/r/a/i$a;->g:Lcom/truecaller/account/network/CompleteOnboardingDto;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/i$a;-><init>(Le/a/r/a/i;Lcom/truecaller/account/network/CompleteOnboardingDto;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a/i$a;

    iget-object v0, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    iget-object v1, p0, Le/a/r/a/i$a;->g:Lcom/truecaller/account/network/CompleteOnboardingDto;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/i$a;-><init>(Le/a/r/a/i;Lcom/truecaller/account/network/CompleteOnboardingDto;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a/i$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a/i$a;->e:I

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
    iget-object p1, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 5
    iget-object p1, p1, Le/a/r/a/i;->f:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/r/a/i$a$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/r/a/i$a$a;-><init>(Le/a/r/a/i$a;Ls1/w/d;)V

    iput v2, p0, Le/a/r/a/i$a;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/r/r/a;

    if-nez p1, :cond_5

    .line 8
    iget-object p1, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 9
    iget-object p1, p1, Le/a/r/a/i;->m:Le/a/r/a/d;

    const-string v0, "ConnectionError"

    .line 10
    invoke-virtual {p1, v0}, Le/a/r/a/d;->b(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 12
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/a/h;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/r/a/h;->pp()V

    .line 13
    :cond_3
    iget-object v0, p1, Le/a/r/a/i;->j:Le/a/n/e;

    invoke-interface {v0}, Le/a/n/e;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p1, Le/a/r/a/i;->l:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->i()V

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/h;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/r/a/h;->d0()V

    goto/16 :goto_2

    .line 16
    :cond_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/h;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/r/a/h;->p()V

    goto :goto_2

    .line 17
    :cond_5
    iget-object v0, p1, Le/a/r/r/a;->b:Lcom/truecaller/account/network/TokenErrorResponseDto;

    if-eqz v0, :cond_6

    .line 18
    iget-object p1, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 19
    iget-object p1, p1, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getStatus()I

    move-result v0

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/r/a/d;->b(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 24
    invoke-virtual {p1}, Le/a/r/a/i;->Nj()V

    goto :goto_2

    .line 25
    :cond_6
    iget-object p1, p1, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    if-eqz p1, :cond_8

    .line 26
    iget-object v0, p0, Le/a/r/a/i$a;->f:Le/a/r/a/i;

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 29
    iget-object v1, v0, Le/a/r/a/i;->m:Le/a/r/a/d;

    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getStatus()I

    move-result p1

    goto :goto_1

    .line 30
    :pswitch_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/h;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/r/a/h;->p()V

    .line 31
    :cond_7
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a/h;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/r/a/h;->Tx()V

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, p1, v1}, Le/a/r/a/i;->Oj(Lcom/truecaller/account/network/TokenResponseDto;Z)Lq3/a/p1;

    goto :goto_2

    .line 33
    :pswitch_2
    invoke-virtual {v0, p1, v2}, Le/a/r/a/i;->Oj(Lcom/truecaller/account/network/TokenResponseDto;Z)Lq3/a/p1;

    goto :goto_2

    .line 34
    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/r/a/d;->b(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Le/a/r/a/i;->Nj()V

    .line 37
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
