.class public final Le/a/v/a/c0/k$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/c0/k;->Ij(ZLcom/truecaller/premium/PremiumLaunchContext;Ls1/z/b/a;)Ls1/z/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/c0/k;

.field public final synthetic c:Lcom/truecaller/premium/PremiumLaunchContext;


# direct methods
.method public constructor <init>(Le/a/v/a/c0/k;Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c0/k$a;->b:Le/a/v/a/c0/k;

    iput-object p2, p0, Le/a/v/a/c0/k$a;->c:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/c0/k$a;->b:Le/a/v/a/c0/k;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/c0/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/v/a/c0/k$a;->c:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v1}, Le/a/v/a/c0/e;->W0(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 4
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
