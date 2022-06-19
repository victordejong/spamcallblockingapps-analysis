.class public final Lg/g/a/a/i/n/g;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/t<",
        "Lg/g/a/a/i/o/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final gson$delegate:Lkotlin/g;

.field private final selectGrantInfoAdapter$delegate:Lkotlin/g;

.field private final selectInfoAdapter$delegate:Lkotlin/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    .line 2
    sget-object v0, Lg/g/a/a/i/n/g$a;->INSTANCE:Lg/g/a/a/i/n/g$a;

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/n/g;->gson$delegate:Lkotlin/g;

    .line 3
    new-instance v0, Lg/g/a/a/i/n/g$c;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/g$c;-><init>(Lg/g/a/a/i/n/g;)V

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/n/g;->selectInfoAdapter$delegate:Lkotlin/g;

    .line 4
    new-instance v0, Lg/g/a/a/i/n/g$b;

    invoke-direct {v0, p0}, Lg/g/a/a/i/n/g$b;-><init>(Lg/g/a/a/i/n/g;)V

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/n/g;->selectGrantInfoAdapter$delegate:Lkotlin/g;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lg/g/a/a/i/n/g;)Lcom/google/gson/f;
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/a/i/n/g;->getGson()Lcom/google/gson/f;

    move-result-object p0

    return-object p0
.end method

.method private final getGson()Lcom/google/gson/f;
    .locals 1

    iget-object v0, p0, Lg/g/a/a/i/n/g;->gson$delegate:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/f;

    return-object v0
.end method

.method private final getSelectGrantInfoAdapter()Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/t<",
            "Lg/g/a/a/i/o/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/g/a/a/i/n/g;->selectGrantInfoAdapter$delegate:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/t;

    return-object v0
.end method

.method private final getSelectInfoAdapter()Lcom/google/gson/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/t<",
            "Lg/g/a/a/i/o/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/g/a/a/i/n/g;->selectInfoAdapter$delegate:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/t;

    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/a;)Lg/g/a/a/i/o/i;
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->b()V

    const/4 v0, 0x0

    const-string v1, ""

    move-object v4, v0

    move-object v2, v1

    move-object v3, v2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->k0()Lcom/google/gson/stream/b;

    move-result-object v5

    .line 5
    sget-object v6, Lcom/google/gson/stream/b;->NAME:Lcom/google/gson/stream/b;

    if-ne v5, v6, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->K()Ljava/lang/String;

    move-result-object v5

    const-string v6, "reader.nextName()"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "reader.nextString()"

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "type"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "ctn"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->X()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v6, "refreshToken"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->X()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v6, "hiyaSelectInfo"

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    invoke-direct {p0}, Lg/g/a/a/i/n/g;->getSelectInfoAdapter()Lcom/google/gson/t;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/gson/t;->read(Lcom/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/a/a/i/o/n;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->i()V

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    const-string p1, "FirebaseTokenGrantInfo"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    new-instance v0, Lg/g/a/a/i/o/m;

    invoke-direct {v0}, Lg/g/a/a/i/o/m;-><init>()V

    .line 20
    invoke-virtual {v0, v4}, Lg/g/a/a/i/o/m;->setHiyaSelectInfoDTO(Lg/g/a/a/i/o/n;)V

    .line 21
    invoke-virtual {v0, v1}, Lg/g/a/a/i/o/m;->setType(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_5
    const-string p1, "HiyaJWSGrant"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :sswitch_6
    const-string p1, "AttSnapRefreshTokenGrantInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :sswitch_7
    const-string p1, "AttSnapTokenGrantInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    :goto_1
    new-instance v0, Lg/g/a/a/i/o/v;

    invoke-direct {v0}, Lg/g/a/a/i/o/v;-><init>()V

    .line 24
    invoke-virtual {v0, v2}, Lg/g/a/a/i/o/v;->setCtn(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v3}, Lg/g/a/a/i/o/v;->setRefreshToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lg/g/a/a/i/o/v;->setType(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x48707b8d -> :sswitch_3
        -0x35e3822 -> :sswitch_2
        0x1821d -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x29440cbc -> :sswitch_7
        0x42a08081 -> :sswitch_6
        0x737d82ff -> :sswitch_5
        0x793c0bf8 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/a/i/n/g;->read(Lcom/google/gson/stream/a;)Lg/g/a/a/i/o/i;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/c;Lg/g/a/a/i/o/i;)V
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
    check-cast p2, Lg/g/a/a/i/o/i;

    invoke-virtual {p0, p1, p2}, Lg/g/a/a/i/n/g;->write(Lcom/google/gson/stream/c;Lg/g/a/a/i/o/i;)V

    return-void
.end method
