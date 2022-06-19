.class public final Le/a/e3/k/s/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/s/d;->b(Lcom/truecaller/data/entity/Number;Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;)V
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
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e3/k/s/d;

.field public final synthetic c:Lcom/truecaller/data/entity/Number;

.field public final synthetic d:Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;


# direct methods
.method public constructor <init>(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/s/d$b;->b:Le/a/e3/k/s/d;

    iput-object p2, p0, Le/a/e3/k/s/d$b;->c:Lcom/truecaller/data/entity/Number;

    iput-object p3, p0, Le/a/e3/k/s/d$b;->d:Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/e3/k/s/a;

    const-string v2, "$receiver"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;

    iget-object v3, v0, Le/a/e3/k/s/d$b;->b:Le/a/e3/k/s/d;

    iget-object v4, v0, Le/a/e3/k/s/d$b;->c:Lcom/truecaller/data/entity/Number;

    invoke-static {v3, v4}, Le/a/e3/k/s/d;->d(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Le/a/e3/k/s/d$b;->b:Le/a/e3/k/s/d;

    .line 4
    iget-object v3, v3, Le/a/e3/k/s/d;->b:Le/a/p5/c;

    .line 5
    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v5

    iget-object v3, v0, Le/a/e3/k/s/d$b;->d:Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    invoke-virtual {v3}, Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;->getInitTtl()I

    move-result v3

    int-to-long v8, v3

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    const-string v7, "initiated"

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/Long;ILs1/z/c/f;)V

    invoke-interface {v1, v2}, Le/a/e3/k/s/a;->a(Lcom/truecaller/network/util/calling_cache/CallCacheEntry;)V

    .line 6
    new-instance v2, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;

    iget-object v3, v0, Le/a/e3/k/s/d$b;->b:Le/a/e3/k/s/d;

    iget-object v4, v0, Le/a/e3/k/s/d$b;->c:Lcom/truecaller/data/entity/Number;

    invoke-static {v3, v4}, Le/a/e3/k/s/d;->d(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v14

    iget-object v3, v0, Le/a/e3/k/s/d$b;->b:Le/a/e3/k/s/d;

    .line 7
    iget-object v3, v3, Le/a/e3/k/s/d;->b:Le/a/p5/c;

    .line 8
    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v15

    iget-object v3, v0, Le/a/e3/k/s/d$b;->d:Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;

    invoke-virtual {v3}, Lcom/truecaller/api/services/callerid/v1/CallNotificationResponse;->getEndTtl()I

    move-result v3

    int-to-long v3, v3

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    const-string v17, "ended"

    move-object v13, v2

    move-wide/from16 v18, v3

    invoke-direct/range {v13 .. v22}, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/Long;ILs1/z/c/f;)V

    invoke-interface {v1, v2}, Le/a/e3/k/s/a;->a(Lcom/truecaller/network/util/calling_cache/CallCacheEntry;)V

    .line 9
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
