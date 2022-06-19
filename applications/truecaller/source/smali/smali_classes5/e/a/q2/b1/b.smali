.class public final Le/a/q2/b1/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/q2/b1/a;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Le/a/q2/b1/b;->d:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/q2/b1/b;->b:I

    const-string p1, "analytics"

    .line 3
    iput-object p1, p0, Le/a/q2/b1/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/q2/b1/b;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/b1/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_3

    const/4 p1, 0x0

    const-string v0, "tc.settings"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string p1, "oldSharedPreferences"

    .line 2
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uploadEventsRetryJitter"

    const-string p2, "analyticsID"

    const-string v0, "uploadEventsMaxBatchSize"

    const-string v1, "uploadEventsMinBatchSize"

    .line 3
    filled-new-array {p1, p2, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-static/range {v1 .. v6}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    .line 6
    iget-object p1, p0, Le/a/q2/b1/b;->d:Landroid/content/SharedPreferences;

    const-string p2, "key"

    const-string v0, "analyticsUploadEnhancedBatchSize"

    .line 7
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x1

    .line 10
    :try_start_0
    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7fffffff

    int-to-long v3, v2

    cmp-long v3, p1, v3

    const/high16 v4, -0x80000000

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    long-to-int v2, p1

    .line 11
    :goto_0
    invoke-virtual {p0, v0, v2}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v1, :cond_3

    .line 12
    new-instance p1, Lcom/truecaller/log/UnmutedException$o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/truecaller/log/UnmutedException$o;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
