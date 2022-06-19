.class public final Le/a/n/b0$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b0;->Jj()Lq3/a/p1;
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
    c = "com.truecaller.backup.BackupSettingsPresenter$reflectSettingsState$1"
    f = "BackupSettingsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/n/b0;


# direct methods
.method public constructor <init>(Le/a/n/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

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

    new-instance p1, Le/a/n/b0$f;

    iget-object v0, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/b0$f;-><init>(Le/a/n/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/b0$f;

    iget-object v0, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/b0$f;-><init>(Le/a/n/b0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/b0$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 3
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "backup_enabled"

    .line 4
    invoke-interface {p1, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 5
    iget-object v1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 6
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Le/a/n/z;->Qm(Z)V

    .line 8
    :cond_0
    iget-object v1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 9
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1, p1}, Le/a/n/z;->Wj(Z)V

    .line 11
    :cond_1
    iget-object v1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 12
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1, p1}, Le/a/n/z;->i8(Z)V

    .line 14
    :cond_2
    iget-object v1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 15
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_3

    .line 16
    invoke-interface {v1, p1}, Le/a/n/z;->mj(Z)V

    .line 17
    :cond_3
    iget-object v1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 18
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_4

    .line 19
    invoke-interface {v1, p1}, Le/a/n/z;->eb(Z)V

    .line 20
    :cond_4
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 21
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "backup_videos_enabled"

    .line 22
    invoke-interface {p1, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 23
    iget-object v1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 24
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_5

    .line 25
    invoke-interface {v1, p1}, Le/a/n/z;->Ct(Z)V

    .line 26
    :cond_5
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 27
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-wide/16 v6, -0x1

    const-string v1, "key_backup_last_success"

    .line 28
    invoke-interface {p1, v1, v6, v7}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long p1, v1, v6

    const/4 v8, 0x0

    if-nez p1, :cond_6

    .line 29
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 30
    iget-object v1, p1, Le/a/n/b0;->f:Ls1/w/f;

    iget-object v2, p1, Le/a/n/b0;->b:Lq3/a/y;

    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    new-instance v3, Le/a/n/a0;

    invoke-direct {v3, p1, v8}, Le/a/n/a0;-><init>(Le/a/n/b0;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    goto :goto_0

    .line 31
    :cond_6
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 32
    iget-object v3, p1, Le/a/n/b0;->g:Ls1/w/f;

    new-instance v4, Le/a/n/c0;

    invoke-direct {v4, p1, v1, v2, v8}, Le/a/n/c0;-><init>(Le/a/n/b0;JLs1/w/d;)V

    const/4 p1, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 33
    :goto_0
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 34
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v0, "key_backup_frequency_hours"

    .line 35
    invoke-interface {p1, v0, v6, v7}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_7

    .line 36
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 37
    iget-object p1, p1, Le/a/n/b0;->c:Ljava/util/List;

    .line 38
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    goto :goto_1

    :cond_7
    const-wide/16 v5, 0x18

    cmp-long p1, v0, v5

    if-nez p1, :cond_8

    .line 39
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 40
    iget-object p1, p1, Le/a/n/b0;->c:Ljava/util/List;

    .line 41
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    goto :goto_1

    :cond_8
    const-wide/16 v5, 0xa8

    cmp-long p1, v0, v5

    if-nez p1, :cond_9

    .line 42
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 43
    iget-object p1, p1, Le/a/n/b0;->c:Ljava/util/List;

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    goto :goto_1

    :cond_9
    const-wide/16 v5, 0x2d0

    cmp-long p1, v0, v5

    if-nez p1, :cond_a

    .line 45
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 46
    iget-object p1, p1, Le/a/n/b0;->c:Ljava/util/List;

    const/4 v0, 0x3

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    goto :goto_1

    .line 48
    :cond_a
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 49
    iget-object p1, p1, Le/a/n/b0;->c:Ljava/util/List;

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    .line 51
    :goto_1
    iget-object v0, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 52
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_b

    .line 53
    iget-object v0, v0, Le/a/n/b0;->c:Ljava/util/List;

    .line 54
    invoke-interface {v1, v0, p1}, Le/a/n/z;->zc(Ljava/util/List;Le/a/e/c2/i0;)V

    .line 55
    :cond_b
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 56
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v0, "backupNetworkType"

    .line 57
    invoke-interface {p1, v0, v3}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_c

    .line 58
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 59
    iget-object p1, p1, Le/a/n/b0;->d:Ljava/util/List;

    .line 60
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    goto :goto_2

    .line 61
    :cond_c
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 62
    iget-object p1, p1, Le/a/n/b0;->d:Ljava/util/List;

    .line 63
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/c2/i0;

    .line 64
    :goto_2
    iget-object v0, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 65
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_d

    .line 66
    iget-object v0, v0, Le/a/n/b0;->d:Ljava/util/List;

    .line 67
    invoke-interface {v1, v0, p1}, Le/a/n/z;->Iy(Ljava/util/List;Le/a/e/c2/i0;)V

    .line 68
    :cond_d
    iget-object p1, p0, Le/a/n/b0$f;->e:Le/a/n/b0;

    .line 69
    iget-object v0, p1, Le/a/n/b0;->e:Landroid/content/Context;

    const v1, 0x7f12088e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "presenterContext.getStri\u2026s_account_change_account)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Le/a/n/z;->O0()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_e
    move-object v1, v8

    .line 71
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v3, Le/a/e/c2/i0;

    const-string v5, ""

    invoke-direct {v3, v4, v0, v8, v5}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_f

    move-object v0, v3

    goto :goto_4

    .line 73
    :cond_f
    new-instance v0, Le/a/e/c2/i0;

    invoke-direct {v0, v4, v1, v8, v1}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_10

    invoke-interface {p1, v2, v0}, Le/a/n/z;->yh(Ljava/util/List;Le/a/e/c2/i0;)V

    .line 77
    :cond_10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
