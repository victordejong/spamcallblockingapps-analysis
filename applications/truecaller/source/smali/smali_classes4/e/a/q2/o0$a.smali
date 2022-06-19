.class public final Le/a/q2/o0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/o0;->u(ZJILcom/truecaller/messaging/data/types/InboxTab;)V
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
    c = "com.truecaller.analytics.MessageAnalyticsImpl$logArchiveEvent$1"
    f = "MessageAnalyticsImpl.kt"
    l = {
        0x152
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/q2/o0;

.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lcom/truecaller/messaging/data/types/InboxTab;


# direct methods
.method public constructor <init>(Le/a/q2/o0;JILjava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/o0$a;->f:Le/a/q2/o0;

    iput-wide p2, p0, Le/a/q2/o0$a;->g:J

    iput p4, p0, Le/a/q2/o0$a;->h:I

    iput-object p5, p0, Le/a/q2/o0$a;->i:Ljava/lang/String;

    iput-object p6, p0, Le/a/q2/o0$a;->j:Lcom/truecaller/messaging/data/types/InboxTab;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/q2/o0$a;

    iget-object v1, p0, Le/a/q2/o0$a;->f:Le/a/q2/o0;

    iget-wide v2, p0, Le/a/q2/o0$a;->g:J

    iget v4, p0, Le/a/q2/o0$a;->h:I

    iget-object v5, p0, Le/a/q2/o0$a;->i:Ljava/lang/String;

    iget-object v6, p0, Le/a/q2/o0$a;->j:Lcom/truecaller/messaging/data/types/InboxTab;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/q2/o0$a;-><init>(Le/a/q2/o0;JILjava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q2/o0$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q2/o0$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/o0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/q2/o0$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/q2/o0$a;->f:Le/a/q2/o0;

    .line 5
    iget-object p1, p1, Le/a/q2/o0;->c:Le/a/q2/j0;

    .line 6
    iget-wide v3, p0, Le/a/q2/o0$a;->g:J

    iget v1, p0, Le/a/q2/o0$a;->h:I

    iput v2, p0, Le/a/q2/o0$a;->e:I

    check-cast p1, Le/a/q2/l0;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p1, Le/a/q2/l0;->a:Ls1/w/f;

    new-instance v2, Le/a/q2/n0;

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Le/a/q2/n0;-><init>(Le/a/q2/l0;JLs1/w/d;)V

    invoke-static {v1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 11
    iget-object v0, p0, Le/a/q2/o0$a;->f:Le/a/q2/o0;

    .line 12
    iget-object v0, v0, Le/a/q2/o0;->b:Le/a/q2/a;

    .line 13
    iget-object v1, p0, Le/a/q2/o0$a;->i:Ljava/lang/String;

    const-string v2, "type"

    .line 14
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "tab"

    .line 16
    iget-object v5, p0, Le/a/q2/o0$a;->f:Le/a/q2/o0;

    iget-object v6, p0, Le/a/q2/o0$a;->j:Lcom/truecaller/messaging/data/types/InboxTab;

    .line 17
    invoke-virtual {v5, v6}, Le/a/q2/o0;->x(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    .line 18
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "value"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "splitConversation"

    .line 20
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 24
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
