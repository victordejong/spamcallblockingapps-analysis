.class public final Le/a/n/b0$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b0;->z8(Landroidx/fragment/app/Fragment;Z)Lq3/a/n0;
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
    c = "com.truecaller.backup.BackupSettingsPresenter$toggleBackup$1"
    f = "BackupSettingsPresenter.kt"
    l = {
        0x69,
        0x6c,
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/n/b0;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/n/b0;ZLandroidx/fragment/app/Fragment;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    iput-boolean p2, p0, Le/a/n/b0$h;->g:Z

    iput-object p3, p0, Le/a/n/b0$h;->h:Landroidx/fragment/app/Fragment;

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

    new-instance p1, Le/a/n/b0$h;

    iget-object v0, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    iget-boolean v1, p0, Le/a/n/b0$h;->g:Z

    iget-object v2, p0, Le/a/n/b0$h;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/n/b0$h;-><init>(Le/a/n/b0;ZLandroidx/fragment/app/Fragment;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/b0$h;

    iget-object v0, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    iget-boolean v1, p0, Le/a/n/b0$h;->g:Z

    iget-object v2, p0, Le/a/n/b0$h;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/n/b0$h;-><init>(Le/a/n/b0;ZLandroidx/fragment/app/Fragment;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/b0$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/n/b0$h;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "backup_enabled"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 5
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    .line 6
    invoke-interface {p1, v5}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 7
    iget-boolean v2, p0, Le/a/n/b0$h;->g:Z

    if-ne p1, v2, :cond_4

    return-object v0

    :cond_4
    if-eqz v2, :cond_11

    .line 8
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {p1}, Le/a/n/z;->i()V

    .line 11
    :cond_5
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 12
    iget-object p1, p1, Le/a/n/b0;->h:Le/a/n/m;

    .line 13
    iget-object v2, p0, Le/a/n/b0$h;->h:Landroidx/fragment/app/Fragment;

    iput v6, p0, Le/a/n/b0$h;->e:I

    invoke-interface {p1, v2, p0}, Le/a/n/m;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 14
    iget-object v2, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 15
    sget-object v8, Le/a/n/b0;->p:[Ls1/a/l;

    .line 16
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/n/z;

    if-eqz v2, :cond_7

    .line 17
    invoke-interface {v2}, Le/a/n/z;->p()V

    :cond_7
    if-eqz p1, :cond_10

    .line 18
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge p1, v2, :cond_8

    move p1, v6

    goto :goto_1

    :cond_8
    move p1, v7

    :goto_1
    if-eqz p1, :cond_a

    .line 21
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    iput v4, p0, Le/a/n/b0$h;->e:I

    invoke-virtual {p1, p0}, Le/a/n/b0;->Lj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    :cond_a
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    iput v3, p0, Le/a/n/b0$h;->e:I

    invoke-virtual {p1, p0}, Le/a/n/b0;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 23
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 24
    sget-object v1, Le/a/n/b0;->p:[Ls1/a/l;

    .line 25
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_c

    .line 26
    invoke-interface {p1, v7}, Le/a/n/z;->Qm(Z)V

    :cond_c
    return-object v0

    .line 27
    :cond_d
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 28
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    .line 29
    invoke-interface {p1, v5, v6}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 31
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-wide/16 v1, -0x1

    const-string v3, "key_backup_frequency_hours"

    .line 32
    invoke-interface {p1, v3, v1, v2}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_e

    .line 33
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    const-wide/16 v1, 0xa8

    invoke-virtual {p1, v1, v2}, Le/a/n/b0;->rj(J)V

    .line 34
    :cond_e
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 35
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_f

    .line 36
    invoke-interface {p1}, Le/a/n/z;->wm()V

    .line 37
    :cond_f
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    invoke-static {p1, v6}, Le/a/n/b0;->Hj(Le/a/n/b0;Z)V

    .line 38
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 39
    invoke-virtual {p1}, Le/a/n/b0;->Jj()Lq3/a/p1;

    goto :goto_4

    .line 40
    :cond_10
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 41
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_12

    .line 42
    invoke-interface {p1, v7}, Le/a/n/z;->Qm(Z)V

    goto :goto_4

    .line 43
    :cond_11
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 44
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    .line 45
    invoke-interface {p1, v5, v7}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 47
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "backup_videos_enabled"

    .line 48
    invoke-interface {p1, v1, v7}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    invoke-static {p1, v7}, Le/a/n/b0;->Hj(Le/a/n/b0;Z)V

    .line 50
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 51
    invoke-virtual {p1}, Le/a/n/b0;->Jj()Lq3/a/p1;

    .line 52
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 53
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_12

    .line 54
    invoke-interface {p1}, Le/a/n/z;->hq()V

    .line 55
    invoke-interface {p1, v7}, Le/a/n/z;->Ct(Z)V

    .line 56
    :cond_12
    :goto_4
    iget-object p1, p0, Le/a/n/b0$h;->f:Le/a/n/b0;

    .line 57
    sget-object v1, Le/a/n/b0;->p:[Ls1/a/l;

    .line 58
    invoke-virtual {p1}, Le/a/n/b0;->Kj()V

    return-object v0
.end method
