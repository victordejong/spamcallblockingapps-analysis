.class public final Le/a/l/p2/e1$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/e1;->e(Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumSubscriptionsHelperImpl"
    f = "PremiumSubscriptionsHelper.kt"
    l = {
        0x10b,
        0x10c,
        0x11e
    }
    m = "fetchSubscriptions"
.end annotation


# instance fields
.field public A:Z

.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/l/p2/e1;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:Ljava/lang/Object;

.field public z:Z


# direct methods
.method public constructor <init>(Le/a/l/p2/e1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/e1$b;->f:Le/a/l/p2/e1;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Le/a/l/p2/e1$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/l/p2/e1$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/l/p2/e1$b;->e:I

    iget-object v0, p0, Le/a/l/p2/e1$b;->f:Le/a/l/p2/e1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Le/a/l/p2/e1;->e(Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
