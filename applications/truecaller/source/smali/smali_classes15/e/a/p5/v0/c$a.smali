.class public final Le/a/p5/v0/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/v0/c;->e(Ljava/lang/Integer;)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Le/a/p5/v0/a;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.utils.telephony.TelephonyUtilImpl$callStates$1"
    f = "TelephonyUtil.kt"
    l = {
        0x53,
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/p5/v0/c;

.field public final synthetic i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/p5/v0/c;Ljava/lang/Integer;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    iput-object p2, p0, Le/a/p5/v0/c$a;->i:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/v0/c$a;

    iget-object v1, p0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    iget-object v2, p0, Le/a/p5/v0/c$a;->i:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p2}, Le/a/p5/v0/c$a;-><init>(Le/a/p5/v0/c;Ljava/lang/Integer;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/v0/c$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/v0/c$a;

    iget-object v1, p0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    iget-object v2, p0, Le/a/p5/v0/c$a;->i:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p2}, Le/a/p5/v0/c$a;-><init>(Le/a/p5/v0/c;Ljava/lang/Integer;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/v0/c$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/p5/v0/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/p5/v0/c$a;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/p5/v0/c$a;->f:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Le/a/p5/v0/c$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/p5/v0/c$a;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/w2/x;

    .line 4
    iget-object p1, p0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    iget-object v6, p0, Le/a/p5/v0/c$a;->i:Ljava/lang/Integer;

    .line 5
    iget-object p1, p1, Le/a/p5/v0/c;->b:Landroid/content/Context;

    invoke-static {p1}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v7, 0x18

    if-lt v0, v7, :cond_4

    .line 6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const-string v6, "telephonyManager.createF\u2026riptionId(subscriptionId)"

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :cond_4
    :goto_0
    new-instance v6, Le/a/p5/v0/c$a$d;

    invoke-direct {v6, p0, v2, p1}, Le/a/p5/v0/c$a$d;-><init>(Le/a/p5/v0/c$a;Lq3/a/w2/x;Landroid/telephony/TelephonyManager;)V

    const/16 v7, 0x1d

    if-lt v0, v7, :cond_7

    .line 8
    new-instance v0, Le/a/p5/v0/c$a$b;

    .line 9
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    .line 10
    instance-of v7, v4, Lq3/a/e1;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Lq3/a/e1;

    goto :goto_1

    :cond_5
    move-object v7, v5

    :goto_1
    if-nez v7, :cond_6

    new-instance v7, Lq3/a/s0;

    invoke-direct {v7, v4}, Lq3/a/s0;-><init>(Lq3/a/g0;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 11
    :goto_2
    invoke-direct {v0, v6, v7}, Le/a/p5/v0/c$a$b;-><init>(Ls1/z/b/p;Ljava/util/concurrent/Executor;)V

    goto :goto_4

    .line 12
    :cond_7
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 13
    new-instance v7, Le/a/p5/v0/c$a$c;

    invoke-direct {v7, p0, v6, v5}, Le/a/p5/v0/c$a$c;-><init>(Le/a/p5/v0/c$a;Ls1/z/b/p;Ls1/w/d;)V

    iput-object v2, p0, Le/a/p5/v0/c$a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/p5/v0/c$a;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/p5/v0/c$a;->g:I

    invoke-static {v0, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 14
    :goto_3
    check-cast p1, Landroid/telephony/PhoneStateListener;

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 15
    :goto_4
    iget-object v4, p0, Le/a/p5/v0/c$a;->h:Le/a/p5/v0/c;

    .line 16
    monitor-enter v4

    .line 17
    :try_start_0
    iget-object v6, v4, Le/a/p5/v0/c;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x20

    .line 18
    invoke-virtual {p1, v0, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v4

    .line 20
    new-instance v4, Le/a/p5/v0/c$a$a;

    invoke-direct {v4, p0, v0, p1}, Le/a/p5/v0/c$a$a;-><init>(Le/a/p5/v0/c$a;Landroid/telephony/PhoneStateListener;Landroid/telephony/TelephonyManager;)V

    iput-object v5, p0, Le/a/p5/v0/c$a;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/p5/v0/c$a;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/p5/v0/c$a;->g:I

    invoke-static {v2, v4, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 21
    :cond_9
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v4

    throw p1
.end method
