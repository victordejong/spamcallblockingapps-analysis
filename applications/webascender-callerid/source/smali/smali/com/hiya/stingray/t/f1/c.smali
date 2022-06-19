.class public final Lcom/hiya/stingray/t/f1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/t/y0;)Z
    .locals 1

    const-string v0, "$this$isFraud"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lcom/hiya/stingray/t/y0;)Z
    .locals 1

    const-string v0, "$this$isSpam"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lcom/hiya/stingray/t/y0;)Z
    .locals 2

    const-string v0, "$this$isSpamOrFraud"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
