.class public final Le/a/v2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v2/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/d4/c;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/v2/b;->b:Le/a/u3/g;

    .line 2
    new-instance p2, Le/a/v2/b$a;

    invoke-direct {p2, p1}, Le/a/v2/b$a;-><init>(Le/a/d4/c;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v2/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/v2/b;->c()Le/a/d4/e;

    move-result-object v0

    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xaf

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/v2/b;->b:Le/a/u3/g;

    .line 2
    iget-object v2, v0, Le/a/u3/g;->t2:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    aget-object v1, v3, v1

    invoke-virtual {v2, v0, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/v2/b;->b:Le/a/u3/g;

    .line 4
    iget-object v1, v0, Le/a/u3/g;->u3:Le/a/u3/g$a;

    const/16 v2, 0xe6

    aget-object v2, v3, v2

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/v2/b;->b:Le/a/u3/g;

    .line 7
    iget-object v2, v0, Le/a/u3/g;->t2:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    aget-object v1, v3, v1

    invoke-virtual {v2, v0, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/attestation/AttestationEngine;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0}, Le/a/v2/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/v2/b;->c()Le/a/d4/e;

    move-result-object v1

    sget-object v2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Le/a/v2/b;->b:Le/a/u3/g;

    .line 4
    iget-object v3, v1, Le/a/u3/g;->u2:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xb0

    aget-object v4, v4, v5

    invoke-virtual {v3, v1, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/attestation/AttestationEngine;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/truecaller/attestation/AttestationEngine;->SAFETY_NET:Lcom/truecaller/attestation/AttestationEngine;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/truecaller/attestation/AttestationEngine;->PLAY_INTEGRITY:Lcom/truecaller/attestation/AttestationEngine;

    aput-object v2, v0, v1

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/v2/b;->c()Le/a/d4/e;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/truecaller/attestation/AttestationEngine;->SAFETY_NET:Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/a/v2/b;->c()Le/a/d4/e;

    move-result-object v1

    sget-object v2, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/truecaller/attestation/AttestationEngine;->SAFETY_DETECT:Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final c()Le/a/d4/e;
    .locals 1

    iget-object v0, p0, Le/a/v2/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    return-object v0
.end method
