.class public final Le/a/a/m/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/z4/d;

.field public final b:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/z4/d;Le/a/b0/q/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/o2;->a:Le/a/z4/d;

    iput-object p2, p0, Le/a/a/m/o2;->b:Le/a/b0/q/l0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "lastShowtimeTimestampKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/o2;->b:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/a/m/o2;->a:Le/a/z4/d;

    const-string v3, "key_unimportant_promo_last_time"

    invoke-interface {v2, v3, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v2, p0, Le/a/a/m/o2;->a:Le/a/z4/d;

    invoke-interface {v2, p1, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "lastShowtimeTimestampKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/o2;->a:Le/a/z4/d;

    const-string v1, "feature_unimportant_promo_dismissed_delay_days"

    const-wide/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/a/m/o2;->b:Le/a/b0/q/l0;

    invoke-virtual {v2}, Le/a/b0/q/l0;->c()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Le/a/a/m/o2;->a:Le/a/z4/d;

    invoke-interface {v2, p1, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "lastShowtimeTimestampKey"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/a/m/o2;->a:Le/a/z4/d;

    iget-object v3, v0, Le/a/a/m/o2;->b:Le/a/b0/q/l0;

    const-string v4, "key_unimportant_promo_last_time"

    const-wide/16 v9, 0x0

    .line 2
    invoke-interface {v2, v4, v9, v10}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "feature_global_unimportant_promo_period_days"

    const-wide/16 v7, 0x3

    .line 3
    invoke-interface {v2, v6, v7, v8}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 4
    sget-object v16, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v0, Le/a/a/m/o2;->a:Le/a/z4/d;

    iget-object v11, v0, Le/a/a/m/o2;->b:Le/a/b0/q/l0;

    .line 6
    invoke-interface {v2, v1, v9, v10}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v3, 0x7

    const-string v1, "feature_unimportant_promo_period_days"

    .line 7
    invoke-interface {v2, v1, v3, v4}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 8
    invoke-virtual/range {v11 .. v16}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
