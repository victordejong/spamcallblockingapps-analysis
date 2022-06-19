.class final Lcom/hiya/stingray/manager/y2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/y2;->m(Ljava/lang/String;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/t/c0;",
        ">;",
        "Lcom/hiya/stingray/t/h0;",
        "Lcom/hiya/stingray/t/d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/y2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/y2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/y2$c;->a:Lcom/hiya/stingray/manager/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/hiya/stingray/t/h0;)Lcom/hiya/stingray/t/d0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c0;",
            ">;",
            "Lcom/hiya/stingray/t/h0;",
            ")",
            "Lcom/hiya/stingray/t/d0;"
        }
    .end annotation

    const-string v0, "item"

    .line 1
    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/h0;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/hiya/stingray/manager/y2$c;->a:Lcom/hiya/stingray/manager/y2;

    invoke-static {v3}, Lcom/hiya/stingray/manager/y2;->f(Lcom/hiya/stingray/manager/y2;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PhoneNumberUtil.formatPh\u2026oE164(item.phone, simIso)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/y2$c;->a:Lcom/hiya/stingray/manager/y2;

    invoke-static {v2}, Lcom/hiya/stingray/manager/y2;->a(Lcom/hiya/stingray/manager/y2;)Lcom/hiya/stingray/t/i1/e;

    move-result-object v2

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    const-string v3, "list"

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/hiya/stingray/t/c0;

    const-string v6, "it"

    .line 4
    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/hiya/stingray/t/c0;->k()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    iget-object v7, p0, Lcom/hiya/stingray/manager/y2$c;->a:Lcom/hiya/stingray/manager/y2;

    invoke-static {v7}, Lcom/hiya/stingray/manager/y2;->f(Lcom/hiya/stingray/manager/y2;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhoneNumberUtil.formatPh\u20264(it.parsedPhone, simIso)"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    invoke-static {v5, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 6
    sget-object p1, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    goto :goto_4

    .line 7
    :cond_5
    sget-object p1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    .line 8
    :goto_4
    invoke-virtual {v2, p2, p1}, Lcom/hiya/stingray/t/i1/e;->d(Lcom/hiya/stingray/t/h0;Lcom/hiya/stingray/t/b0;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/hiya/stingray/t/h0;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/y2$c;->a(Ljava/util/List;Lcom/hiya/stingray/t/h0;)Lcom/hiya/stingray/t/d0;

    move-result-object p1

    return-object p1
.end method
