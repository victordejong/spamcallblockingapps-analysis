.class public final Le/a/w/a/f;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/w/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/w/a/e;",
        ">;",
        "Le/a/w/a/d;"
    }
.end annotation


# instance fields
.field public b:Lcom/truecaller/data/entity/Contact;

.field public c:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

.field public final d:Ls1/g;

.field public final e:Le/a/j5/a/a;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/w/b/b;

.field public final h:Le/a/w/c/a;

.field public final i:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/j5/a/a;Le/a/p5/c0;Le/a/w/b/b;Le/a/w/c/a;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whatsAppIntegration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralTargetResolver"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/w/a/f;->e:Le/a/j5/a/a;

    iput-object p2, p0, Le/a/w/a/f;->f:Le/a/p5/c0;

    iput-object p3, p0, Le/a/w/a/f;->g:Le/a/w/b/b;

    iput-object p4, p0, Le/a/w/a/f;->h:Le/a/w/c/a;

    iput-object p5, p0, Le/a/w/a/f;->i:Le/a/q2/a;

    .line 2
    new-instance p1, Le/a/w/a/f$a;

    invoke-direct {p1, p0}, Le/a/w/a/f$a;-><init>(Le/a/w/a/f;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/w/a/f;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public final Hj()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w/a/f;->h:Le/a/w/c/a;

    iget-object v1, p0, Le/a/w/a/f;->b:Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Le/a/w/c/a;->b(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    const-string v0, "contact"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final Ij()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/w/a/f;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final Jj()Le/a/k3/l/d;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/w/a/f;->Hj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/w/a/f;->e:Le/a/j5/a/a;

    invoke-virtual {p0}, Le/a/w/a/f;->Ij()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Le/a/j5/a/b;

    invoke-virtual {v1, v0, v2}, Le/a/j5/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/k3/l/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
