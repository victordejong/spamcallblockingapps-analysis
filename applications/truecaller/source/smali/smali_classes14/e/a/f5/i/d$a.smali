.class public final Le/a/f5/i/d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f5/i/d;->a(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.truecaller.swish.util.SwishMessageSenderImpl$send$1"
    f = "SwishMessageSender.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f5/i/d;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/f5/i/d;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    iput-object p2, p0, Le/a/f5/i/d$a;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/f5/i/d$a;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/f5/i/d$a;

    iget-object v0, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    iget-object v1, p0, Le/a/f5/i/d$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/f5/i/d$a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f5/i/d$a;-><init>(Le/a/f5/i/d;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f5/i/d$a;

    iget-object v0, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    iget-object v1, p0, Le/a/f5/i/d$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/f5/i/d$a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f5/i/d$a;-><init>(Le/a/f5/i/d;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f5/i/d$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f5/i/d$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

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
    iget-object p1, p0, Le/a/f5/i/d$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 5
    iget-object v2, v2, Le/a/f5/i/d;->c:Lo3/a;

    .line 6
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/q/z;

    iget-object v5, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 7
    iget-object v5, v5, Le/a/f5/i/d;->c:Lo3/a;

    .line 8
    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/q/z;

    invoke-interface {v5}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v2, v5}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    const-string v2, "Participant.buildFromAdd\u2026t().getDefaultSimToken())"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 10
    iget-object v2, v2, Le/a/f5/i/d;->e:Lo3/a;

    .line 11
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/w;

    new-array v5, v4, [Lcom/truecaller/data/entity/messaging/Participant;

    aput-object p1, v5, v3

    iput v4, p0, Le/a/f5/i/d$a;->e:I

    invoke-interface {v2, v5, v4, p0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 12
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 13
    iget-object v1, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 14
    iget-object v1, v1, Le/a/f5/i/d;->f:Lo3/a;

    .line 15
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/t;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v1, v2}, Le/a/a/k/t;->p([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v1

    .line 17
    iget-object v2, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 18
    iget-object v2, v2, Le/a/f5/i/d;->g:Le/a/p5/c0;

    .line 19
    sget v5, Lcom/truecaller/swish/R$string;->swish_flash_message:I

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Le/a/f5/i/d$a;->h:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-interface {v2, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 21
    iput v4, v1, Lcom/truecaller/messaging/data/types/Draft$b;->o:I

    .line 22
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 23
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v1

    .line 24
    iget-object v2, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 25
    iget-object v2, v2, Le/a/f5/i/d;->d:Lo3/a;

    .line 26
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "multiSimManager.get()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "unknown"

    invoke-virtual {v1, v2, v4}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    const-string v2, "draft\n                .b\u2026nalyticsContexts.UNKNOWN)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Le/a/f5/i/d$a;->f:Le/a/f5/i/d;

    .line 28
    iget-object v2, v2, Le/a/f5/i/d;->f:Lo3/a;

    .line 29
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/t;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v2, v1, p1, v3, v3}, Le/a/a/k/t;->b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    return-object v0
.end method
