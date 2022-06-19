.class public final Le/a/v2/t;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/v2/l;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.attestation.VerificationAttestationManagerImpl$attest$2"
    f = "VerificationAttestationManager.kt"
    l = {
        0x2a,
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/v2/u;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:J


# direct methods
.method public constructor <init>(Le/a/v2/u;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/t;->g:Le/a/v2/u;

    iput-object p2, p0, Le/a/v2/t;->h:Ljava/lang/String;

    iput-object p3, p0, Le/a/v2/t;->i:Ljava/lang/String;

    iput-wide p4, p0, Le/a/v2/t;->j:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/v2/t;

    iget-object v1, p0, Le/a/v2/t;->g:Le/a/v2/u;

    iget-object v2, p0, Le/a/v2/t;->h:Ljava/lang/String;

    iget-object v3, p0, Le/a/v2/t;->i:Ljava/lang/String;

    iget-wide v4, p0, Le/a/v2/t;->j:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/v2/t;-><init>(Le/a/v2/u;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v2/t;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v2/t;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v2/t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v2/t;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/v2/t;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v2/t;->g:Le/a/v2/u;

    .line 5
    iget-object p1, p1, Le/a/v2/u;->e:Le/a/v2/a;

    .line 6
    invoke-interface {p1}, Le/a/v2/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/attestation/AttestationEngine;

    .line 7
    iget-object p1, p0, Le/a/v2/t;->g:Le/a/v2/u;

    .line 8
    iget-object p1, p1, Le/a/v2/u;->b:Le/a/v2/v/a;

    if-eqz v1, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v2

    .line 9
    :goto_0
    check-cast p1, Le/a/v2/v/b;

    invoke-virtual {p1, v1, v5, v4}, Le/a/v2/v/b;->b(Lcom/truecaller/attestation/AttestationEngine;ZZ)V

    if-eqz v1, :cond_8

    .line 10
    iget-object p1, p0, Le/a/v2/t;->g:Le/a/v2/u;

    .line 11
    iget-object p1, p1, Le/a/v2/u;->d:Le/a/v2/i;

    .line 12
    iget-object v5, p0, Le/a/v2/t;->h:Ljava/lang/String;

    iput-object v1, p0, Le/a/v2/t;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/v2/t;->f:I

    check-cast p1, Le/a/v2/j;

    invoke-virtual {p1, v1, v5, v4, p0}, Le/a/v2/j;->b(Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 13
    :cond_4
    :goto_1
    check-cast p1, Le/a/v2/o;

    .line 14
    instance-of v5, p1, Le/a/v2/o$a;

    if-eqz v5, :cond_5

    .line 15
    iget-object v0, p0, Le/a/v2/t;->g:Le/a/v2/u;

    .line 16
    iget-object v0, v0, Le/a/v2/u;->b:Le/a/v2/v/a;

    .line 17
    check-cast p1, Le/a/v2/o$a;

    .line 18
    iget-object v3, p1, Le/a/v2/o$a;->a:Le/a/v2/l$a;

    .line 19
    invoke-static {v3}, Le/m/d/y/n;->a0(Le/a/v2/l$a;)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Le/a/v2/v/b;

    invoke-virtual {v0, v1, v2, v4, v3}, Le/a/v2/v/b;->a(Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;)V

    .line 20
    iget-object p1, p1, Le/a/v2/o$a;->a:Le/a/v2/l$a;

    goto :goto_3

    .line 21
    :cond_5
    instance-of v2, p1, Le/a/v2/o$b;

    if-eqz v2, :cond_7

    .line 22
    iget-object v2, p0, Le/a/v2/t;->g:Le/a/v2/u;

    .line 23
    iget-object v5, v2, Le/a/v2/u;->b:Le/a/v2/v/a;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v6, v1

    .line 24
    invoke-static/range {v5 .. v11}, Le/m/d/y/n;->I0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ILjava/lang/Object;)V

    .line 25
    iget-object v5, p0, Le/a/v2/t;->g:Le/a/v2/u;

    check-cast p1, Le/a/v2/o$b;

    .line 26
    iget-object p1, p1, Le/a/v2/o$b;->a:Ljava/lang/Object;

    .line 27
    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Le/a/v2/t;->i:Ljava/lang/String;

    iget-wide v9, p0, Le/a/v2/t;->j:J

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/v2/t;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/v2/t;->f:I

    move-object v7, v1

    move-object v11, p0

    invoke-virtual/range {v5 .. v11}, Le/a/v2/u;->a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Le/a/v2/l;

    :goto_3
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 28
    :cond_8
    sget-object p1, Le/a/v2/l$a$b;->b:Le/a/v2/l$a$b;

    :goto_4
    return-object p1
.end method
