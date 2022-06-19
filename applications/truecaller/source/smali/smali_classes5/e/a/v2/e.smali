.class public final Le/a/v2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v2/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/p5/c;

.field public final c:Le/a/p5/q0/e;

.field public final d:Le/a/v2/a;

.field public final e:Le/a/v2/v/a;

.field public final f:Le/a/v2/m;

.field public final g:Le/a/v2/w/a;

.field public final h:Le/a/v2/i;

.field public final i:J


# direct methods
.method public constructor <init>(Le/a/p5/c;Le/a/p5/q0/e;Le/a/v2/a;Le/a/v2/v/a;Le/a/v2/m;Le/a/v2/w/a;Le/a/v2/i;J)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationAvailabilityProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationRequestHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v2/e;->b:Le/a/p5/c;

    iput-object p2, p0, Le/a/v2/e;->c:Le/a/p5/q0/e;

    iput-object p3, p0, Le/a/v2/e;->d:Le/a/v2/a;

    iput-object p4, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    iput-object p5, p0, Le/a/v2/e;->f:Le/a/v2/m;

    iput-object p6, p0, Le/a/v2/e;->g:Le/a/v2/w/a;

    iput-object p7, p0, Le/a/v2/e;->h:Le/a/v2/i;

    iput-wide p8, p0, Le/a/v2/e;->i:J

    .line 2
    new-instance p1, Le/a/v2/e$a;

    invoke-direct {p1, p0}, Le/a/v2/e$a;-><init>(Le/a/v2/e;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v2/e;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Le/a/v2/l;
    .locals 15

    .line 1
    sget-object v0, Le/a/v2/l$a$a;->b:Le/a/v2/l$a$a;

    iget-object v1, p0, Le/a/v2/e;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/attestation/AttestationEngine;

    .line 4
    invoke-virtual {p0, v4}, Le/a/v2/e;->c(Lcom/truecaller/attestation/AttestationEngine;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lcom/truecaller/attestation/AttestationEngine;

    .line 8
    iget-object v7, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    check-cast v7, Le/a/v2/v/b;

    invoke-virtual {v7, v3, v6, v5}, Le/a/v2/v/b;->b(Lcom/truecaller/attestation/AttestationEngine;ZZ)V

    .line 9
    new-instance v7, Le/a/v2/f;

    invoke-direct {v7, p0, v3, v4}, Le/a/v2/f;-><init>(Le/a/v2/e;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    invoke-static {v4, v7, v6, v4}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx3/a0;

    if-nez v7, :cond_2

    .line 10
    iget-object v7, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v3

    invoke-static/range {v7 .. v13}, Le/m/d/y/n;->K0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Integer;ZILjava/lang/Object;)V

    .line 11
    new-instance v5, Le/a/v2/o$a;

    invoke-direct {v5, v0}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    goto :goto_6

    .line 12
    :cond_2
    iget-object v8, v7, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    check-cast v8, Lcom/truecaller/attestation/data/AttestationNonceDto;

    if-eqz v8, :cond_4

    .line 14
    invoke-virtual {v7}, Lx3/a0;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move-object v8, v4

    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/truecaller/attestation/data/AttestationNonceDto;->getNonce()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 15
    new-instance v9, Le/a/v2/o$b;

    invoke-direct {v9, v8}, Le/a/v2/o$b;-><init>(Ljava/lang/Object;)V

    move-object v14, v9

    goto :goto_3

    :cond_4
    move-object v14, v4

    .line 16
    :goto_3
    iget-object v8, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    if-eqz v14, :cond_5

    .line 17
    iget-object v9, v14, Le/a/v2/o$b;->a:Ljava/lang/Object;

    .line 18
    check-cast v9, Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v9, v4

    :goto_4
    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_5

    :cond_6
    move v9, v5

    .line 19
    :goto_5
    iget-object v5, v7, Lx3/a0;->a:Lu3/k0;

    .line 20
    iget v5, v5, Lu3/k0;->e:I

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v8

    move-object v8, v3

    invoke-static/range {v7 .. v13}, Le/m/d/y/n;->K0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Integer;ZILjava/lang/Object;)V

    if-eqz v14, :cond_7

    move-object v5, v14

    goto :goto_6

    .line 22
    :cond_7
    new-instance v5, Le/a/v2/o$a;

    sget-object v7, Le/a/v2/l$a$c;->b:Le/a/v2/l$a$c;

    invoke-direct {v5, v7}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    .line 23
    :goto_6
    instance-of v7, v5, Le/a/v2/o$a;

    if-eqz v7, :cond_8

    check-cast v5, Le/a/v2/o$a;

    .line 24
    iget-object v3, v5, Le/a/v2/o$a;->a:Le/a/v2/l$a;

    goto/16 :goto_9

    .line 25
    :cond_8
    instance-of v7, v5, Le/a/v2/o$b;

    if-eqz v7, :cond_10

    check-cast v5, Le/a/v2/o$b;

    .line 26
    iget-object v5, v5, Le/a/v2/o$b;->a:Ljava/lang/Object;

    .line 27
    check-cast v5, Ljava/lang/String;

    .line 28
    new-instance v7, Le/a/v2/d;

    invoke-direct {v7, p0, v5, v3, v4}, Le/a/v2/d;-><init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    invoke-static {v4, v7, v6, v4}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/v2/o;

    .line 29
    instance-of v7, v5, Le/a/v2/o$a;

    if-eqz v7, :cond_9

    check-cast v5, Le/a/v2/o$a;

    .line 30
    iget-object v3, v5, Le/a/v2/o$a;->a:Le/a/v2/l$a;

    goto/16 :goto_9

    .line 31
    :cond_9
    instance-of v7, v5, Le/a/v2/o$b;

    if-eqz v7, :cond_f

    check-cast v5, Le/a/v2/o$b;

    .line 32
    iget-object v5, v5, Le/a/v2/o$b;->a:Ljava/lang/Object;

    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    new-instance v7, Le/a/v2/g;

    invoke-direct {v7, p0, v5, v3, v4}, Le/a/v2/g;-><init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    invoke-static {v4, v7, v6, v4}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/v2/w/c;

    if-nez v4, :cond_a

    .line 35
    iget-object v7, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v8, v3

    invoke-static/range {v7 .. v14}, Le/m/d/y/n;->J0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ZILjava/lang/Object;)V

    goto/16 :goto_8

    .line 36
    :cond_a
    iget v5, v4, Le/a/v2/w/c;->a:I

    .line 37
    iget-object v4, v4, Le/a/v2/w/c;->b:Le/a/v2/w/d;

    .line 38
    iget-object v7, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    instance-of v6, v4, Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v8, v3

    move v9, v6

    invoke-static/range {v7 .. v14}, Le/m/d/y/n;->J0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ZILjava/lang/Object;)V

    if-eqz v6, :cond_c

    .line 39
    check-cast v4, Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;

    invoke-virtual {v4}, Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;->getTtl()J

    move-result-wide v4

    .line 40
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_b

    .line 41
    iget-object v3, p0, Le/a/v2/e;->f:Le/a/v2/m;

    iget-object v6, p0, Le/a/v2/e;->b:Le/a/p5/c;

    invoke-interface {v6}, Le/a/p5/c;->c()J

    move-result-wide v6

    const-string v8, "attestationLastTime"

    invoke-interface {v3, v8, v6, v7}, Le/a/v2/m;->putLong(Ljava/lang/String;J)V

    .line 42
    iget-object v3, p0, Le/a/v2/e;->f:Le/a/v2/m;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v6, "attestationTtl"

    invoke-interface {v3, v6, v4, v5}, Le/a/v2/m;->putLong(Ljava/lang/String;J)V

    goto :goto_7

    .line 43
    :cond_b
    iget-object v3, p0, Le/a/v2/e;->f:Le/a/v2/m;

    iget-object v6, p0, Le/a/v2/e;->b:Le/a/p5/c;

    invoke-interface {v6}, Le/a/p5/c;->c()J

    move-result-wide v6

    const-string v8, "playIntegrityLastTime"

    invoke-interface {v3, v8, v6, v7}, Le/a/v2/m;->putLong(Ljava/lang/String;J)V

    .line 44
    iget-object v3, p0, Le/a/v2/e;->f:Le/a/v2/m;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v6, "playIntegrityTtl"

    invoke-interface {v3, v6, v4, v5}, Le/a/v2/m;->putLong(Ljava/lang/String;J)V

    .line 45
    :goto_7
    sget-object v3, Le/a/v2/l$b;->a:Le/a/v2/l$b;

    goto :goto_9

    .line 46
    :cond_c
    instance-of v3, v4, Lcom/truecaller/attestation/data/AttestationErrorResponseDto;

    if-eqz v3, :cond_d

    .line 47
    new-instance v3, Le/a/v2/l$a$e;

    check-cast v4, Lcom/truecaller/attestation/data/AttestationErrorResponseDto;

    invoke-virtual {v4}, Lcom/truecaller/attestation/data/AttestationErrorResponseDto;->getStatus()I

    move-result v5

    invoke-virtual {v4}, Lcom/truecaller/attestation/data/AttestationErrorResponseDto;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Le/a/v2/l$a$e;-><init>(ILjava/lang/String;)V

    goto :goto_9

    :cond_d
    if-nez v4, :cond_e

    :goto_8
    move-object v3, v0

    .line 48
    :goto_9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 49
    :cond_e
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 50
    :cond_f
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 51
    :cond_10
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 52
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    move-object v1, v4

    goto :goto_c

    .line 54
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_c

    .line 56
    :cond_13
    move-object v2, v1

    check-cast v2, Le/a/v2/l;

    .line 57
    instance-of v3, v2, Le/a/v2/l$a;

    const/4 v7, 0x2

    if-eqz v3, :cond_15

    check-cast v2, Le/a/v2/l$a;

    .line 58
    iget-boolean v2, v2, Le/a/v2/l$a;->a:Z

    if-eqz v2, :cond_14

    move v2, v7

    goto :goto_a

    :cond_14
    move v2, v6

    goto :goto_a

    .line 59
    :cond_15
    instance-of v2, v2, Le/a/v2/l$b;

    if-eqz v2, :cond_1c

    move v2, v5

    .line 60
    :cond_16
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 61
    move-object v8, v3

    check-cast v8, Le/a/v2/l;

    .line 62
    instance-of v9, v8, Le/a/v2/l$a;

    if-eqz v9, :cond_18

    check-cast v8, Le/a/v2/l$a;

    .line 63
    iget-boolean v8, v8, Le/a/v2/l$a;->a:Z

    if-eqz v8, :cond_17

    move v8, v7

    goto :goto_b

    :cond_17
    move v8, v6

    goto :goto_b

    .line 64
    :cond_18
    instance-of v8, v8, Le/a/v2/l$b;

    if-eqz v8, :cond_1b

    move v8, v5

    :goto_b
    if-ge v2, v8, :cond_19

    move-object v1, v3

    move v2, v8

    .line 65
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 66
    :goto_c
    check-cast v1, Le/a/v2/l;

    if-eqz v1, :cond_1a

    goto :goto_d

    .line 67
    :cond_1a
    sget-object v1, Le/a/v2/l$a$b;->b:Le/a/v2/l$a$b;

    .line 68
    iget-object v0, p0, Le/a/v2/e;->e:Le/a/v2/v/a;

    check-cast v0, Le/a/v2/v/b;

    invoke-virtual {v0, v4, v5, v5}, Le/a/v2/v/b;->b(Lcom/truecaller/attestation/AttestationEngine;ZZ)V

    :goto_d
    return-object v1

    .line 69
    :cond_1b
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1c
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v2/e;->d:Le/a/v2/a;

    invoke-interface {v0}, Le/a/v2/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/v2/e;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/attestation/AttestationEngine;

    .line 5
    invoke-virtual {p0, v3}, Le/a/v2/e;->c(Lcom/truecaller/attestation/AttestationEngine;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public final c(Lcom/truecaller/attestation/AttestationEngine;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/v2/e;->f:Le/a/v2/m;

    const-string v2, "attestationLastTime"

    invoke-interface {p1, v2, v0, v1}, Le/a/v2/m;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "attestationSettings.getL\u2026ATTESTATION_LAST_TIME, 0)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3
    iget-object p1, p0, Le/a/v2/e;->f:Le/a/v2/m;

    const-string v4, "attestationTtl"

    invoke-interface {p1, v4, v0, v1}, Le/a/v2/m;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "attestationSettings.getL\u2026tings.ATTESTATION_TTL, 0)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v2, v3, v0, v1}, Le/a/v2/e;->d(JJ)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/v2/e;->f:Le/a/v2/m;

    const-string v2, "playIntegrityLastTime"

    invoke-interface {p1, v2, v0, v1}, Le/a/v2/m;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "attestationSettings.getL\u2026Y_INTEGRITY_LAST_TIME, 0)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    iget-object p1, p0, Le/a/v2/e;->f:Le/a/v2/m;

    const-string v4, "playIntegrityTtl"

    invoke-interface {p1, v4, v0, v1}, Le/a/v2/m;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "attestationSettings.getL\u2026gs.PLAY_INTEGRITY_TTL, 0)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7
    invoke-virtual {p0, v2, v3, v0, v1}, Le/a/v2/e;->d(JJ)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final d(JJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v2/e;->b:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    add-long/2addr p1, p3

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

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
