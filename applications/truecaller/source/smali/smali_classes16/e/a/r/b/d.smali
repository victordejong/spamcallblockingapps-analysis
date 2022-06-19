.class public final Le/a/r/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;Ljava/lang/String;)Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getOptOuts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;->OPTED_OUT:Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;->getOptIns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;->OPTED_IN:Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;->UNKNOWN:Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;

    :goto_0
    return-object p0
.end method
