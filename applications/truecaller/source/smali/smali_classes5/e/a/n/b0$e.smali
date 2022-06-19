.class public final Le/a/n/b0$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/b0;->te()Lq3/a/p1;
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
    c = "com.truecaller.backup.BackupSettingsPresenter$onSmsPermissionButtonPressed$1"
    f = "BackupSettingsPresenter.kt"
    l = {
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/n/b0;


# direct methods
.method public constructor <init>(Le/a/n/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

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

    new-instance p1, Le/a/n/b0$e;

    iget-object v0, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/b0$e;-><init>(Le/a/n/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/b0$e;

    iget-object v0, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    invoke-direct {p1, v0, p2}, Le/a/n/b0$e;-><init>(Le/a/n/b0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/n/b0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/n/b0$e;->e:I

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
    iget-object p1, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    .line 5
    iget-object v2, p1, Le/a/n/b0;->o:Le/a/h5/y;

    .line 6
    iget-object p1, p1, Le/a/n/b0;->m:Le/a/h5/w;

    .line 7
    invoke-interface {p1}, Le/a/h5/w;->a()[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput v3, p0, Le/a/n/b0$e;->e:I

    invoke-interface {v2, p1, p0}, Le/a/h5/y;->f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 8
    :cond_2
    :goto_0
    sget-object v1, Le/a/n/b0;->p:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast p1, Le/a/h5/l;

    invoke-virtual {p1, v1}, Le/a/h5/l;->a(Ls1/a/l;)Z

    .line 9
    invoke-virtual {p1, v1}, Le/a/h5/l;->a(Ls1/a/l;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    .line 10
    iget-object p1, p1, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "backup_enabled"

    .line 11
    invoke-interface {p1, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1, v2}, Le/a/n/z;->Nt(Z)V

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    .line 16
    iget-object p1, p1, Le/a/n/b0;->n:Le/a/a/i0;

    const-wide/16 v1, 0x0

    .line 17
    invoke-interface {p1, v1, v2}, Le/a/a/i0;->b4(J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_5

    iget-object p1, p0, Le/a/n/b0$e;->f:Le/a/n/b0;

    .line 18
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1}, Le/a/n/z;->wm()V

    :cond_5
    :goto_1
    return-object v0
.end method
