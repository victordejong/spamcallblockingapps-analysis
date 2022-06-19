.class public final Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/e/p<",
        "Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/e/q;Ljava/lang/reflect/Type;Le/m/e/o;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object p2, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;->Companion:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type$a;

    invoke-virtual {p1}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;->values()[Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 4
    aget-object v0, p2, p3

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;->GENERIC:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    :goto_2
    return-object v0
.end method
