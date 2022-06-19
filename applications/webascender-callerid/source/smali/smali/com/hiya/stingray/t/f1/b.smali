.class public final Lcom/hiya/stingray/t/f1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n0;->c()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/n;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/hiya/stingray/t/f1/a;->a(Lcom/hiya/stingray/t/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$multiContactNames"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this.name"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "this.sharedIdentities"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/s/h0;->g(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/s/k;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/hiya/stingray/util/c0;->j(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
