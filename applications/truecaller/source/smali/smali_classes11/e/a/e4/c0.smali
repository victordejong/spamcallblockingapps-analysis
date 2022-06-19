.class public Le/a/e4/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/b0;


# instance fields
.field public a:J

.field public final b:Le/a/e4/p;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/multisim/SimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/e4/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/a/e4/c0;->c:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Le/a/e4/c0;->b:Le/a/e4/p;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/e4/c0;->a:J

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/e4/c0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/e4/c0;->a:J

    .line 4
    iget-object v0, p0, Le/a/e4/c0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/e4/c0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/multisim/SimInfo;

    return-object p1

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/e4/c0;->b:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/e4/c0;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
