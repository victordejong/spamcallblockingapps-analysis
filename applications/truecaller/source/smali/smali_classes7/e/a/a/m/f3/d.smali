.class public final Le/a/a/m/f3/d;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/m1;",
        ">;",
        "Le/a/a/m/g0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/m1$a;

.field public final d:Le/a/f/b;

.field public final e:Le/a/h5/m;

.field public final f:Le/a/p5/g;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/m1$a;Le/a/f/b;Le/a/h5/m;Le/a/p5/g;Le/a/p5/c0;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUI"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/f3/d;->c:Le/a/a/m/m1$a;

    iput-object p3, p0, Le/a/a/m/f3/d;->d:Le/a/f/b;

    iput-object p4, p0, Le/a/a/m/f3/d;->e:Le/a/h5/m;

    iput-object p5, p0, Le/a/a/m/f3/d;->f:Le/a/p5/g;

    iput-object p6, p0, Le/a/a/m/f3/d;->g:Le/a/p5/c0;

    iput-object p7, p0, Le/a/a/m/f3/d;->h:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$j;

    return p1
.end method

.method public final B(Le/a/o2/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/m/f3/d;->d:Le/a/f/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/f/b;->e(Z)V

    .line 2
    iget-object v0, p0, Le/a/a/m/f3/d;->d:Le/a/f/b;

    .line 3
    iget-object p1, p1, Le/a/o2/h;->d:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "event.view.context"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/f/b;->q(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Le/a/a/m/f3/d;->d:Le/a/f/b;

    invoke-interface {p1}, Le/a/f/b;->b()V

    .line 6
    iget-object p1, p0, Le/a/a/m/f3/d;->c:Le/a/a/m/m1$a;

    invoke-interface {p1}, Le/a/a/m/m1$a;->D5()Z

    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/m/f3/d;->h:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 3
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/q2/g$b$a;

    const-string v2, "InCallUIHomeBannerInteraction"

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(I\u2026\n                .build()"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/m/m1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/f3/d;->f:Le/a/p5/g;

    invoke-interface {p2}, Le/a/p5/g;->f()Z

    move-result p2

    const v0, 0x7f120c5e

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f120c5b

    .line 4
    iget-object v2, p0, Le/a/a/m/f3/d;->g:Le/a/p5/c0;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026incallui_banner_subtitle)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f120c5c

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v3, p0, Le/a/a/m/f3/d;->g:Le/a/p5/c0;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v0, p0, Le/a/a/m/f3/d;->g:Le/a/p5/c0;

    const v3, 0x7f120c5a

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StringBuilder()\n        \u2026              .toString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v2, p0, Le/a/a/m/f3/d;->g:Le/a/p5/c0;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, p2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "resourceProvider.getStri\u2026rimaryButtonTextResource)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/m1;->y(Ljava/lang/String;)V

    .line 11
    invoke-interface {p1, v0}, Le/a/a/m/m1;->c(Ljava/lang/String;)V

    const-string p1, "Shown"

    .line 12
    invoke-virtual {p0, p1}, Le/a/a/m/f3/d;->C(Ljava/lang/String;)V

    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a/m/f3/d$a;

    invoke-direct {v0, p0}, Le/a/a/m/f3/d$a;-><init>(Le/a/a/m/f3/d;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 2
    iget-object v1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x37ccd9d2

    if-eq v2, v3, :cond_2

    const v3, 0x710dc0b1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "ItemEvent.ACTION_ENABLE_INCALLUI"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Ls1/n;

    invoke-virtual {v0}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Le/a/a/m/f3/d;->B(Le/a/o2/h;)V

    const-string p1, "SwitchNow"

    .line 7
    invoke-virtual {p0, p1}, Le/a/a/m/f3/d;->C(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/m/f3/d;->e:Le/a/h5/m;

    new-instance v1, Le/a/a/m/f3/c;

    invoke-direct {v1, p0, p1}, Le/a/a/m/f3/c;-><init>(Le/a/a/m/f3/d;Le/a/o2/h;)V

    invoke-interface {v0, v1}, Le/a/h5/m;->a(Ls1/z/b/l;)V

    const-string p1, "SetAsDefault"

    .line 9
    invoke-virtual {p0, p1}, Le/a/a/m/f3/d;->C(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const-string p1, "ItemEvent.ACTION_DISMISS_INCALLUI"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/a/m/f3/d;->d:Le/a/f/b;

    invoke-interface {p1}, Le/a/f/b;->b()V

    const-string p1, "Dismiss"

    .line 12
    invoke-virtual {p0, p1}, Le/a/a/m/f3/d;->C(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Le/a/a/m/f3/d;->c:Le/a/a/m/m1$a;

    invoke-interface {p1}, Le/a/a/m/m1$a;->y7()Z

    move-result p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
