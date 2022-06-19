.class public final Le/a/i/h0/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/h0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/ads/util/AdClickRestrictedPartner;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/h0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/h0/c$a;

    invoke-direct {v0}, Le/a/i/h0/c$a;-><init>()V

    sput-object v0, Le/a/i/h0/c$a;->b:Le/a/i/h0/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Le/a/i/h0/c;->d:Le/a/i/h0/c;

    .line 2
    sget-object v0, Le/a/i/h0/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->o4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x116

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    :try_start_0
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    .line 6
    new-instance v4, Le/a/i/h0/b;

    invoke-direct {v4}, Le/a/i/h0/b;-><init>()V

    invoke-virtual {v4}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-string v5, "object : TypeToken<T>() {}.type"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0, v4}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/ads/util/AdClickRestrictedPartnerConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_2
    instance-of v1, v0, Ls1/l$a;

    if-eqz v1, :cond_2

    move-object v0, v3

    .line 10
    :cond_2
    check-cast v0, Lcom/truecaller/ads/util/AdClickRestrictedPartnerConfig;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/truecaller/ads/util/AdClickRestrictedPartnerConfig;->getPartners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    move-object v3, v0

    :cond_3
    return-object v3
.end method
