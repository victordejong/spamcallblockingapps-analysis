.class public final Le/a/l/p2/g1$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/g1;->b(Le/a/l/p2/l1;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumSubscriptionsProviderImpl"
    f = "PremiumSubscriptionsProvider.kt"
    l = {
        0x1d,
        0x1e
    }
    m = "getSubscriptions"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/l/p2/g1;


# direct methods
.method public constructor <init>(Le/a/l/p2/g1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/g1$c;->f:Le/a/l/p2/g1;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/l/p2/g1$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/l/p2/g1$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/l/p2/g1$c;->e:I

    iget-object p1, p0, Le/a/l/p2/g1$c;->f:Le/a/l/p2/g1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/l/p2/g1;->b(Le/a/l/p2/l1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
