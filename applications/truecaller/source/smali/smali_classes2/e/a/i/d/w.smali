.class public final Le/a/i/d/w;
.super Le/a/i/d/s;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/d/s<",
        "Le/a/i/d/n$c;",
        ">;",
        "Le/a/i/d/j;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/f0/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/d/s;-><init>(Le/a/i/f0/c;)V

    return-void
.end method


# virtual methods
.method public A(Le/a/i/d/n;Le/a/i/f0/m/d;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/i/d/n$c;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdHouseHolder"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/i/f0/m/f;

    invoke-interface {p1, p2}, Le/a/i/d/n$c;->C1(Le/a/i/f0/m/f;)V

    return-void
.end method

.method public B(Le/a/i/f0/m/d;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/truecaller/ads/provider/holders/AdHolderType;->HOUSE_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
