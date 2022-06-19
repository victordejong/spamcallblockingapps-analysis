.class public final Lcom/hiya/client/callerid/ui/b0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/client/callerid/ui/b0/a;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$formattedAddress"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/hiya/client/callerid/ui/b0/b;->c(Lcom/hiya/client/callerid/ui/b0/a;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/hiya/client/callerid/ui/b0/b;->b(Lcom/hiya/client/callerid/ui/b0/a;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    move-object v0, v1

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    return-object v0
.end method

.method public static final b(Lcom/hiya/client/callerid/ui/b0/a;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$formattedCityState"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hiya/client/callerid/ui/e0/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUtil.getFormattedCit\u2026te(this.city, this.state)"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Lcom/hiya/client/callerid/ui/b0/a;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$formattedCityStateZip"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/b0/a;->d()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {v0, v1, p0}, Lcom/hiya/client/callerid/ui/e0/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUtil.getFormattedCit\u2026       this.zip\n        )"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
