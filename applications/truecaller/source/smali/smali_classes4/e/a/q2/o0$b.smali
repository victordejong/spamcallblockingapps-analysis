.class public final Le/a/q2/o0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/o0;->f(Ljava/lang/String;J)V
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
    c = "com.truecaller.analytics.MessageAnalyticsImpl$logFailedSmsSendingNotification$1"
    f = "MessageAnalyticsImpl.kt"
    l = {
        0x1bf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/q2/o0;

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/o0$b;->f:Le/a/q2/o0;

    iput-wide p2, p0, Le/a/q2/o0$b;->g:J

    iput-object p4, p0, Le/a/q2/o0$b;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/q2/o0$b;

    iget-object v1, p0, Le/a/q2/o0$b;->f:Le/a/q2/o0;

    iget-wide v2, p0, Le/a/q2/o0$b;->g:J

    iget-object v4, p0, Le/a/q2/o0$b;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/q2/o0$b;-><init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/o0$b;

    iget-object v1, p0, Le/a/q2/o0$b;->f:Le/a/q2/o0;

    iget-wide v2, p0, Le/a/q2/o0$b;->g:J

    iget-object v4, p0, Le/a/q2/o0$b;->h:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/q2/o0$b;-><init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/o0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/q2/o0$b;->e:I

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
    iget-object p1, p0, Le/a/q2/o0$b;->f:Le/a/q2/o0;

    .line 5
    iget-object p1, p1, Le/a/q2/o0;->c:Le/a/q2/j0;

    .line 6
    iget-wide v3, p0, Le/a/q2/o0$b;->g:J

    iput v2, p0, Le/a/q2/o0$b;->e:I

    check-cast p1, Le/a/q2/l0;

    invoke-virtual {p1, v3, v4, p0}, Le/a/q2/l0;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ls1/k;

    .line 7
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/lang/String;

    const-string v0, "mms"

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sms"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/q2/o0$b;->f:Le/a/q2/o0;

    .line 11
    iget-object p1, p1, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v7, "FailedSmsSendingNotification"

    const-string v0, "type"

    .line 12
    invoke-static {v7, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 13
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "action"

    .line 14
    iget-object v6, p0, Le/a/q2/o0$b;->h:Ljava/lang/String;

    const-string v1, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v2, v6

    move-object v4, v9

    .line 15
    invoke-static/range {v0 .. v8}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 16
    invoke-static {v0, v9, v1, p1}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 17
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
