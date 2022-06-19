.class public final Le/a/a/m/g3/h;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/c1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/g2;",
        ">;",
        "Le/a/a/m/c1;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/j2;

.field public final d:Le/a/a/m/g2$a;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/z4/d;

.field public final g:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/g2$a;Le/a/p5/c0;Le/a/z4/d;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p1, p0, Le/a/a/m/g3/h;->c:Le/a/a/m/j2;

    iput-object p2, p0, Le/a/a/m/g3/h;->d:Le/a/a/m/g2$a;

    iput-object p3, p0, Le/a/a/m/g3/h;->e:Le/a/p5/c0;

    iput-object p4, p0, Le/a/a/m/g3/h;->f:Le/a/z4/d;

    iput-object p5, p0, Le/a/a/m/g3/h;->g:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$f0;

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/m/g2;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/g3/h;->c:Le/a/a/m/j2;

    invoke-interface {p2}, Le/a/a/m/j2;->ze()Le/a/a/m/d1;

    move-result-object p2

    instance-of v0, p2, Le/a/a/m/d1$f0;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/a/m/d1$f0;

    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/m/g3/h;->e:Le/a/p5/c0;

    const v1, 0x7f100024

    .line 5
    iget p2, p2, Le/a/a/m/d1$f0;->b:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, p2, v2}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getQuan\u2026ountDesc, number, number)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/g2;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5755fe41

    const/4 v2, 0x1

    const-string v3, "whoViewedMePromoTimestamp"

    if-eq v0, v1, :cond_1

    const v1, 0x57d6c90b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_WHO_VIEWED_ME_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/g3/h;->f:Le/a/z4/d;

    iget-object v0, p0, Le/a/a/m/g3/h;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    invoke-interface {p1, v3, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object p1, p0, Le/a/a/m/g3/h;->d:Le/a/a/m/g2$a;

    invoke-interface {p1}, Le/a/a/m/g2$a;->B7()Z

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_OPEN_WHO_VIEWED_ME"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/a/m/g3/h;->f:Le/a/z4/d;

    iget-object v0, p0, Le/a/a/m/g3/h;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    invoke-interface {p1, v3, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 8
    iget-object p1, p0, Le/a/a/m/g3/h;->d:Le/a/a/m/g2$a;

    invoke-interface {p1}, Le/a/a/m/g2$a;->md()Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
