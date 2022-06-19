.class public final Le/a/a/m/b3/a;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/t0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/x1;",
        ">;",
        "Le/a/a/m/t0;"
    }
.end annotation


# instance fields
.field public c:Z

.field public final d:Le/a/a/m/x1$a;

.field public final e:Le/a/n2/b/a;

.field public final f:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/x1$a;Le/a/n2/b/a;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoStateProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionsListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/b3/a;->d:Le/a/a/m/x1$a;

    iput-object p3, p0, Le/a/a/m/b3/a;->e:Le/a/n2/b/a;

    iput-object p4, p0, Le/a/a/m/b3/a;->f:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/a/m/d1$w;->b:Le/a/a/m/d1$w;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final B(Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent;

    invoke-direct {v0, p1}, Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent;-><init>(Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;)V

    iget-object p1, p0, Le/a/a/m/b3/a;->f:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/m/x1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Le/a/a/m/b3/a;->c:Z

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;->ACTION_SHOWN:Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;

    invoke-virtual {p0, p1}, Le/a/a/m/b3/a;->B(Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/a/m/b3/a;->c:Z

    :cond_0
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

    const v1, 0x3ce98885

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x47feb66c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_SECONDARY_PHONE_NUMBER_PROMO"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/b3/a;->e:Le/a/n2/b/a;

    .line 5
    iget-object v0, p1, Le/a/n2/b/a;->e:Le/a/z4/d;

    const-string v1, "secondary_phone_number_promo_dismiss_count"

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v3

    .line 6
    iget-object v2, p1, Le/a/n2/b/a;->e:Le/a/z4/d;

    invoke-interface {v2, v1, v0}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p1, Le/a/n2/b/a;->f:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    .line 8
    iget-object p1, p1, Le/a/n2/b/a;->e:Le/a/z4/d;

    const-string v2, "secondary_phone_number_promo_last_dismiss_timestamp"

    invoke-interface {p1, v2, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-object p1, p0, Le/a/a/m/b3/a;->d:Le/a/a/m/x1$a;

    invoke-interface {p1}, Le/a/a/m/x1$a;->m4()V

    .line 10
    sget-object p1, Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;->ACTION_DISMISS:Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;

    invoke-virtual {p0, p1}, Le/a/a/m/b3/a;->B(Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;)V

    goto :goto_0

    :cond_1
    const-string v0, "ItemEvent.ACTION_ADD_SECONDARY_PHONE_NUMBER"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Le/a/a/m/b3/a;->d:Le/a/a/m/x1$a;

    invoke-interface {p1}, Le/a/a/m/x1$a;->jb()V

    .line 13
    sget-object p1, Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;->ACTION_ADD_NOW:Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;

    invoke-virtual {p0, p1}, Le/a/a/m/b3/a;->B(Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;)V

    :goto_0
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method
