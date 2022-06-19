.class public final Le/a/f4/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/b/b;


# instance fields
.field public final a:Le/a/b0/e/r/a;

.field public final b:Le/a/b0/e/f;


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/b0/e/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/b/c;->a:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/f4/b/c;->b:Le/a/b0/e/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/common/network/KnownDomain;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/f4/b/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$this$toKnownDomain"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/truecaller/common/network/KnownDomain;->values()[Lcom/truecaller/common/network/KnownDomain;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/truecaller/common/network/KnownDomain;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/b/c;->b:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_REGION_1:Lcom/truecaller/common/network/KnownDomain;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_OTHER_REGIONS:Lcom/truecaller/common/network/KnownDomain;

    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/common/network/KnownDomain;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f4/b/c;->a:Le/a/b0/e/r/a;

    const-string v1, "networkDomain"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f4/b/c;->b:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_REGION_1:Lcom/truecaller/common/network/KnownDomain;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_OTHER_REGIONS:Lcom/truecaller/common/network/KnownDomain;

    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/common/network/KnownDomain;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
