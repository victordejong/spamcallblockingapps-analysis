.class public Lcom/hiya/stingray/t/i1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)Lcom/hiya/stingray/t/p0;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/t/p0;->PRIVATE:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/t/o0;->VOICEMAIL:Lcom/hiya/stingray/t/o0;

    if-ne p2, v0, :cond_1

    .line 4
    sget-object p1, Lcom/hiya/stingray/t/p0;->VOICEMAIL:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 5
    sget-object p1, Lcom/hiya/stingray/t/p0;->MULTI_CONTACT:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    sget-object p3, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne p2, p3, :cond_3

    .line 7
    sget-object p1, Lcom/hiya/stingray/t/p0;->SAVED_CONTACT:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    sget-object p3, Lcom/hiya/stingray/t/o0;->API:Lcom/hiya/stingray/t/o0;

    if-eq p2, p3, :cond_4

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    sget-object p3, Lcom/hiya/stingray/t/o0;->DB_API:Lcom/hiya/stingray/t/o0;

    if-ne p2, p3, :cond_5

    .line 9
    :cond_4
    sget-object p1, Lcom/hiya/stingray/t/p0;->IDENTIFIED:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/o0;->SCREENER:Lcom/hiya/stingray/t/o0;

    if-ne p1, p2, :cond_6

    .line 11
    sget-object p1, Lcom/hiya/stingray/t/p0;->CALL_SCREENED:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    .line 12
    :cond_6
    sget-object p1, Lcom/hiya/stingray/t/p0;->NOT_IDENTIFIED:Lcom/hiya/stingray/t/p0;

    :goto_0
    return-object p1
.end method

.method public b(Lcom/hiya/stingray/t/t0;)Lcom/hiya/stingray/t/p0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hiya/stingray/t/p0;->NOT_IDENTIFIED:Lcom/hiya/stingray/t/p0;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hiya/stingray/t/p0;->IDENTIFIED:Lcom/hiya/stingray/t/p0;

    :goto_0
    return-object p1
.end method
