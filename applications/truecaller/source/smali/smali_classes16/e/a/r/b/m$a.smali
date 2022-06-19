.class public final Le/a/r/b/m$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b/m;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.adschoices.BaseAdsChoicesPresenter$onAttachView$3$1"
    f = "BaseAdsChoicesPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/b/m;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/r/b/m;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iput-object p2, p0, Le/a/r/b/m$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/r/b/m$a;

    iget-object v0, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object v1, p0, Le/a/r/b/m$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/b/m$a;-><init>(Le/a/r/b/m;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/b/m$a;

    iget-object v0, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object v1, p0, Le/a/r/b/m$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/b/m$a;-><init>(Le/a/r/b/m;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/b/m$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object p1, p1, Le/a/r/b/m;->g:Le/a/r/b/i;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/r/b/i;->f(Z)V

    .line 3
    iget-object p1, p0, Le/a/r/b/m$a;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object p1, p1, Le/a/r/b/m;->g:Le/a/r/b/i;

    invoke-interface {p1}, Le/a/r/b/i;->F5()V

    .line 5
    iget-object p1, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object p1, p1, Le/a/r/b/m;->f:Le/a/r/b/n;

    invoke-virtual {p1}, Le/a/r/b/n;->Mj()V

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v1, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object v1, v1, Le/a/r/b/m;->f:Le/a/r/b/n;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/truecaller/wizard/adschoices/AdsChoice;->values()[Lcom/truecaller/wizard/adschoices/AdsChoice;

    move-result-object v8

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_7

    aget-object v3, v8, v0

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/wizard/adschoices/AdsChoice;->getAccessDto()Ls1/z/b/l;

    move-result-object v2

    invoke-interface {v2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v1}, Le/a/r/b/n;->Jj()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getConsentRefresh()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    .line 11
    invoke-static/range {v2 .. v7}, Le/a/r/b/n;->Qj(Le/a/r/b/n;Lcom/truecaller/wizard/adschoices/AdsChoice;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v1}, Le/a/r/b/n;->Jj()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Le/a/r/b/n;->j:Le/a/b0/e/f;

    invoke-interface {v2}, Le/a/b0/e/f;->d()Z

    move-result v2

    if-nez v2, :cond_6

    .line 13
    invoke-virtual {v1, v3, v4}, Le/a/r/b/n;->Oj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    .line 14
    invoke-static/range {v2 .. v7}, Le/a/r/b/n;->Qj(Le/a/r/b/n;Lcom/truecaller/wizard/adschoices/AdsChoice;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    .line 15
    invoke-static/range {v2 .. v7}, Le/a/r/b/n;->Qj(Le/a/r/b/n;Lcom/truecaller/wizard/adschoices/AdsChoice;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    .line 16
    invoke-static/range {v2 .. v7}, Le/a/r/b/n;->Qj(Le/a/r/b/n;Lcom/truecaller/wizard/adschoices/AdsChoice;ZZILjava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_7
    :goto_2
    iget-object p1, p0, Le/a/r/b/m$a;->e:Le/a/r/b/m;

    iget-object p1, p1, Le/a/r/b/m;->f:Le/a/r/b/n;

    .line 18
    invoke-virtual {p1}, Le/a/r/b/n;->Rj()V

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
