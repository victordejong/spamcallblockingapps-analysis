.class public final Lcom/truecaller/insights/binders/utils/OrderStatus$j;
.super Lcom/truecaller/insights/binders/utils/OrderStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/binders/utils/OrderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "transit"

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

    sget-object v0, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingToday:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne p1, v0, :cond_0

    const-string p1, "Arriving Today"

    goto :goto_0

    :cond_0
    const-string p1, "Arriving Soon"

    :goto_0
    return-object p1
.end method

.method public uiSubTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 2

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingToday:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Delivery date: "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    invoke-static {p1}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->b(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public uiTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
    .locals 2

    const-string v0, "domain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->ArrivingToday:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v0, v1, :cond_0

    const-string p1, "Arriving Today"

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "Arriving: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Arriving Soon"

    :goto_1
    return-object p1
.end method
