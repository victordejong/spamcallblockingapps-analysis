.class public final Le/a/e3/k/s/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/k/s/d;->c(Lcom/truecaller/data/entity/Number;Ljava/lang/String;Lu3/k0;)V
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
.field public final synthetic b:J

.field public final synthetic c:Le/a/e3/k/s/d;

.field public final synthetic d:Lcom/truecaller/data/entity/Number;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLe/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;Ljava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Le/a/e3/k/s/d$a;->b:J

    iput-object p3, p0, Le/a/e3/k/s/d$a;->c:Le/a/e3/k/s/d;

    iput-object p4, p0, Le/a/e3/k/s/d$a;->d:Lcom/truecaller/data/entity/Number;

    iput-object p5, p0, Le/a/e3/k/s/d$a;->e:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Le/a/e3/k/s/a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;

    iget-object v1, p0, Le/a/e3/k/s/d$a;->c:Le/a/e3/k/s/d;

    iget-object v2, p0, Le/a/e3/k/s/d$a;->d:Lcom/truecaller/data/entity/Number;

    invoke-static {v1, v2}, Le/a/e3/k/s/d;->d(Le/a/e3/k/s/d;Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Le/a/e3/k/s/d$a;->c:Le/a/e3/k/s/d;

    .line 4
    iget-object v1, v1, Le/a/e3/k/s/d;->b:Le/a/p5/c;

    .line 5
    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v3

    iget-object v5, p0, Le/a/e3/k/s/d$a;->e:Ljava/lang/String;

    iget-wide v6, p0, Le/a/e3/k/s/d$a;->b:J

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/Long;ILs1/z/c/f;)V

    invoke-interface {p1, v0}, Le/a/e3/k/s/a;->a(Lcom/truecaller/network/util/calling_cache/CallCacheEntry;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
