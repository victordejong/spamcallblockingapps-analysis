.class public final Lcom/truecaller/insights/binders/utils/OrderStatus$h;
.super Lcom/truecaller/insights/binders/utils/OrderStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/binders/utils/OrderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "return"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/truecaller/insights/binders/utils/OrderStatus;-><init>(Ljava/lang/String;ILjava/lang/String;Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public uiOrderStatus(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "Pickup Complete"

    goto :goto_1

    :cond_2
    const-string p1, "Return Pickup"

    goto :goto_1

    :cond_3
    const-string p1, "Exchange"

    :goto_1
    return-object p1
.end method

.method public uiSubTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 2

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Pickup date: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    invoke-static {p1}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->b(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public uiTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 2

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "Pickup Complete"

    return-object p1

    :cond_2
    const-string v0, "Return Pickup"

    goto :goto_1

    :cond_3
    const-string v0, "Exchange"

    .line 2
    :goto_1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    const-string v1, ": "

    .line 3
    invoke-static {v0, v1}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method
