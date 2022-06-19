.class public final Le/a/l/s2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/s2/a;


# instance fields
.field public final a:Le/a/s4/a;

.field public final b:Le/a/c0/h;

.field public final c:Le/a/l/u2/a;


# direct methods
.method public constructor <init>(Le/a/s4/a;Le/a/c0/h;Le/a/l/u2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductStoreProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/s2/b;->a:Le/a/s4/a;

    iput-object p2, p0, Le/a/l/s2/b;->b:Le/a/c0/h;

    iput-object p3, p0, Le/a/l/s2/b;->c:Le/a/l/u2/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/s2/b;->c:Le/a/l/u2/a;

    invoke-interface {v0}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v0

    sget-object v1, Lcom/truecaller/premium/provider/Store;->WEB:Lcom/truecaller/premium/provider/Store;

    const-string v2, "Default"

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/l/s2/b;->b()Lcom/truecaller/premium/personalisation/PersonalisationPromo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Le/a/l/s2/b;->b:Le/a/c0/h;

    .line 4
    iget-object v0, v0, Le/a/c0/h;->b:Le/a/c0/o;

    .line 5
    invoke-virtual {v0}, Le/a/c0/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    move-object v2, v0

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string v2, "Variant3"

    goto :goto_2

    .line 8
    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_5
    const-string v2, "Variant2"

    goto :goto_2

    :cond_6
    const-string v2, "Variant1"

    goto :goto_2

    :cond_7
    const-string v2, "Variant0"

    :cond_8
    :goto_2
    return-object v2
.end method

.method public b()Lcom/truecaller/premium/personalisation/PersonalisationPromo;
    .locals 6

    .line 1
    invoke-static {}, Lcom/truecaller/premium/personalisation/PersonalisationPromo;->values()[Lcom/truecaller/premium/personalisation/PersonalisationPromo;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    .line 3
    invoke-virtual {v2}, Lcom/truecaller/premium/personalisation/PersonalisationPromo;->getRemoteConfigValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/l/s2/b;->a:Le/a/s4/a;

    const-string v5, "personalized_premium_promotion"

    invoke-interface {v4, v5}, Le/a/s4/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/s2/b;->b()Lcom/truecaller/premium/personalisation/PersonalisationPromo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
