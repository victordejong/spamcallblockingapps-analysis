.class public final Le/a/a/m/g3/e;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/o1;",
        ">;",
        "Le/a/a/m/j0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/o1$a;

.field public final d:Le/a/a/m/g3/d;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/o1$a;Le/a/a/m/g3/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAccessPromoManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/g3/e;->c:Le/a/a/m/o1$a;

    iput-object p3, p0, Le/a/a/m/g3/e;->d:Le/a/a/m/g3/d;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/a/m/d1$m;->b:Le/a/a/m/d1$m;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/m/o1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/a/m/g3/e;->d:Le/a/a/m/g3/d;

    .line 4
    iget-object p1, p1, Le/a/a/m/g3/d;->b:Le/a/a/m/o2;

    const-string p2, "key_location_promo_last_time"

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

    const v1, -0x77b7ffca

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0xfc3ff59

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_LOCATION_ACCESS_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/g3/e;->c:Le/a/a/m/o1$a;

    invoke-interface {p1}, Le/a/a/m/o1$a;->Bi()V

    .line 5
    iget-object p1, p0, Le/a/a/m/g3/e;->d:Le/a/a/m/g3/d;

    .line 6
    iget-object p1, p1, Le/a/a/m/g3/d;->b:Le/a/a/m/o2;

    const-string v0, "key_location_promo_last_time"

    invoke-virtual {p1, v0}, Le/a/a/m/o2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_ALLOW_LOCATION_ACCESS"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/a/m/g3/e;->c:Le/a/a/m/o1$a;

    invoke-interface {p1}, Le/a/a/m/o1$a;->mg()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
