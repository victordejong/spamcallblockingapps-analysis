.class public final Le/a/q2/o0$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/o0;->c(Ljava/lang/String;JZ)V
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
    c = "com.truecaller.analytics.MessageAnalyticsImpl$logMessageNotificationMessage$1"
    f = "MessageAnalyticsImpl.kt"
    l = {
        0x1b0
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

    iput-object p1, p0, Le/a/q2/o0$d;->f:Le/a/q2/o0;

    iput-wide p2, p0, Le/a/q2/o0$d;->g:J

    iput-object p4, p0, Le/a/q2/o0$d;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/q2/o0$d;

    iget-object v1, p0, Le/a/q2/o0$d;->f:Le/a/q2/o0;

    iget-wide v2, p0, Le/a/q2/o0$d;->g:J

    iget-object v4, p0, Le/a/q2/o0$d;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/q2/o0$d;-><init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/o0$d;

    iget-object v1, p0, Le/a/q2/o0$d;->f:Le/a/q2/o0;

    iget-wide v2, p0, Le/a/q2/o0$d;->g:J

    iget-object v4, p0, Le/a/q2/o0$d;->h:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/q2/o0$d;-><init>(Le/a/q2/o0;JLjava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/o0$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/q2/o0$d;->e:I

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
    iget-object p1, p0, Le/a/q2/o0$d;->f:Le/a/q2/o0;

    .line 5
    iget-object p1, p1, Le/a/q2/o0;->c:Le/a/q2/j0;

    .line 6
    iget-wide v4, p0, Le/a/q2/o0$d;->g:J

    iput v3, p0, Le/a/q2/o0$d;->e:I

    check-cast p1, Le/a/q2/l0;

    invoke-virtual {p1, v4, v5, p0}, Le/a/q2/l0;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ls1/k;

    .line 8
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_6

    .line 10
    iget-object v1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    iget-object v1, p0, Le/a/q2/o0$d;->f:Le/a/q2/o0;

    .line 13
    iget-object v1, v1, Le/a/q2/o0;->b:Le/a/q2/a;

    const-string v2, "MessageNotificationAction"

    const-string v3, "type"

    .line 14
    invoke-static {v2, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 15
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, "action"

    .line 16
    iget-object v10, p0, Le/a/q2/o0$d;->h:Ljava/lang/String;

    const-string v12, "name"

    const-string v13, "value"

    move-object v4, v9

    move-object v5, v12

    move-object v6, v10

    move-object v7, v13

    move-object v8, v3

    .line 17
    invoke-static/range {v4 .. v10}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "messageType"

    .line 18
    iget-object v5, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 19
    check-cast v5, Ljava/lang/CharSequence;

    .line 20
    invoke-static {v4, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "senderType"

    .line 22
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 23
    check-cast p1, Ljava/lang/CharSequence;

    .line 24
    invoke-static {v4, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v11}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v3, v2, v1}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    :cond_6
    :goto_3
    return-object v0
.end method
