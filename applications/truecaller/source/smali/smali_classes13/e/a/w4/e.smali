.class public final Le/a/w4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w4/d;


# instance fields
.field public final a:Le/a/b0/q/l0;

.field public final b:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/b0/q/l0;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "timestampUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/e;->a:Le/a/b0/q/l0;

    iput-object p2, p0, Le/a/w4/e;->b:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/k3/l/k/a;)Z
    .locals 9

    const-string v0, "imGroupParticipant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v5, p1, Le/a/k3/l/k/a;->j:I

    and-int/lit8 v0, v5, 0xd

    if-eqz v0, :cond_1

    .line 2
    iget-wide v3, p1, Le/a/k3/l/k/a;->k:J

    .line 3
    iget-object v6, p1, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    .line 4
    iget-object v7, p1, Le/a/k3/l/k/a;->g:Ljava/lang/String;

    .line 5
    iget-object v8, p1, Le/a/k3/l/k/a;->l:Ljava/lang/Long;

    const/4 v2, 0x0

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v8}, Le/a/w4/e;->d(ZJILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Z
    .locals 9

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->X()J

    move-result-wide v3

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v5

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->o()Ljava/lang/Long;

    move-result-object v8

    const/4 v2, 0x0

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v8}, Le/a/w4/e;->d(ZJILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 12

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 v1, v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v0, v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 4
    :goto_0
    iget-wide v6, p1, Lcom/truecaller/data/entity/messaging/Participant;->t:J

    .line 5
    iget v8, p1, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    .line 6
    iget-object v9, p1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 7
    iget-object v10, p1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    .line 8
    iget-object v11, p1, Lcom/truecaller/data/entity/messaging/Participant;->v:Ljava/lang/Long;

    move-object v4, p0

    .line 9
    invoke-virtual/range {v4 .. v11}, Le/a/w4/e;->d(ZJILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method public final d(ZJILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 8

    if-eqz p7, :cond_0

    .line 1
    iget-object v0, p0, Le/a/w4/e;->a:Le/a/b0/q/l0;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    .line 2
    sget-wide p6, Le/a/w4/f;->c:J

    .line 3
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    :cond_0
    and-int/lit8 p7, p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p7, :cond_6

    if-eqz p1, :cond_6

    if-eqz p5, :cond_2

    .line 4
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    if-nez p1, :cond_5

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_6

    :cond_5
    move p1, v1

    goto :goto_4

    :cond_6
    move p1, v0

    :goto_4
    if-nez p1, :cond_b

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_7

    move p1, v1

    goto :goto_5

    :cond_7
    move p1, v0

    :goto_5
    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    if-nez p7, :cond_9

    and-int/lit8 p1, p4, 0x40

    if-nez p1, :cond_9

    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    if-eqz v0, :cond_c

    .line 5
    iget-object v2, p0, Le/a/w4/e;->a:Le/a/b0/q/l0;

    .line 6
    iget-object p1, p0, Le/a/w4/e;->b:Le/a/b0/o/a;

    .line 7
    sget-wide p4, Le/a/w4/f;->a:J

    const-string p6, "searchHitTtl"

    .line 8
    invoke-interface {p1, p6, p4, p5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 9
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p2

    .line 10
    invoke-virtual/range {v2 .. v7}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    goto :goto_7

    .line 11
    :cond_b
    :goto_6
    iget-object v2, p0, Le/a/w4/e;->a:Le/a/b0/q/l0;

    .line 12
    iget-object p1, p0, Le/a/w4/e;->b:Le/a/b0/o/a;

    .line 13
    sget-wide p4, Le/a/w4/f;->b:J

    const-string p6, "searchMissTtl"

    .line 14
    invoke-interface {p1, p6, p4, p5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p2

    .line 16
    invoke-virtual/range {v2 .. v7}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    :cond_c
    :goto_7
    return v1
.end method
