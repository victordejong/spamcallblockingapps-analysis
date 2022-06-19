.class public final Lg/g/a/a/i/n/k;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/t<",
        "Lg/g/a/a/i/o/n;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/a;)Lg/g/a/a/i/o/n;
    .locals 5

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->b()V

    .line 3
    new-instance v0, Lg/g/a/a/i/o/n;

    invoke-direct {v0}, Lg/g/a/a/i/o/n;-><init>()V

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->k0()Lcom/google/gson/stream/b;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/google/gson/stream/b;->NAME:Lcom/google/gson/stream/b;

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reader.nextName()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6b072bfd

    const-string v4, "reader.nextString()"

    if-eq v2, v3, :cond_2

    const v3, 0x18405485

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "partnerDisplayName"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/g/a/a/i/o/n;->setPartnerDisplayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "partnerId"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/g/a/a/i/o/n;->setPartnerId(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->i()V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/a/i/n/k;->read(Lcom/google/gson/stream/a;)Lg/g/a/a/i/o/n;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/c;Lg/g/a/a/i/o/n;)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/c;->z()Lcom/google/gson/stream/c;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/c;->q0(Ljava/lang/String;)Lcom/google/gson/stream/c;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lg/g/a/a/i/o/n;

    invoke-virtual {p0, p1, p2}, Lg/g/a/a/i/n/k;->write(Lcom/google/gson/stream/c;Lg/g/a/a/i/o/n;)V

    return-void
.end method
