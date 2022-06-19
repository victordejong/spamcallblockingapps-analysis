.class public final Le/a/l/e0$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/e0;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Ljava/lang/String;Le/a/l/p2/r0;Le/a/l/p2/v0;Le/a/l/p2/a1;Le/a/l/p2/y;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/z4/d;Le/a/b0/o/a;Le/a/q2/a;Le/a/l/p2/d1;Le/a/p5/h0;Le/a/l/n0;Le/a/l/o2/e;Le/a/l/o2/c;Le/a/l/p2/q0;Le/a/l/o1;Le/a/l/c2;Le/a/l/a/c0;Le/a/l/a/p;Le/a/u3/g;Le/a/c0/h;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/a/k0;Le/a/l/a/l0;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/z/b/a<",
        "+",
        "Ls1/s;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/e0;


# direct methods
.method public constructor <init>(Le/a/l/e0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/e0$d;->b:Le/a/l/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/a/l/i0;

    invoke-direct {v0, p0}, Le/a/l/i0;-><init>(Le/a/l/e0$d;)V

    return-object v0
.end method
