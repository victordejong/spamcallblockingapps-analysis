.class public final Lcom/hiya/client/callerid/ui/b0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/client/callerid/ui/b0/f;Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/k;
    .locals 1

    const-string v0, "$this$getPhoneTypeFromPhone"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/f;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/f;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/f;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/s/b0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/hiya/client/callerid/ui/b0/k;->mapPhoneType(I)Lcom/hiya/client/callerid/ui/b0/k;

    move-result-object p0

    const-string p1, "PhoneType.mapPhoneType(phones.getValue(phone))"

    invoke-static {p0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lcom/hiya/client/callerid/ui/b0/k;->PHONE:Lcom/hiya/client/callerid/ui/b0/k;

    :goto_1
    return-object p0
.end method
