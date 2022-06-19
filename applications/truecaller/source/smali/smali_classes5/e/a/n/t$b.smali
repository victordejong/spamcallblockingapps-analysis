.class public final Le/a/n/t$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/t;->b2()Lq3/a/p1;
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
    c = "com.truecaller.backup.BackupOnboardingPresenter$onSMSPermissionPromptPositive$1"
    f = "BackupOnboardingPresenter.kt"
    l = {
        0x6b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/n/t;


# direct methods
.method public constructor <init>(Le/a/n/t;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/t$b;->f:Le/a/n/t;

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

    new-instance p1, Le/a/n/t$b;

    iget-object v0, p0, Le/a/n/t$b;->f:Le/a/n/t;

    invoke-direct {p1, v0, p2}, Le/a/n/t$b;-><init>(Le/a/n/t;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/t$b;

    iget-object v0, p0, Le/a/n/t$b;->f:Le/a/n/t;

    invoke-direct {p1, v0, p2}, Le/a/n/t$b;-><init>(Le/a/n/t;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/t$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/n/t$b;->e:I

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
    iget-object p1, p0, Le/a/n/t$b;->f:Le/a/n/t;

    sget-object v1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    .line 5
    sget-object v3, Le/a/n/t;->l:[Ls1/a/l;

    .line 6
    invoke-virtual {p1, v1}, Le/a/n/t;->Hj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 7
    iget-object p1, p0, Le/a/n/t$b;->f:Le/a/n/t;

    .line 8
    iget-object v1, p1, Le/a/n/t;->j:Le/a/h5/y;

    .line 9
    iget-object p1, p1, Le/a/n/t;->h:Le/a/h5/w;

    .line 10
    invoke-interface {p1}, Le/a/h5/w;->a()[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput v2, p0, Le/a/n/t$b;->e:I

    invoke-interface {v1, p1, p0}, Le/a/h5/y;->f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 11
    :cond_2
    :goto_0
    sget-object v0, Le/a/n/t;->l:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast p1, Le/a/h5/l;

    invoke-virtual {p1, v0}, Le/a/h5/l;->a(Ls1/a/l;)Z

    .line 12
    iget-object p1, p0, Le/a/n/t$b;->f:Le/a/n/t;

    .line 13
    invoke-virtual {p1}, Le/a/n/t;->Jj()V

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
