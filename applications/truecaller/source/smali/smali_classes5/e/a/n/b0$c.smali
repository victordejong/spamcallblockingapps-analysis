.class public final Le/a/n/b0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b0;->r2(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lq3/a/n0;
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
    c = "com.truecaller.backup.BackupSettingsPresenter$onAccountOptionSelected$1"
    f = "BackupSettingsPresenter.kt"
    l = {
        0xb8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/n/b0;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/n/b0;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    iput-object p2, p0, Le/a/n/b0$c;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/n/b0$c;->h:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/n/b0$c;

    iget-object v0, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    iget-object v1, p0, Le/a/n/b0$c;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/n/b0$c;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/n/b0$c;-><init>(Le/a/n/b0;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/b0$c;

    iget-object v0, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    iget-object v1, p0, Le/a/n/b0$c;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/n/b0$c;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/n/b0$c;-><init>(Le/a/n/b0;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/b0$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/n/b0$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/n/b0$c;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    .line 6
    iget-object p1, p1, Le/a/n/b0;->h:Le/a/n/m;

    .line 7
    iget-object v2, p0, Le/a/n/b0$c;->h:Landroidx/fragment/app/Fragment;

    iput v3, p0, Le/a/n/b0$c;->e:I

    invoke-interface {p1, v2, p0}, Le/a/n/m;->c(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    .line 9
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "key_backup_last_success"

    .line 10
    invoke-interface {p1, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;->ACCOUNT_CHANGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;

    const-string v2, "settings_screen"

    invoke-virtual {p1, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->a(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v1, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    .line 12
    iget-object v1, v1, Le/a/n/b0;->k:Le/a/q2/a;

    .line 13
    invoke-static {p1, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    .line 15
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const/4 v1, 0x0

    const-string v2, "backup_enabled"

    .line 16
    invoke-interface {p1, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    :goto_1
    iget-object p1, p0, Le/a/n/b0$c;->f:Le/a/n/b0;

    .line 18
    sget-object v1, Le/a/n/b0;->p:[Ls1/a/l;

    .line 19
    invoke-virtual {p1}, Le/a/n/b0;->Jj()Lq3/a/p1;

    return-object v0
.end method
