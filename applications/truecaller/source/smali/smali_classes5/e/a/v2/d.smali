.class public final Le/a/v2/d;
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
        "Le/a/v2/o<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.attestation.AttestationManagerImpl$attest$5"
    f = "AttestationManager.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v2/e;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/truecaller/attestation/AttestationEngine;


# direct methods
.method public constructor <init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/d;->f:Le/a/v2/e;

    iput-object p2, p0, Le/a/v2/d;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/v2/d;->h:Lcom/truecaller/attestation/AttestationEngine;

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

    new-instance p1, Le/a/v2/d;

    iget-object v0, p0, Le/a/v2/d;->f:Le/a/v2/e;

    iget-object v1, p0, Le/a/v2/d;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/v2/d;->h:Lcom/truecaller/attestation/AttestationEngine;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v2/d;-><init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v2/d;

    iget-object v0, p0, Le/a/v2/d;->f:Le/a/v2/e;

    iget-object v1, p0, Le/a/v2/d;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/v2/d;->h:Lcom/truecaller/attestation/AttestationEngine;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v2/d;-><init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v2/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v2/d;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/v2/d;->f:Le/a/v2/e;

    .line 5
    iget-object p1, p1, Le/a/v2/e;->h:Le/a/v2/i;

    .line 6
    iget-object v1, p0, Le/a/v2/d;->h:Lcom/truecaller/attestation/AttestationEngine;

    iget-object v4, p0, Le/a/v2/d;->g:Ljava/lang/String;

    iput v2, p0, Le/a/v2/d;->e:I

    check-cast p1, Le/a/v2/j;

    invoke-virtual {p1, v1, v4, v3, p0}, Le/a/v2/j;->b(Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    move-object v0, p1

    check-cast v0, Le/a/v2/o;

    .line 8
    instance-of v1, v0, Le/a/v2/o$b;

    if-eqz v1, :cond_3

    iget-object v0, p0, Le/a/v2/d;->f:Le/a/v2/e;

    .line 9
    iget-object v1, v0, Le/a/v2/e;->e:Le/a/v2/v/a;

    .line 10
    iget-object v2, p0, Le/a/v2/d;->h:Lcom/truecaller/attestation/AttestationEngine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Le/m/d/y/n;->I0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_3
    instance-of v1, v0, Le/a/v2/o$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/v2/d;->f:Le/a/v2/e;

    .line 12
    iget-object v1, v1, Le/a/v2/e;->e:Le/a/v2/v/a;

    .line 13
    iget-object v2, p0, Le/a/v2/d;->h:Lcom/truecaller/attestation/AttestationEngine;

    .line 14
    check-cast v0, Le/a/v2/o$a;

    .line 15
    iget-object v0, v0, Le/a/v2/o$a;->a:Le/a/v2/l$a;

    .line 16
    invoke-static {v0}, Le/m/d/y/n;->a0(Le/a/v2/l$a;)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    check-cast v1, Le/a/v2/v/b;

    invoke-virtual {v1, v2, v3, v3, v0}, Le/a/v2/v/b;->a(Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;)V

    :cond_4
    :goto_1
    return-object p1
.end method
