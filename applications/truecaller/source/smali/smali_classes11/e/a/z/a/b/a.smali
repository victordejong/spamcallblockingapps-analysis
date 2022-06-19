.class public final Le/a/z/a/b/a;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/z/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/z/a/b/c;",
        ">;",
        "Le/a/z/a/b/b;"
    }
.end annotation


# instance fields
.field public final b:Le/a/z/f;


# direct methods
.method public constructor <init>(Le/a/z/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "personalSafety"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/z/a/b/a;->b:Le/a/z/f;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/z/a/b/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/truecaller/personalsafety/R$drawable;->personal_safety_awareness_img_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/truecaller/personalsafety/R$drawable;->personal_safety_awareness_img_light:I

    .line 5
    :goto_0
    invoke-interface {p1, v0}, Le/a/z/a/b/c;->H3(I)V

    .line 6
    sget v0, Lcom/truecaller/personalsafety/R$string;->personal_safety_awareness_title:I

    invoke-interface {p1, v0}, Le/a/z/a/b/c;->setTitle(I)V

    .line 7
    sget v0, Lcom/truecaller/personalsafety/R$string;->personal_safety_awareness_desc:I

    invoke-interface {p1, v0}, Le/a/z/a/b/c;->kp(I)V

    .line 8
    iget-object v0, p0, Le/a/z/a/b/a;->b:Le/a/z/f;

    invoke-interface {v0}, Le/a/z/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget v0, Lcom/truecaller/personalsafety/R$string;->personal_safety_awareness_open:I

    goto :goto_1

    .line 10
    :cond_1
    sget v0, Lcom/truecaller/personalsafety/R$string;->personal_safety_awareness_install:I

    .line 11
    :goto_1
    invoke-interface {p1, v0}, Le/a/z/a/b/c;->Fu(I)V

    return-void
.end method

.method public j7()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/z/a/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/z/a/b/c;->ps()V

    :cond_0
    return-void
.end method

.method public lb(Ljava/lang/String;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6e3050b9

    if-eq v0, v1, :cond_2

    const v1, 0x1163345c

    if-eq v0, v1, :cond_1

    const v1, 0x27c01df0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "push_notification"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->DEEP_LINK:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    goto :goto_1

    :cond_1
    const-string v0, "promo_banner"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->HOME_PROMO:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    goto :goto_1

    :cond_2
    const-string v0, "side_menu"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->SIDE_MENU:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    sget-object p1, Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;->OTHER:Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;

    .line 6
    :goto_1
    iget-object v0, p0, Le/a/z/a/b/a;->b:Le/a/z/f;

    invoke-interface {v0, p1}, Le/a/z/f;->c(Lcom/truecaller/personalsafety/PersonalSafetyLinkSource;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/z/a/b/c;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Le/a/z/a/b/c;->j3(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
