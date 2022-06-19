.class public final Le/a/i/h0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;

.field public static final b:Ls1/g;

.field public static final c:Ls1/g;

.field public static final d:Le/a/i/h0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/h0/c;

    invoke-direct {v0}, Le/a/i/h0/c;-><init>()V

    sput-object v0, Le/a/i/h0/c;->d:Le/a/i/h0/c;

    .line 2
    sget-object v0, Le/a/i/h0/c$b;->b:Le/a/i/h0/c$b;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/i/h0/c;->a:Ls1/g;

    .line 3
    sget-object v0, Le/a/i/h0/c$c;->b:Le/a/i/h0/c$c;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/i/h0/c;->b:Ls1/g;

    .line 4
    sget-object v0, Le/a/i/h0/c$a;->b:Le/a/i/h0/c$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/i/h0/c;->c:Ls1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "partnerName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i/h0/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Le/a/i/h0/c;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/truecaller/ads/util/AdClickRestrictedPartner;

    .line 4
    invoke-virtual {v3}, Lcom/truecaller/ads/util/AdClickRestrictedPartner;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 5
    :goto_0
    check-cast v2, Lcom/truecaller/ads/util/AdClickRestrictedPartner;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/ads/util/AdClickRestrictedPartner;->getPlacements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/truecaller/ads/util/AdClickRestrictedPartner;->getViews()Ljava/util/List;

    move-result-object v1

    :cond_3
    return-object v1
.end method
