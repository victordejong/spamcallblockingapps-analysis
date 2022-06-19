.class public final Le/a/n/b0$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b0;->xh()V
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
    c = "com.truecaller.backup.BackupSettingsPresenter$onBackupNowPressed$1"
    f = "BackupSettingsPresenter.kt"
    l = {
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/n/b0;


# direct methods
.method public constructor <init>(Le/a/n/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

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

    new-instance p1, Le/a/n/b0$d;

    iget-object v0, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/b0$d;-><init>(Le/a/n/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/b0$d;

    iget-object v0, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/b0$d;-><init>(Le/a/n/b0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/b0$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/n/b0$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;->BACKUP_NOW:Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;

    const-string v4, "settings_screen"

    invoke-virtual {p1, v4, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->a(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v2, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    .line 5
    iget-object v2, v2, Le/a/n/b0;->k:Le/a/q2/a;

    .line 6
    invoke-static {p1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 7
    iget-object p1, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    .line 8
    iget-object p1, p1, Le/a/n/b0;->i:Le/a/p5/u;

    .line 9
    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Le/a/n/z;->t1()V

    :cond_2
    return-object v0

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge p1, v2, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    iput v3, p0, Le/a/n/b0$d;->e:I

    invoke-virtual {p1, p0}, Le/a/n/b0;->Lj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    :cond_6
    iget-object p1, p0, Le/a/n/b0$d;->f:Le/a/n/b0;

    .line 18
    sget-object v1, Le/a/n/b0;->p:[Ls1/a/l;

    .line 19
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_7

    .line 20
    invoke-interface {p1}, Le/a/n/z;->Hm()V

    :cond_7
    return-object v0
.end method
