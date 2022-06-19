.class public final Le/a/i/f0/l/v/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/v/b;->a(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.provider.fetch.consent.DefaultAdsThirdPartyConsentManager$updateTargetingState$2"
    f = "AdsThirdPartyConsentManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/i/f0/l/v/b;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/v/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/v/b$a;->e:Le/a/i/f0/l/v/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/l/v/b$a;

    iget-object v0, p0, Le/a/i/f0/l/v/b$a;->e:Le/a/i/f0/l/v/b;

    invoke-direct {p1, v0, p2}, Le/a/i/f0/l/v/b$a;-><init>(Le/a/i/f0/l/v/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/l/v/b$a;

    iget-object v0, p0, Le/a/i/f0/l/v/b$a;->e:Le/a/i/f0/l/v/b;

    invoke-direct {p1, v0, p2}, Le/a/i/f0/l/v/b$a;-><init>(Le/a/i/f0/l/v/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/l/v/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/i/f0/l/v/b$a;->e:Le/a/i/f0/l/v/b;

    .line 3
    iget-object p1, p1, Le/a/i/f0/l/v/b;->c:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    const-string v1, "c899990e3188405ab22656014f6e26d7"

    invoke-direct {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 5
    new-instance v1, Le/a/i/f0/l/v/b$a$a;

    invoke-direct {v1, p0}, Le/a/i/f0/l/v/b$a$a;-><init>(Le/a/i/f0/l/v/b$a;)V

    .line 6
    invoke-static {p1, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
