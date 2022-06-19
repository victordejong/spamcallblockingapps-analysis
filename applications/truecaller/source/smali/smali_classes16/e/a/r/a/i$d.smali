.class public final Le/a/r/a/i$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/i;->Ij(Landroidx/fragment/app/Fragment;)V
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
    c = "com.truecaller.wizard.backup.WizardRestoreBackupPresenter$onChangeAccountSelected$1"
    f = "WizardRestoreBackupPresenter.kt"
    l = {
        0xe0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a/i;

.field public final synthetic g:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/i$d;->f:Le/a/r/a/i;

    iput-object p2, p0, Le/a/r/a/i$d;->g:Landroidx/fragment/app/Fragment;

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

    new-instance p1, Le/a/r/a/i$d;

    iget-object v0, p0, Le/a/r/a/i$d;->f:Le/a/r/a/i;

    iget-object v1, p0, Le/a/r/a/i$d;->g:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/i$d;-><init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a/i$d;

    iget-object v0, p0, Le/a/r/a/i$d;->f:Le/a/r/a/i;

    iget-object v1, p0, Le/a/r/a/i$d;->g:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/i$d;-><init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a/i$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a/i$d;->e:I

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
    iget-object p1, p0, Le/a/r/a/i$d;->f:Le/a/r/a/i;

    .line 5
    iget-object p1, p1, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;->ACTION_ACCOUNT_CHANCED:Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;

    invoke-virtual {p1, v1}, Le/a/r/a/d;->a(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V

    .line 8
    iget-object p1, p0, Le/a/r/a/i$d;->f:Le/a/r/a/i;

    .line 9
    iget-object p1, p1, Le/a/r/a/i;->g:Le/a/n/m;

    .line 10
    iput v2, p0, Le/a/r/a/i$d;->e:I

    invoke-interface {p1, p0}, Le/a/n/m;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/r/a/i$d;->f:Le/a/r/a/i;

    iget-object v0, p0, Le/a/r/a/i$d;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Le/a/r/a/i;->Jj(Landroidx/fragment/app/Fragment;)V

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
