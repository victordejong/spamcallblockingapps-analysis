.class public final Le/a/d/c0/k0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/k0;->h(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;)V
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
    c = "com.truecaller.voip.util.VoipAnalyticsUtilImpl$logCallAttempt$1"
    f = "VoipAnalyticsUtilImpl.kt"
    l = {
        0xe5,
        0xea
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/k0;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/k0;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    iput-object p2, p0, Le/a/d/c0/k0$a;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/k0$a;->i:Ljava/lang/String;

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

    new-instance p1, Le/a/d/c0/k0$a;

    iget-object v0, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    iget-object v1, p0, Le/a/d/c0/k0$a;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/k0$a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/k0$a;-><init>(Le/a/d/c0/k0;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/k0$a;

    iget-object v0, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    iget-object v1, p0, Le/a/d/c0/k0$a;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/k0$a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/k0$a;-><init>(Le/a/d/c0/k0;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/k0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/k0$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/c0/k0$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/f1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/k0$a;->h:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 5
    iget-object v1, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    .line 6
    iget-object v1, v1, Le/a/d/c0/k0;->d:Le/a/d/c0/j1;

    .line 7
    iput v3, p0, Le/a/d/c0/k0$a;->f:I

    invoke-interface {v1, p1, p0}, Le/a/d/c0/j1;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/d/c0/f1;

    goto :goto_1

    :cond_4
    move-object p1, v4

    .line 8
    :goto_1
    iget-object v1, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    .line 9
    iget-object v1, v1, Le/a/d/c0/k0;->e:Le/a/d/g;

    .line 10
    check-cast v1, Le/a/d/e;

    invoke-virtual {v1}, Le/a/d/e;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Le/a/d/c0/k0$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v3, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    .line 11
    iget-object v3, v3, Le/a/d/c0/k0;->f:Le/a/d/c0/y1/b;

    .line 12
    iput-object p1, p0, Le/a/d/c0/k0$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/c0/k0$a;->f:I

    invoke-interface {v3, v1, p0}, Le/a/d/c0/y1/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v0

    goto :goto_3

    :cond_6
    move-object p1, v0

    goto :goto_4

    .line 13
    :cond_7
    :goto_3
    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsViewAction;->GROUP_VOIP_CALL:Lcom/truecaller/voip/util/VoipAnalyticsViewAction;

    goto :goto_5

    .line 14
    :cond_8
    :goto_4
    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsViewAction;->VOIP_CALL:Lcom/truecaller/voip/util/VoipAnalyticsViewAction;

    :goto_5
    if-nez p1, :cond_9

    move-object p1, v4

    goto :goto_6

    .line 15
    :cond_9
    iget-boolean v1, p1, Le/a/d/c0/f1;->h:Z

    if-eqz v1, :cond_a

    .line 16
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsContactType;->PHONEBOOK:Lcom/truecaller/voip/util/VoipAnalyticsContactType;

    goto :goto_6

    .line 17
    :cond_a
    iget-object p1, p1, Le/a/d/c0/f1;->g:Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 18
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsContactType;->SPAM:Lcom/truecaller/voip/util/VoipAnalyticsContactType;

    goto :goto_6

    .line 19
    :cond_b
    sget-object p1, Lcom/truecaller/voip/util/VoipAnalyticsContactType;->OTHER:Lcom/truecaller/voip/util/VoipAnalyticsContactType;

    .line 20
    :goto_6
    iget-object v1, p0, Le/a/d/c0/k0$a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/truecaller/voip/util/VoipAnalyticsViewAction;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/truecaller/voip/util/VoipAnalyticsContactType;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_c
    const-string p1, "action"

    .line 21
    invoke-static {v2, p1, v2, v4, v1}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    .line 22
    iget-object v1, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    .line 23
    iget-object v1, v1, Le/a/d/c0/k0;->b:Le/a/q2/a;

    .line 24
    invoke-static {p1, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 25
    iget-object p1, p0, Le/a/d/c0/k0$a;->g:Le/a/d/c0/k0;

    .line 26
    iget-object p1, p1, Le/a/d/c0/k0;->c:Lo3/a;

    .line 27
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    .line 28
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 29
    iget-object v2, p0, Le/a/d/c0/k0$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 30
    invoke-virtual {v0}, Lcom/truecaller/voip/util/VoipAnalyticsViewAction;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 31
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object v0

    .line 32
    invoke-interface {p1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 33
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
