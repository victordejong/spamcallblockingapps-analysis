.class public final Lcom/hiya/stingray/manager/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/d1$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/hiya/stingray/manager/d1$a;Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/d1$a;->a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/d0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/b0;->WHITE_LISTED:Lcom/hiya/stingray/t/b0;

    if-eq v0, v1, :cond_0

    const-string p1, "blocked"

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v1, "item.identityData"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v0

    sget-object v2, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne v0, v2, :cond_1

    const-string p1, "saved_contact"

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "private"

    goto/16 :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    const-string v2, "item.reputationDataItem"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hiya/stingray/t/f1/c;->b(Lcom/hiya/stingray/t/y0;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hiya/stingray/t/f1/c;->a(Lcom/hiya/stingray/t/y0;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v0

    sget-object v2, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne v0, v2, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "name_available"

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/t/o0;->SCREENER:Lcom/hiya/stingray/t/o0;

    if-eq p2, v0, :cond_7

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p2

    if-ne p2, v2, :cond_5

    const-string p1, "identified_person"

    goto :goto_1

    .line 8
    :cond_5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-ne p1, p2, :cond_6

    const-string p1, "identified_business"

    goto :goto_1

    :cond_6
    const-string p1, "identified"

    goto :goto_1

    .line 9
    :cond_7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/o0;->SCREENER:Lcom/hiya/stingray/t/o0;

    if-ne p1, p2, :cond_8

    const-string p1, "screened"

    goto :goto_1

    :cond_8
    const-string p1, "unidentified"

    goto :goto_1

    .line 10
    :cond_9
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "flagged_upsell"

    goto :goto_1

    :cond_a
    const-string p1, "flagged"

    :goto_1
    return-object p1
.end method

.method public final b(Lcom/hiya/stingray/t/t0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->a()Lcom/hiya/stingray/t/m0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string p1, "identified"

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->a()Lcom/hiya/stingray/t/m0;

    move-result-object v0

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "name_available"

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->a()Lcom/hiya/stingray/t/m0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-ne p1, p2, :cond_3

    const-string p1, "business"

    goto :goto_0

    :cond_3
    const-string p1, "unidentified"

    :goto_0
    return-object p1
.end method

.method public d(Lg/g/b/c/q;)Ljava/lang/String;
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/c1;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "fraud"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "spam"

    goto :goto_0

    :cond_2
    const-string p1, "uncertain"

    goto :goto_0

    :cond_3
    const-string p1, "ok"

    :goto_0
    return-object p1
.end method

.method public e(Lcom/hiya/stingray/t/y0;)Ljava/lang/String;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/c1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "fraud"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "spam"

    goto :goto_0

    :cond_2
    const-string p1, "uncertain"

    goto :goto_0

    :cond_3
    const-string p1, "ok"

    :goto_0
    return-object p1
.end method
