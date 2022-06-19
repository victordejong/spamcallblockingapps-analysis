.class public final Le/a/i/f0/k/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/k/d;-><init>(Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/i/w/d;Le/a/z4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/common/network/util/KnownEndpoints;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/f0/k/d;


# direct methods
.method public constructor <init>(Le/a/i/f0/k/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/k/d$a;->b:Le/a/i/f0/k/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/f0/k/d$a;->b:Le/a/i/f0/k/d;

    .line 2
    iget-object v0, v0, Le/a/i/f0/k/d;->d:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->E5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x15c

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->ADS_CAMPAIGN:Lcom/truecaller/common/network/util/KnownEndpoints;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->ADS:Lcom/truecaller/common/network/util/KnownEndpoints;

    :goto_0
    return-object v0
.end method
