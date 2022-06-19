.class public final Le/a/v2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v2/a;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Le/a/d4/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/v2/r$a;

    invoke-direct {v0, p1}, Le/a/v2/r$a;-><init>(Le/a/d4/c;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v2/r;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v2/r;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/attestation/AttestationEngine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v2/r;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    .line 2
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/truecaller/attestation/AttestationEngine;->SAFETY_NET:Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/truecaller/attestation/AttestationEngine;->SAFETY_DETECT:Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 4
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
