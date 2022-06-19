.class public final Le/a/a/m/j3/c;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/e2;",
        ">;",
        "Le/a/a/m/a1;"
    }
.end annotation


# instance fields
.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/a/m/e2$a;

.field public final f:Le/a/l/t2/e;

.field public final g:Le/a/q5/i;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/p5/c0;Le/a/a/m/e2$a;Le/a/l/t2/e;Le/a/q5/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homeTabPromo"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/j3/c;->c:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/a/m/j3/c;->d:Le/a/p5/c0;

    iput-object p4, p0, Le/a/a/m/j3/c;->e:Le/a/a/m/e2$a;

    iput-object p5, p0, Le/a/a/m/j3/c;->f:Le/a/l/t2/e;

    iput-object p6, p0, Le/a/a/m/j3/c;->g:Le/a/q5/i;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$d0;

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/m/e2;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/j3/c;->c:Le/a/l/p2/v0;

    invoke-interface {p2}, Le/a/l/p2/v0;->H()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Le/a/a/m/j3/c;->d:Le/a/p5/c0;

    const v1, 0x7f1207c6

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p2, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "resourceProvider.getStri\u2026ePromoDescriptionPremium)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/e2;->c(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Le/a/a/m/j3/c;->d:Le/a/p5/c0;

    const v1, 0x7f12073d

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getString(R.string.StrTryNow)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/e2;->y(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Le/a/a/m/j3/c;->d:Le/a/p5/c0;

    const v1, 0x7f1207c5

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p2, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "resourceProvider.getStri\u2026omoDescriptionNonPremium)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/e2;->c(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Le/a/a/m/j3/c;->d:Le/a/p5/c0;

    const v1, 0x7f1204bf

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getStri\u2026remiumHomeTabPromoButton)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/a/m/e2;->y(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/j3/c;->f:Le/a/l/t2/e;

    .line 2
    iget-object v0, v0, Le/a/l/t2/e;->b:Le/a/q5/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/q5/i;->j(Z)V

    .line 3
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x1c3c6283

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const v2, 0x77f3225f

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_WHATSAPP_CALLER_ID_DISMISS_PROMO"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/a/m/j3/c;->e:Le/a/a/m/e2$a;

    invoke-interface {p1}, Le/a/a/m/e2$a;->E3()V

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_WHATSAPP_CALLER_ID_CTA_CLICKED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/a/m/j3/c;->g:Le/a/q5/i;

    invoke-interface {p1, v3}, Le/a/q5/i;->d(Z)V

    .line 9
    iget-object p1, p0, Le/a/a/m/j3/c;->e:Le/a/a/m/e2$a;

    invoke-interface {p1}, Le/a/a/m/e2$a;->xf()V

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    return v1
.end method
