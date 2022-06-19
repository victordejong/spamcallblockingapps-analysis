.class public final Le/a/d/c0/a2/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/common/network/KnownDomain;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/a2/c;


# direct methods
.method public constructor <init>(Le/a/d/c0/a2/c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/a2/b;->b:Le/a/d/c0/a2/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/a2/b;->b:Le/a/d/c0/a2/c;

    .line 2
    iget-object v0, v0, Le/a/d/c0/a2/c;->e:Le/a/f4/b/b;

    .line 3
    invoke-interface {v0}, Le/a/f4/b/b;->a()Lcom/truecaller/common/network/KnownDomain;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :goto_0
    sget-object v0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_REGION_1:Lcom/truecaller/common/network/KnownDomain;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_OTHER_REGIONS:Lcom/truecaller/common/network/KnownDomain;

    :goto_1
    return-object v0
.end method
