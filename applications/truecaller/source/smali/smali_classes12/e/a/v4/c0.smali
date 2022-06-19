.class public Le/a/v4/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/truecaller/android/sdk/PartnerInformation;


# direct methods
.method public constructor <init>(Le/a/v4/b0;Ljava/lang/String;Lcom/truecaller/android/sdk/PartnerInformation;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/a/v4/c0;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/v4/c0;->b:Lcom/truecaller/android/sdk/PartnerInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;",
            "Lx3/a0<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Le/a/v4/c0;->a:Ljava/lang/String;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Le/a/v4/c0;->b:Lcom/truecaller/android/sdk/PartnerInformation;

    iget-object v1, v1, Lcom/truecaller/android/sdk/PartnerInformation;->reqNonce:Ljava/lang/String;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 3
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 4
    iget-object p2, p2, Lu3/k0;->d:Ljava/lang/String;

    aput-object p2, p1, v0

    const-string p2, "TrueSDK - WebPartner: %s, requestId: %s, error: %s"

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    .line 6
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
