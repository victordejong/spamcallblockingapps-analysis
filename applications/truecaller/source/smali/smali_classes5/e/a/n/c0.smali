.class public final Le/a/n/c0;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.BackupSettingsPresenter$showLastBackupTime$1"
    f = "BackupSettingsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/n/b0;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Le/a/n/b0;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c0;->e:Le/a/n/b0;

    iput-wide p2, p0, Le/a/n/c0;->f:J

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

    new-instance p1, Le/a/n/c0;

    iget-object v0, p0, Le/a/n/c0;->e:Le/a/n/b0;

    iget-wide v1, p0, Le/a/n/c0;->f:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/n/c0;-><init>(Le/a/n/b0;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/n/c0;->e:Le/a/n/b0;

    iget-wide v1, p0, Le/a/n/c0;->f:J

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 5
    iget-object v1, v0, Le/a/n/b0;->e:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, v0, Le/a/n/b0;->e:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v2, v0, Le/a/n/b0;->e:Landroid/content/Context;

    const v3, 0x7f12089b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p2, v4, v1

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "presenterContext.getStri\u2026_last_backup, date, time)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/z;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, p2}, Le/a/n/z;->Ul(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p2, Le/a/n/b0;->p:[Ls1/a/l;

    .line 14
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/n/z;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 15
    invoke-interface {p2, v0}, Le/a/n/z;->Ul(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Le/a/n/c0;->f:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/Date;

    iget-wide v0, p0, Le/a/n/c0;->f:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 4
    iget-object v0, p0, Le/a/n/c0;->e:Le/a/n/b0;

    .line 5
    iget-object v0, v0, Le/a/n/b0;->e:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/n/c0;->e:Le/a/n/b0;

    .line 8
    iget-object v1, v1, Le/a/n/b0;->e:Landroid/content/Context;

    .line 9
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v1, p0, Le/a/n/c0;->e:Le/a/n/b0;

    .line 11
    iget-object v1, v1, Le/a/n/b0;->e:Landroid/content/Context;

    const v2, 0x7f12089b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "presenterContext.getStri\u2026_last_backup, date, time)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/a/n/c0;->e:Le/a/n/b0;

    .line 14
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/z;

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0, p1}, Le/a/n/z;->Ul(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Le/a/n/c0;->e:Le/a/n/b0;

    .line 17
    sget-object v0, Le/a/n/b0;->p:[Ls1/a/l;

    .line 18
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Le/a/n/z;->Ul(Ljava/lang/String;)V

    .line 20
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
