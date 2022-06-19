.class public final Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;,
        Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;,
        Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$b;
    }
.end annotation


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/s4/a;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/l/p2/v0;

.field public final e:Le/a/l/c2;


# direct methods
.method public constructor <init>(Le/a/s4/a;Le/a/u3/g;Le/a/l/p2/v0;Le/a/l/c2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->b:Le/a/s4/a;

    iput-object p2, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->c:Le/a/u3/g;

    iput-object p3, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->d:Le/a/l/p2/v0;

    iput-object p4, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->e:Le/a/l/c2;

    .line 2
    new-instance p1, Le/m/e/l;

    invoke-direct {p1}, Le/m/e/l;-><init>()V

    const-class p2, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    new-instance p3, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$b;

    invoke-direct {p3}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$b;-><init>()V

    invoke-virtual {p1, p2, p3}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    invoke-virtual {p1}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p1

    const-string p2, "GsonBuilder().registerTy\u2026eDeserializer()).create()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->a:Le/m/e/k;

    return-void
.end method
