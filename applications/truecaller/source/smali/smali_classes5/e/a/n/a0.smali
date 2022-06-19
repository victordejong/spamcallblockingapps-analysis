.class public final Le/a/n/a0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lq3/a/p1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.BackupSettingsPresenter$fetchLastBackupTime$1"
    f = "BackupSettingsPresenter.kt"
    l = {
        0xfc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/n/b0;


# direct methods
.method public constructor <init>(Le/a/n/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/a0;->f:Le/a/n/b0;

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

    new-instance p1, Le/a/n/a0;

    iget-object v0, p0, Le/a/n/a0;->f:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/a0;-><init>(Le/a/n/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/a0;

    iget-object v0, p0, Le/a/n/a0;->f:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/a0;-><init>(Le/a/n/b0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/n/a0;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/n/a0;->f:Le/a/n/b0;

    .line 5
    iget-object p1, p1, Le/a/n/b0;->h:Le/a/n/m;

    .line 6
    iput v3, p0, Le/a/n/a0;->e:I

    invoke-static {p1, v2, p0, v3, v2}, Le/m/d/y/n;->S(Le/a/n/m;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 7
    iget-object p1, p0, Le/a/n/a0;->f:Le/a/n/b0;

    .line 8
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v3, "key_backup_last_success"

    .line 9
    invoke-interface {p1, v3, v0, v1}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 10
    iget-object p1, p0, Le/a/n/a0;->f:Le/a/n/b0;

    .line 11
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v4, p1, Le/a/n/b0;->g:Ls1/w/f;

    new-instance v6, Le/a/n/c0;

    invoke-direct {v6, p1, v0, v1, v2}, Le/a/n/c0;-><init>(Le/a/n/b0;JLs1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method
