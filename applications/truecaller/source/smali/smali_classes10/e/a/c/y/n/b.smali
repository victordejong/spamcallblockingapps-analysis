.class public final Le/a/c/y/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/b/e;

.field public final d:Le/a/c/y/k;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/c/j/e;Le/a/c/b/e;Le/a/c/y/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c0;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;",
            "Le/a/c/b/e;",
            "Le/a/c/y/k;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCardSeedManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/c/y/n/b;->b:Le/a/c/j/e;

    iput-object p3, p0, Le/a/c/y/n/b;->c:Le/a/c/b/e;

    iput-object p4, p0, Le/a/c/y/n/b;->d:Le/a/c/y/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/c/y/n/b;->c:Le/a/c/b/e;

    invoke-interface {v1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "IN"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "\u20b9"

    goto :goto_1

    .line 4
    :cond_1
    sget-object v2, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Le/a/c/c0/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 7
    iget-object p1, p0, Le/a/c/y/n/b;->c:Le/a/c/b/e;

    invoke-interface {p1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/c0/j;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 8
    invoke-static {v1, v2, p1}, Le/a/c/c0/j;->a(DLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payment_due"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payment_notif"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/c/y/n/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "creditcard"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    int-to-double v5, v2

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    return v0
.end method

.method public final d(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payment_due"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "payment_notif"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/c/y/n/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "creditcard"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recharge_expiry"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepaid_bill"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/c/y/n/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
