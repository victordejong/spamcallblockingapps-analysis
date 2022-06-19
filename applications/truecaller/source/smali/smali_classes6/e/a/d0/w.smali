.class public Le/a/d0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/g5/p;

.field public final b:Le/a/e4/p;


# direct methods
.method public constructor <init>(Le/a/g5/p;Le/a/e4/p;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d0/w;->a:Le/a/g5/p;

    .line 3
    iput-object p2, p0, Le/a/d0/w;->b:Le/a/e4/p;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/v;)Lcom/truecaller/data/entity/HistoryEvent;
    .locals 6

    .line 1
    iget-object v0, p1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    .line 2
    new-instance v1, Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v3

    .line 4
    iput-object v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    .line 6
    iput-object v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v3

    .line 8
    iput-object v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, v1, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 11
    iget-wide v3, p1, Le/a/d0/v;->d:J

    .line 12
    iput-wide v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 13
    iget-object v0, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 14
    iput-object v0, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v1, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Le/a/d0/w;->b:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Le/a/d0/w;->b:Le/a/e4/p;

    iget v3, p1, Le/a/d0/v;->b:I

    invoke-interface {v0, v3}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v0, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    .line 20
    iput-object v0, v1, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 21
    :cond_0
    iget v0, p1, Le/a/d0/v;->h:I

    const v3, 0xc317ed

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 22
    iput v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    goto :goto_0

    .line 23
    :cond_1
    iput v0, v1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 24
    :goto_0
    iget-object v0, p1, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    iget-object v3, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 25
    iget-object v0, v0, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 26
    sget-object v5, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    if-eq v0, v5, :cond_2

    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 28
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    sget-object v0, Lcom/truecaller/blocking/ActionSource;->SPAMMER_FROM_SEARCH:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 30
    :cond_3
    :goto_1
    iput-object v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 31
    iget-boolean v0, p1, Le/a/d0/v;->e:Z

    if-eqz v0, :cond_5

    .line 32
    iget v0, p1, Le/a/d0/v;->i:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-boolean v0, p1, Le/a/d0/v;->j:Z

    if-nez v0, :cond_4

    .line 33
    iput v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    goto :goto_2

    .line 34
    :cond_4
    iput v4, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 35
    :goto_2
    iget-wide v2, p1, Le/a/d0/v;->q:J

    iget-wide v4, p1, Le/a/d0/v;->d:J

    sub-long/2addr v2, v4

    .line 36
    iput-wide v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    goto :goto_3

    :cond_5
    const/4 p1, 0x2

    .line 37
    iput p1, v1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    :goto_3
    return-object v1
.end method
