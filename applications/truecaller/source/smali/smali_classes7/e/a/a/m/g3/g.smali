.class public final Le/a/a/m/g3/g;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/v0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/z1;",
        ">;",
        "Le/a/a/m/v0;"
    }
.end annotation


# instance fields
.field public final c:Ls1/g;

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/a/m/z1$a;

.field public final f:Le/a/a/m/g3/f;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/z1$a;Le/a/a/m/g3/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateMobileServicesPromoManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/g3/g;->d:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/m/g3/g;->e:Le/a/a/m/z1$a;

    iput-object p4, p0, Le/a/a/m/g3/g;->f:Le/a/a/m/g3/f;

    .line 2
    new-instance p1, Le/a/a/m/g3/g$a;

    invoke-direct {p1, p0}, Le/a/a/m/g3/g$a;-><init>(Le/a/a/m/g3/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/m/g3/g;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/a/m/d1$y;->b:Le/a/a/m/d1$y;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/m/z1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/g3/g;->c:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d4/e;

    .line 4
    sget-object v0, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Le/a/a/m/g3/g;->d:Le/a/p5/c0;

    const v0, 0x7f120ff8

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026bile_services_play_title)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/z1;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Le/a/a/m/g3/g;->d:Le/a/p5/c0;

    const v0, 0x7f120ff7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026obile_services_play_text)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/z1;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Le/a/a/m/g3/g;->d:Le/a/p5/c0;

    const v0, 0x7f120ff6

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026le_services_huawei_title)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/z1;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Le/a/a/m/g3/g;->d:Le/a/p5/c0;

    const v0, 0x7f120ff5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026ile_services_huawei_text)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/z1;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mobile service engine "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    iget-object v0, p0, Le/a/a/m/g3/g;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Le/a/d4/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array p2, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 14
    :goto_1
    iget-object p1, p0, Le/a/a/m/g3/g;->f:Le/a/a/m/g3/f;

    .line 15
    iget-object p1, p1, Le/a/a/m/g3/f;->b:Le/a/a/m/o2;

    const-string p2, "update_mobile_services_promo_last_timestamp"

    invoke-virtual {p1, p2}, Le/a/a/m/o2;->a(Ljava/lang/String;)V

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

    const v1, -0x63579a14

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3a5c634f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_UPDATE_MOBILE_SERVICES_CLICKED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/g3/g;->e:Le/a/a/m/z1$a;

    invoke-interface {p1}, Le/a/a/m/z1$a;->L4()V

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_DISMISS_UPDATE_MOBILE_SERVICES_PROMO"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/a/m/g3/g;->e:Le/a/a/m/z1$a;

    invoke-interface {p1}, Le/a/a/m/z1$a;->oc()V

    .line 7
    iget-object p1, p0, Le/a/a/m/g3/g;->f:Le/a/a/m/g3/f;

    .line 8
    iget-object p1, p1, Le/a/a/m/g3/f;->b:Le/a/a/m/o2;

    const-string v0, "update_mobile_services_promo_last_timestamp"

    invoke-virtual {p1, v0}, Le/a/a/m/o2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
