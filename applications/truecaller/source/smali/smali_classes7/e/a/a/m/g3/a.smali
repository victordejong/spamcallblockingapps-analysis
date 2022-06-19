.class public final Le/a/a/m/g3/a;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/i1;",
        ">;",
        "Le/a/a/m/c0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/i1$a;

.field public final d:Le/a/q2/a;

.field public final e:Le/a/d0/s0;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/i1$a;Le/a/q2/a;Le/a/d0/s0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableBatteryOptimizationPromoManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/g3/a;->c:Le/a/a/m/i1$a;

    iput-object p3, p0, Le/a/a/m/g3/a;->d:Le/a/q2/a;

    iput-object p4, p0, Le/a/a/m/g3/a;->e:Le/a/d0/s0;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/a/m/d1$f;->b:Le/a/a/m/d1$f;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final B(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/m/g3/a;->d:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/q2/g$b$a;

    const-string v2, "DisableBatteryOptimizPromoInteraction"

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/m/i1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Shown"

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/m/g3/a;->B(Ljava/lang/String;)V

    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6a393693

    const-string v2, "disable_battery_optimization_promo_last_shown_timestamp"

    if-eq v0, v1, :cond_1

    const v1, 0x663944c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "ItemEvent.ACTION_CONTINUE_DISABLE_BATTERY_OPTIMIZATION"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/g3/a;->e:Le/a/d0/s0;

    .line 5
    iget-object v0, p1, Le/a/d0/s0;->a:Le/a/z4/d;

    iget-object p1, p1, Le/a/d0/s0;->d:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-object p1, p0, Le/a/a/m/g3/a;->c:Le/a/a/m/i1$a;

    invoke-interface {p1}, Le/a/a/m/i1$a;->Rh()Z

    const-string p1, "Positive"

    .line 7
    invoke-virtual {p0, p1}, Le/a/a/m/g3/a;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ItemEvent.ACTION_DISMISS_DISABLE_BATTERY_OPTIMIZATION"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/a/a/m/g3/a;->e:Le/a/d0/s0;

    .line 10
    iget-object v0, p1, Le/a/d0/s0;->a:Le/a/z4/d;

    iget-object p1, p1, Le/a/d0/s0;->d:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 11
    iget-object p1, p0, Le/a/a/m/g3/a;->c:Le/a/a/m/i1$a;

    invoke-interface {p1}, Le/a/a/m/i1$a;->Ae()Z

    const-string p1, "Dismiss"

    .line 12
    invoke-virtual {p0, p1}, Le/a/a/m/g3/a;->B(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
