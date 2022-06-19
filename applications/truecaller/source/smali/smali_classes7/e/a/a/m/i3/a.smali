.class public final Le/a/a/m/i3/a;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/n0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/r1;",
        ">;",
        "Le/a/a/m/n0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/r1$a;

.field public final d:Le/a/z/f;

.field public final e:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/r1$a;Le/a/z/f;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "personalSafety"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/i3/a;->c:Le/a/a/m/r1$a;

    iput-object p3, p0, Le/a/a/m/i3/a;->d:Le/a/z/f;

    iput-object p4, p0, Le/a/a/m/i3/a;->e:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$q;

    return p1
.end method

.method public final B(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/m/i3/a;->e:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/q2/g$b$a;

    const-string v2, "PersonalSafetyHomeBannerInteraction"

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(P\u2026\n                .build()"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/m/r1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Shown"

    .line 3
    invoke-virtual {p0, p2}, Le/a/a/m/i3/a;->B(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/a/a/m/i3/a;->d:Le/a/z/f;

    invoke-interface {p2}, Le/a/z/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/m/r1;->setTitle(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Le/a/a/m/i3/a;->d:Le/a/z/f;

    invoke-interface {p2}, Le/a/z/f;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/m/r1;->k(Ljava/lang/String;)V

    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2f3fa745

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0xd12d16

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_PERSONAL_SAFETY_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/i3/a;->d:Le/a/z/f;

    invoke-interface {p1}, Le/a/z/f;->d()V

    const-string p1, "Dismiss"

    .line 5
    invoke-virtual {p0, p1}, Le/a/a/m/i3/a;->B(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/a/m/i3/a;->c:Le/a/a/m/r1$a;

    invoke-interface {p1}, Le/a/a/m/r1$a;->be()Z

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_PERSONAL_SAFETY_GET_IT_NOW"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/a/m/i3/a;->d:Le/a/z/f;

    invoke-interface {p1}, Le/a/z/f;->d()V

    const-string p1, "GetItNow"

    .line 9
    invoke-virtual {p0, p1}, Le/a/a/m/i3/a;->B(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/a/m/i3/a;->c:Le/a/a/m/r1$a;

    invoke-interface {p1}, Le/a/a/m/r1$a;->Qd()Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
