.class public Le/a/v4/b0;
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
.method public a(Lcom/truecaller/android/sdk/PartnerInformation;Lx3/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/android/sdk/PartnerInformation;",
            "Lx3/d<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/truecaller/android/sdk/PartnerInformation;->partnerKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/v4/h0;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/v4/h0;

    .line 3
    invoke-interface {v1, v0, p1}, Le/a/v4/h0;->a(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 4
    invoke-interface {p1, p2}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public b(Lcom/truecaller/sdk/push/PushAppData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/truecaller/sdk/push/PushAppData;->a:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->API:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/v4/n0;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/v4/n0;

    invoke-interface {v1, v0}, Le/a/v4/n0;->a(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/v4/b0$a;

    invoke-direct {v1, p0, p1}, Le/a/v4/b0$a;-><init>(Le/a/v4/b0;Lcom/truecaller/sdk/push/PushAppData;)V

    invoke-interface {v0, v1}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method
