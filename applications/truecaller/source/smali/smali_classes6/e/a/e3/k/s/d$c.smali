.class public final Le/a/e3/k/s/d$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/s/d;->a(Lcom/truecaller/data/entity/Number;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/e3/k/s/a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e3/k/s/d;

.field public final synthetic c:Lcom/truecaller/data/entity/Number;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/s/d$c;->b:Le/a/e3/k/s/d;

    iput-object p2, p0, Le/a/e3/k/s/d$c;->c:Lcom/truecaller/data/entity/Number;

    iput-object p3, p0, Le/a/e3/k/s/d$c;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/e3/k/s/a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/e3/k/s/d$c;->b:Le/a/e3/k/s/d;

    iget-object v1, p0, Le/a/e3/k/s/d$c;->c:Lcom/truecaller/data/entity/Number;

    invoke-static {v0, v1}, Le/a/e3/k/s/d;->d(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/e3/k/s/d$c;->d:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0, v1}, Le/a/e3/k/s/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/network/util/calling_cache/CallCacheEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;->getTimestamp()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;->getMaxAgeSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object p1, p0, Le/a/e3/k/s/d$c;->b:Le/a/e3/k/s/d;

    .line 7
    iget-object p1, p1, Le/a/e3/k/s/d;->b:Le/a/p5/c;

    .line 8
    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
