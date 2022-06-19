.class public final Le/a/e3/k/q$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/q;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.call_alert.utils.CallSilenceHelperImpl$shouldSilenceRingtone$2"
    f = "CallSilenceHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e3/k/q;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e3/k/q;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    iput-object p2, p0, Le/a/e3/k/q$a;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/e3/k/q$a;

    iget-object v0, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    iget-object v1, p0, Le/a/e3/k/q$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/e3/k/q$a;-><init>(Le/a/e3/k/q;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    iget-object v0, p0, Le/a/e3/k/q$a;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/e3/k/q;->d:Le/a/b0/q/z;

    .line 6
    invoke-interface {p2, v0}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    iget-object v0, p1, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    const-string v2, "callSilenceNormalizedNumber"

    .line 8
    invoke-interface {v0, v2}, Le/a/e3/k/f;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p1, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    const-wide/16 v3, 0x0

    const-string v5, "callSilenceTimestamp"

    .line 10
    invoke-interface {v1, v5, v3, v4}, Le/a/e3/k/f;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 11
    iget-object v1, p1, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    invoke-interface {v1, v2}, Le/a/e3/k/f;->remove(Ljava/lang/String;)V

    .line 12
    iget-object v1, p1, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    invoke-interface {v1, v5}, Le/a/e3/k/f;->remove(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v1, "Calendar.getInstance()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const p1, 0x493e0

    int-to-long v5, p1

    sub-long/2addr v1, v5

    cmp-long p1, v3, v1

    if-ltz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 16
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    .line 3
    iget-object p1, p1, Le/a/e3/k/q;->d:Le/a/b0/q/z;

    .line 4
    iget-object v1, p0, Le/a/e3/k/q$a;->f:Ljava/lang/String;

    invoke-interface {p1, v1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v1, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    .line 6
    iget-object v1, v1, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    const-string v2, "callSilenceNormalizedNumber"

    .line 7
    invoke-interface {v1, v2}, Le/a/e3/k/f;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    .line 9
    iget-object v0, v0, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    const-wide/16 v3, 0x0

    const-string v5, "callSilenceTimestamp"

    .line 10
    invoke-interface {v0, v5, v3, v4}, Le/a/e3/k/f;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 11
    iget-object v0, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    .line 12
    iget-object v6, v0, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    invoke-interface {v6, v2}, Le/a/e3/k/f;->remove(Ljava/lang/String;)V

    .line 13
    iget-object v0, v0, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    invoke-interface {v0, v5}, Le/a/e3/k/f;->remove(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le/a/e3/k/q$a;->e:Le/a/e3/k/q;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v2, "Calendar.getInstance()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const p1, 0x493e0

    int-to-long v7, p1

    sub-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 18
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method
