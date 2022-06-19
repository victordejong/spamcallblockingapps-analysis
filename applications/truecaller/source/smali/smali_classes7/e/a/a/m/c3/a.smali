.class public final Le/a/a/m/c3/a;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/e1;",
        ">;",
        "Le/a/a/m/y;"
    }
.end annotation


# instance fields
.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/a/m/e1$a;

.field public final e:Le/a/l/t2/a;

.field public final f:Le/a/s2/h/e;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/l/p2/v0;Le/a/a/m/e1$a;Le/a/l/t2/a;Le/a/s2/h/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdHomeTabPromo"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/c3/a;->c:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/a/m/c3/a;->d:Le/a/a/m/e1$a;

    iput-object p4, p0, Le/a/a/m/c3/a;->e:Le/a/l/t2/a;

    iput-object p5, p0, Le/a/a/m/c3/a;->f:Le/a/s2/h/e;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$a;

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/m/e1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/c3/a;->c:Le/a/l/p2/v0;

    invoke-interface {p2}, Le/a/l/p2/v0;->H()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/a/m/e1;->P()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Le/a/a/m/e1;->N()V

    :goto_0
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/c3/a;->e:Le/a/l/t2/a;

    .line 2
    iget-object v0, v0, Le/a/l/t2/a;->b:Le/a/s2/h/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/s2/h/e;->j(Z)V

    .line 3
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x7fe507ca

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const v2, -0x593b02ec

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_ANNOUNCE_CALLER_ID_CTA_CLICKED"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/a/m/c3/a;->f:Le/a/s2/h/e;

    invoke-interface {p1, v3}, Le/a/s2/h/e;->d(Z)V

    .line 7
    iget-object p1, p0, Le/a/a/m/c3/a;->d:Le/a/a/m/e1$a;

    invoke-interface {p1}, Le/a/a/m/e1$a;->Y2()Z

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_ANNOUNCE_CALLER_ID_DISMISS_PROMO"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/a/a/m/c3/a;->d:Le/a/a/m/e1$a;

    invoke-interface {p1}, Le/a/a/m/e1$a;->jj()Z

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    return v1
.end method
