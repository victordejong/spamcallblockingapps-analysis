.class public final Le/a/v2/g;
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
        "Le/a/v2/w/c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.attestation.AttestationManagerImpl$verifyAttestation$response$1"
    f = "AttestationManager.kt"
    l = {
        0x79
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

    iput-object p1, p0, Le/a/v2/g;->f:Le/a/v2/e;

    iput-object p2, p0, Le/a/v2/g;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/v2/g;->h:Lcom/truecaller/attestation/AttestationEngine;

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

    new-instance p1, Le/a/v2/g;

    iget-object v0, p0, Le/a/v2/g;->f:Le/a/v2/e;

    iget-object v1, p0, Le/a/v2/g;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/v2/g;->h:Lcom/truecaller/attestation/AttestationEngine;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v2/g;-><init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v2/g;

    iget-object v0, p0, Le/a/v2/g;->f:Le/a/v2/e;

    iget-object v1, p0, Le/a/v2/g;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/v2/g;->h:Lcom/truecaller/attestation/AttestationEngine;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v2/g;-><init>(Le/a/v2/e;Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v2/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v2/g;->e:I

    const/4 v2, 0x1

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
    iget-object p1, p0, Le/a/v2/g;->f:Le/a/v2/e;

    .line 5
    iget-object v3, p1, Le/a/v2/e;->c:Le/a/p5/q0/e;

    const/4 v4, 0x2

    .line 6
    iget-wide v5, p1, Le/a/v2/e;->i:J

    .line 7
    sget-object v7, Le/a/v2/g$a;->b:Le/a/v2/g$a;

    .line 8
    new-instance v8, Le/a/v2/g$b;

    invoke-direct {v8, p0}, Le/a/v2/g$b;-><init>(Le/a/v2/g;)V

    iput v2, p0, Le/a/v2/g;->e:I

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Le/a/p5/q0/e;->a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
