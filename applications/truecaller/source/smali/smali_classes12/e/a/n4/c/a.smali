.class public abstract Le/a/n4/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n4/c/d;


# instance fields
.field public final a:I

.field public b:Z

.field public final c:Le/a/n4/a;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/q2/a;

.field public final f:Le/a/o5/f0;

.field public final g:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/n4/a;Le/a/u3/g;Le/a/q2/a;Le/a/o5/f0;Le/a/p5/c;)V
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    iput-object p2, p0, Le/a/n4/c/a;->d:Le/a/u3/g;

    iput-object p3, p0, Le/a/n4/c/a;->e:Le/a/q2/a;

    iput-object p4, p0, Le/a/n4/c/a;->f:Le/a/o5/f0;

    iput-object p5, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    const/4 p1, 0x6

    .line 2
    iput p1, p0, Le/a/n4/c/a;->a:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    iget-object v1, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string v3, "LastCallLogPromoDismissedOn"

    invoke-interface {v0, v3, v1, v2}, Le/a/b0/g/b;->a(Ljava/lang/String;J)V

    .line 2
    invoke-interface {p0}, Le/a/n4/c/d;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/l4/k;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Le/a/b0/g/b;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0, v2}, Le/a/b0/g/b;->d(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    invoke-interface {p0}, Le/a/n4/c/d;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Promo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Le/a/l4/k;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DismissTimestamp"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/g/b;->a(Ljava/lang/String;J)V

    const-string v0, "Dismissed"

    .line 8
    invoke-virtual {p0, v0}, Le/a/n4/c/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/a/n4/c/a;->b:Z

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lw3/b/a/b;

    .line 3
    iget-object v1, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    const-wide/16 v2, 0x0

    const-string v4, "LastCallLogPromoShownOn"

    invoke-interface {v1, v4, v2, v3}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 4
    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    .line 5
    iget v1, p0, Le/a/n4/c/a;->a:I

    .line 6
    invoke-virtual {v0, v1}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v0

    iget-object v1, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/b/a/e0/c;->e(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v4, v1, v2}, Le/a/b0/g/b;->a(Ljava/lang/String;J)V

    :cond_0
    const-string v0, "Shown"

    .line 8
    invoke-virtual {p0, v0}, Le/a/n4/c/a;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Le/a/n4/c/a;->b:Z

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 12

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    const-string v2, "KeyCallLogPromoDisabledUntil"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    .line 2
    iget-object v1, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/b/a/e0/c;->h(J)Z

    move-result v0

    .line 3
    new-instance v1, Lw3/b/a/b;

    iget-object v2, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    const-string v5, "LastCallLogPromoDismissedOn"

    invoke-interface {v2, v5, v3, v4}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lw3/b/a/b;-><init>(J)V

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Le/a/n4/c/a;->d:Le/a/u3/g;

    invoke-virtual {v5}, Le/a/u3/g;->p()Le/a/u3/i;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-interface {v5, v6, v7}, Le/a/u3/i;->d(J)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lw3/b/a/b;->C(J)Lw3/b/a/b;

    move-result-object v1

    .line 5
    iget-object v5, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lw3/b/a/e0/c;->h(J)Z

    move-result v1

    .line 6
    new-instance v5, Lw3/b/a/b;

    .line 7
    iget-object v8, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    const-string v9, "LastCallLogPromoShownOn"

    invoke-interface {v8, v9, v3, v4}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 8
    invoke-direct {v5, v10, v11}, Lw3/b/a/b;-><init>(J)V

    .line 9
    iget v8, p0, Le/a/n4/c/a;->a:I

    .line 10
    invoke-virtual {v5, v8}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v5

    iget-object v8, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lw3/b/a/e0/c;->e(J)Z

    move-result v5

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_1

    .line 11
    new-instance v5, Lw3/b/a/b;

    iget-object v11, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    invoke-interface {v11, v9, v3, v4}, Le/a/b0/g/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v5, v3, v4}, Lw3/b/a/b;-><init>(J)V

    .line 12
    iget-object v3, p0, Le/a/n4/c/a;->d:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->p()Le/a/u3/i;

    move-result-object v3

    invoke-interface {v3, v6, v7}, Le/a/u3/i;->d(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lw3/b/a/b;->C(J)Lw3/b/a/b;

    move-result-object v2

    .line 13
    iget-object v3, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lw3/b/a/e0/c;->h(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    .line 14
    :goto_1
    iget-object v3, p0, Le/a/n4/c/a;->c:Le/a/n4/a;

    invoke-interface {p0}, Le/a/n4/c/d;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/l4/k;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v10}, Le/a/b0/g/b;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Le/a/n4/c/a;->d:Le/a/u3/g;

    .line 15
    iget-object v5, v4, Le/a/u3/g;->T1:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x95

    aget-object v6, v6, v7

    invoke-virtual {v5, v4, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v4

    check-cast v4, Le/a/u3/i;

    const/4 v5, 0x2

    .line 16
    invoke-interface {v4, v5}, Le/a/u3/i;->getInt(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    move v3, v8

    goto :goto_2

    :cond_2
    move v3, v10

    .line 17
    :goto_2
    iget-object v4, p0, Le/a/n4/c/a;->f:Le/a/o5/f0;

    invoke-interface {v4}, Le/a/o5/f0;->a()Z

    move-result v4

    .line 18
    invoke-interface {p0}, Le/a/n4/c/d;->getTag()Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v8, v10

    :goto_3
    return v8
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n4/c/a;->e:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Context"

    const-string v3, "CallLog"

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Action"

    .line 4
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p0}, Le/a/n4/c/d;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Type"

    .line 6
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Le/a/q2/g$b$a;

    const/4 v2, 0x0

    const-string v3, "PromoView"

    invoke-direct {p1, v3, v2, v1, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(P\u2026tag)\n            .build()"

    .line 8
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
