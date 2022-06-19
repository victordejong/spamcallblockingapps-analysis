.class public final Lg/g/b/a/k/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneCountryHint"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashingDecisionInput"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCountryCode"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2, p3}, Lg/g/b/a/k/j;->c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/g/a/a/i/h;->getPhone()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static final b(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/h;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lg/g/c/a/a/a/c;

    invoke-direct {v3, p3}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p3, Lg/g/c/a/a/a/i$e;

    invoke-direct {p3, p2}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p2, Lg/g/c/a/a/a/j;

    new-array v4, v1, [Lg/g/c/a/a/a/i;

    aput-object p3, v4, v0

    invoke-direct {p2, p1, v4}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    .line 4
    invoke-virtual {p0, p2, v3}, Lcom/hiya/common/phone/java/PhoneNormalizer;->e(Lg/g/c/a/a/a/j;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p0

    .line 5
    iget-object p2, p0, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    iget-object p2, p2, Lg/g/c/a/a/a/g;->f:Ljava/lang/String;

    invoke-static {}, Lg/g/a/a/i/f;->newBuilder()Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 6
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->j:Lcom/google/common/base/j;

    const-string v4, "pm.meta.areaCode"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->j:Lcom/google/common/base/j;

    invoke-virtual {v3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p3, v3}, Lg/g/a/a/i/f$b;->withAreaCode(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 7
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->i:Lcom/google/common/base/j;

    const-string v4, "pm.meta.country"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->i:Lcom/google/common/base/j;

    invoke-virtual {v3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/c/a/a/a/c;

    iget-object v3, v3, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {p3, v3}, Lg/g/a/a/i/f$b;->withCountryCode(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 8
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-boolean v3, v3, Lg/g/c/a/c/a/a;->h:Z

    invoke-virtual {p3, v3}, Lg/g/a/a/i/f$b;->withIsShortCode(Z)Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 9
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-boolean v3, v3, Lg/g/c/a/c/a/a;->g:Z

    invoke-virtual {p3, v3}, Lg/g/a/a/i/f$b;->withIsValid(Z)Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 10
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->k:Lcom/google/common/base/j;

    const-string v4, "pm.meta.lineType"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->k:Lcom/google/common/base/j;

    invoke-virtual {v3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/c/a/b/a/a;

    invoke-virtual {v3}, Lg/g/c/a/b/a/a;->id()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {p3, v3}, Lg/g/a/a/i/f$b;->withLineType(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 11
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->l:Lcom/google/common/base/j;

    const-string v4, "pm.meta.rawPhone"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->l:Lcom/google/common/base/j;

    invoke-virtual {v3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    invoke-virtual {p3, v3}, Lg/g/a/a/i/f$b;->withRawPhone(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object p3

    .line 12
    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->f:Ljava/lang/String;

    const-string v4, "pm.meta.parserVersion"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_6

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->f:Ljava/lang/String;

    const-string v4, "0.0"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object p0, p0, Lg/g/c/a/c/a/a;->f:Ljava/lang/String;

    goto :goto_6

    :cond_6
    :goto_5
    const-string p0, "5.0.2"

    :goto_6
    invoke-virtual {p3, p0}, Lg/g/a/a/i/f$b;->withParserVersion(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lg/g/a/a/i/f$b;->build()Lg/g/a/a/i/f;

    move-result-object p0

    .line 14
    new-instance p3, Lg/g/a/a/i/h;

    invoke-direct {p3, p2, p0}, Lg/g/a/a/i/h;-><init>(Ljava/lang/String;Lg/g/a/a/i/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "PhoneUtils"

    const-string p3, "Failed to parse phonenumber %s"

    .line 15
    invoke-static {p1, p0, p3, p2}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Lg/g/a/a/i/h;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneCountryHint"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashingDecisionInput"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCountryCode"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->i(Lcom/hiya/common/phone/parser/PhoneParser;Lcom/hiya/common/phone/java/PhoneNormalizer$c;)Lcom/hiya/common/phone/java/PhoneNormalizer;

    move-result-object p2

    const-string v0, "PhoneNormalizer.withHash\u2026ngDecisionInput\n        )"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2, p0, p1, p3}, Lg/g/b/a/k/j;->b(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/h;
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneCountryHint"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCountryCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/hiya/common/phone/java/PhoneNormalizer;->j(Lcom/hiya/common/phone/parser/PhoneParser;)Lcom/hiya/common/phone/java/PhoneNormalizer;

    move-result-object v0

    const-string v1, "PhoneNormalizer.withoutH\u2026tWeightParser()\n        )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0, p1, p2}, Lg/g/b/a/k/j;->b(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lg/g/a/a/i/h;)Ljava/lang/String;
    .locals 8

    const-string v0, "$this$toE164"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/g/a/a/i/h;->getPhone()Ljava/lang/String;

    move-result-object v2

    const-string p0, "this.phone"

    invoke-static {v2, p0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
