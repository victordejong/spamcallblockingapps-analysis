.class public final Le/a/v2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v2/s;


# instance fields
.field public final a:Le/a/p5/q0/e;

.field public final b:Le/a/v2/v/a;

.field public final c:Le/a/v2/w/g;

.field public final d:Le/a/v2/i;

.field public final e:Le/a/v2/a;

.field public final f:Ls1/w/f;

.field public final g:J


# direct methods
.method public constructor <init>(Le/a/p5/q0/e;Le/a/v2/v/a;Le/a/v2/w/g;Le/a/v2/i;Le/a/v2/a;Ls1/w/f;J)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "retryHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationRequestHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationAvailabilityProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v2/u;->a:Le/a/p5/q0/e;

    iput-object p2, p0, Le/a/v2/u;->b:Le/a/v2/v/a;

    iput-object p3, p0, Le/a/v2/u;->c:Le/a/v2/w/g;

    iput-object p4, p0, Le/a/v2/u;->d:Le/a/v2/i;

    iput-object p5, p0, Le/a/v2/u;->e:Le/a/v2/a;

    iput-object p6, p0, Le/a/v2/u;->f:Ls1/w/f;

    iput-wide p7, p0, Le/a/v2/u;->g:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/attestation/AttestationEngine;",
            "Ljava/lang/String;",
            "J",
            "Ls1/w/d<",
            "-",
            "Le/a/v2/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p6

    sget-object v8, Le/a/v2/l$a$a;->b:Le/a/v2/l$a$a;

    instance-of v1, v0, Le/a/v2/u$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/v2/u$a;

    iget v2, v1, Le/a/v2/u$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/v2/u$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/v2/u$a;

    invoke-direct {v1, v7, v0}, Le/a/v2/u$a;-><init>(Le/a/v2/u;Ls1/w/d;)V

    :goto_0
    move-object v15, v1

    iget-object v0, v15, Le/a/v2/u$a;->d:Ljava/lang/Object;

    sget-object v14, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v15, Le/a/v2/u$a;->e:I

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v9, :cond_1

    iget-object v1, v15, Le/a/v2/u$a;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/attestation/AttestationEngine;

    iget-object v2, v15, Le/a/v2/u$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/v2/u;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v10, v7, Le/a/v2/u;->a:Le/a/p5/q0/e;

    const/4 v11, 0x2

    .line 5
    iget-wide v12, v7, Le/a/v2/u;->g:J

    .line 6
    sget-object v16, Le/a/v2/u$b;->b:Le/a/v2/u$b;

    .line 7
    new-instance v17, Le/a/v2/u$c;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Le/a/v2/u$c;-><init>(Le/a/v2/u;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;J)V

    iput-object v7, v15, Le/a/v2/u$a;->g:Ljava/lang/Object;

    move-object/from16 v0, p2

    iput-object v0, v15, Le/a/v2/u$a;->h:Ljava/lang/Object;

    iput v9, v15, Le/a/v2/u$a;->e:I

    .line 8
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v10

    move v10, v11

    move-wide v11, v12

    move-object/from16 v13, v16

    move-object v1, v14

    move-object/from16 v14, v17

    invoke-static/range {v9 .. v15}, Le/a/p5/q0/e;->a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v10, v0

    move-object v0, v2

    move-object v2, v7

    .line 9
    :goto_1
    check-cast v0, Le/a/v2/w/h;

    if-nez v0, :cond_4

    .line 10
    iget-object v9, v2, Le/a/v2/u;->b:Le/a/v2/v/a;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Le/m/d/y/n;->J0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ZILjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_4
    iget v1, v0, Le/a/v2/w/h;->a:I

    .line 12
    iget-object v0, v0, Le/a/v2/w/h;->b:Le/a/v2/w/i;

    .line 13
    iget-object v9, v2, Le/a/v2/u;->b:Le/a/v2/v/a;

    .line 14
    instance-of v2, v0, Le/a/v2/w/j;

    const/4 v12, 0x1

    .line 15
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move v11, v2

    .line 16
    invoke-static/range {v9 .. v16}, Le/m/d/y/n;->J0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ZILjava/lang/Object;)V

    if-eqz v2, :cond_5

    .line 17
    sget-object v8, Le/a/v2/l$b;->a:Le/a/v2/l$b;

    goto :goto_2

    .line 18
    :cond_5
    instance-of v1, v0, Lcom/truecaller/attestation/data/VerificationAttestationErrorResponseDto;

    if-eqz v1, :cond_6

    .line 19
    new-instance v8, Le/a/v2/l$a$e;

    check-cast v0, Lcom/truecaller/attestation/data/VerificationAttestationErrorResponseDto;

    invoke-virtual {v0}, Lcom/truecaller/attestation/data/VerificationAttestationErrorResponseDto;->getStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/truecaller/attestation/data/VerificationAttestationErrorResponseDto;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v1, v0}, Le/a/v2/l$a$e;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    :goto_2
    return-object v8

    .line 20
    :cond_7
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
