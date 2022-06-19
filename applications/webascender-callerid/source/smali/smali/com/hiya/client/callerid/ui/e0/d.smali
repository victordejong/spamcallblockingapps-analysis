.class public final Lcom/hiya/client/callerid/ui/e0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/hiya/client/support/io/hiyaservice/c;
    .locals 1

    const-string v0, "$this$getHiyaProduct"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/support/io/hiyaservice/b;

    invoke-direct {v0, p0}, Lcom/hiya/client/support/io/hiyaservice/b;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/gson/f;

    invoke-direct {p0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/hiya/client/support/io/hiyaservice/b;->a(Lcom/google/gson/f;)Lcom/hiya/client/support/io/hiyaservice/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/support/io/hiyaservice/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hiya/client/support/io/hiyaservice/a;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/s/k;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/support/io/hiyaservice/c;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/hiya/client/support/io/hiyaservice/InvalidHiyaServicesJsonException;

    invoke-direct {p0}, Lcom/hiya/client/support/io/hiyaservice/InvalidHiyaServicesJsonException;-><init>()V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Lcom/hiya/client/support/io/hiyaservice/HiyaServicesJsonMissingException;

    invoke-direct {p0}, Lcom/hiya/client/support/io/hiyaservice/HiyaServicesJsonMissingException;-><init>()V

    throw p0
.end method
