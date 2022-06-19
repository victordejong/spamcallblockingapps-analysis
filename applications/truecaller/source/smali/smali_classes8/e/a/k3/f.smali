.class public final Le/a/k3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k3/e;


# instance fields
.field public final a:Le/m/f/a/j;

.field public final b:Le/a/b0/j/b;


# direct methods
.method public constructor <init>(Le/m/f/a/j;Le/a/b0/j/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k3/f;->a:Le/m/f/a/j;

    iput-object p2, p0, Le/a/k3/f;->b:Le/a/b0/j/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;ILjava/lang/Long;J)Lcom/truecaller/data/entity/HistoryEvent;
    .locals 2

    const-string p3, "contact"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p3, Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p3, v1}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, p3, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, p3, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    .line 10
    iput-object v1, p3, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v1

    .line 12
    iput-object v1, p3, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p3, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 15
    :cond_0
    iput p2, p3, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 16
    iput-object v0, p3, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 18
    iput-wide p1, p3, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 19
    iput-wide p4, p3, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    const-string p1, "with(HistoryEvent.Builde\u2026ration)\n        }.build()"

    .line 20
    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k3/f$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k3/f$b;

    iget v1, v0, Le/a/k3/f$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k3/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k3/f$b;

    invoke-direct {v0, p0, p3}, Le/a/k3/f$b;-><init>(Le/a/k3/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k3/f$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k3/f$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Lcom/truecaller/data/entity/HistoryEvent$b;

    invoke-direct {p3}, Lcom/truecaller/data/entity/HistoryEvent$b;-><init>()V

    .line 5
    iput v3, v0, Le/a/k3/f$b;->e:I

    invoke-virtual {p0, p3, p1, p2, v0}, Le/a/k3/f;->d(Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p3, Lcom/truecaller/data/entity/HistoryEvent$b;

    .line 7
    iget-object p1, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    const-string p2, "HistoryEvent.Builder()\n \u2026Iso)\n            .build()"

    .line 8
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Lcom/truecaller/data/entity/CallLogBackupItem;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/CallLogBackupItem;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k3/f$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k3/f$a;

    iget v1, v0, Le/a/k3/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k3/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k3/f$a;

    invoke-direct {v0, p0, p3}, Le/a/k3/f$a;-><init>(Le/a/k3/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k3/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k3/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k3/f$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent$b;

    iget-object p2, v0, Le/a/k3/f$a;->g:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/data/entity/CallLogBackupItem;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, p2

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Lcom/truecaller/data/entity/HistoryEvent$b;

    invoke-direct {p3}, Lcom/truecaller/data/entity/HistoryEvent$b;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Le/a/k3/f$a;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/k3/f$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k3/f$a;->e:I

    invoke-virtual {p0, p3, v2, p2, v0}, Le/a/k3/f;->d(Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getTimestamp()J

    move-result-wide v0

    .line 7
    iget-object p2, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 8
    iput-wide v0, p2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getDuration()J

    move-result-wide v0

    .line 10
    iget-object p2, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 11
    iput-wide v0, p2, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getType()I

    move-result p2

    .line 13
    iget-object v0, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 14
    iput p2, v0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getAction()I

    move-result p2

    .line 16
    iget-object v0, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 17
    iput p2, v0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getFeatures()I

    move-result p2

    .line 19
    iget-object v0, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 20
    iput p2, v0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 21
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getComponentName()Ljava/lang/String;

    move-result-object p2

    .line 22
    iget-object v0, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 23
    iput-object p2, v0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const/4 p2, 0x0

    .line 24
    iput p2, v0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    .line 25
    iput v3, v0, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    const/4 p2, 0x2

    .line 26
    iput p2, v0, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    .line 27
    invoke-virtual {p1}, Lcom/truecaller/data/entity/CallLogBackupItem;->getFilterSource()Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object p2, p3, Lcom/truecaller/data/entity/HistoryEvent$b;->a:Lcom/truecaller/data/entity/HistoryEvent;

    .line 29
    iput-object p1, p2, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    const-string p1, "with(HistoryEvent.Builde\u2026Source)\n        }.build()"

    .line 30
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final d(Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/HistoryEvent$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v7, Le/a/k3/f$c;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/k3/f$c;-><init>(Le/a/k3/f;Lcom/truecaller/data/entity/HistoryEvent$b;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
