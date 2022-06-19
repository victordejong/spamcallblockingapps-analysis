.class public final Le/a/y/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/b;


# instance fields
.field public a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y/d/i;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y/b/w;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y/c/k;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/m/e/k;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/a0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/y/c/x/a/a;

.field public h:Le/a/y/c/i;

.field public i:Le/a/y/c/w;

.field public j:Lcom/truecaller/flashsdk/core/Theme;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/flashsdk/core/Theme;->LIGHT:Lcom/truecaller/flashsdk/core/Theme;

    iput-object v0, p0, Le/a/y/c/d;->j:Lcom/truecaller/flashsdk/core/Theme;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->j:Lcom/truecaller/flashsdk/core/Theme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$style;->DefaultV2:I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/truecaller/flashsdk/R$style;->DarkKnightV2:I

    :goto_0
    return v0
.end method

.method public B(Le/a/y/c/i;)V
    .locals 1

    const-string v0, "flashPoint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    return-void
.end method

.method public C(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "phoneWithoutPlus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/y/c/d;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object p1

    .line 2
    iget-wide v0, p1, Le/a/y/d/h;->b:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 14

    move-object v11, p1

    move-object/from16 v12, p8

    const-string v13, "context"

    invoke-static {p1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/flashsdk/ui/send/SendActivity;->N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/truecaller/flashsdk/ui/send/SendActivity$b;->b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, p0

    .line 2
    iget-object v2, v1, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/b/w;

    const/4 v3, 0x1

    const-string v4, "first_time_user"

    invoke-interface {v2, v4, v3}, Le/a/y/b/w;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->k:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;

    .line 4
    invoke-static {p1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "to_phone"

    move-wide/from16 v4, p2

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "to_name"

    move-object/from16 v4, p4

    .line 7
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image"

    move-object/from16 v4, p6

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "video"

    move-object/from16 v4, p7

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mode"

    move/from16 v3, p9

    .line 11
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "background"

    move-object/from16 v3, p10

    .line 12
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "screen_context"

    move-object/from16 v3, p5

    .line 13
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 14
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "preferenceUtil"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public E(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/y/c/i;->f(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/y/c/d;->k:Z

    return-void
.end method

.method public G(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 4

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->c:Lo3/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/c/k;

    const/4 v2, 0x1

    const-string v3, "responding"

    invoke-interface {v0, p1, v3, v2, v1}, Le/a/y/c/k;->a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V

    return-void

    :cond_0
    const-string p1, "flashRequestHandler"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public H(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 9

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity;->f:Lcom/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity$a;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public I()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->f:Lo3/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Le/a/y/c/d;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/y/c/d;->e:Lo3/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "permissionUtil"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const-string v0, "deviceInfoUtil"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public J(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/flashsdk/models/FlashContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contacts"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "screenContext"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactList"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/flashsdk/ui/contactselector/FlashContactSelectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "contact_list"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "screen_context"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public K(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v11, p1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, p0

    .line 1
    iget-object v1, v12, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/b/w;

    const/4 v2, 0x1

    const-string v3, "first_time_user"

    invoke-interface {v1, v3, v2}, Le/a/y/b/w;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->k:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "to_phone"

    move-wide v2, p2

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "to_name"

    move-object/from16 v4, p4

    .line 6
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "screen_context"

    move-object/from16 v5, p5

    .line 7
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 10
    sget-object v1, Lcom/truecaller/flashsdk/ui/send/SendActivity;->N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    .line 11
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v10, 0x10

    move-object v0, v1

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 12
    invoke-static/range {v0 .. v10}, Lcom/truecaller/flashsdk/ui/send/SendActivity$b;->a(Lcom/truecaller/flashsdk/ui/send/SendActivity$b;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "preferenceUtil"

    .line 14
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->a()V

    return-void

    :cond_0
    const-string v0, "preferenceUtil"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Ljava/lang/String;)Le/a/y/g/d;
    .locals 1

    const-string v0, "phoneWithoutPlus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->a:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/i;

    invoke-interface {v0, p1}, Le/a/y/d/i;->b(Ljava/lang/String;)Le/a/y/g/d;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "flashPendingManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0, p1}, Le/a/y/b/w;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "preferenceUtil"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d()Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    const-string v1, "preferenceUtil"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/c/i;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/y/c/i;->x()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v0, v2

    .line 7
    :cond_4
    invoke-virtual {p0, v0}, Le/a/y/c/d;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(flashRingtone)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_6
    new-instance v0, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "FlashPoint not set"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)Le/a/y/d/h;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->a:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/i;

    invoke-interface {v0, p1}, Le/a/y/d/i;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "flashPendingManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->f()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "preferenceUtil"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g(JLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v0}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 2
    iput-wide p1, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    const-string p1, ""

    .line 3
    iput-object p1, v0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    const-string p1, "final"

    .line 4
    iput-object p1, v0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 7
    new-instance p1, Lcom/truecaller/flashsdk/models/Payload;

    const-string p2, "call_me_back"

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v1, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 8
    iput-object p1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 9
    iget-object p1, p0, Le/a/y/c/d;->c:Lo3/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/c/k;

    const/4 p2, 0x0

    const-string p3, "call_me_back_req"

    invoke-interface {p1, v0, p3, p2, v1}, Le/a/y/c/k;->a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V

    return-void

    :cond_0
    const-string p1, "flashRequestHandler"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public h()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    const/4 v1, 0x0

    const-string v2, "preferenceUtil"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->k()J

    move-result-wide v3

    .line 2
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->g()J

    move-result-wide v0

    const-wide/16 v5, 0x1

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public i(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flash"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->a:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/i;

    invoke-interface {v0, p1, p2, p3, p4}, Le/a/y/d/i;->c(Ljava/lang/String;JLcom/truecaller/flashsdk/models/Flash;)V

    return-void

    :cond_0
    const-string p1, "flashPendingManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public isEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/y/c/i;->w(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->i:Le/a/y/c/w;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/y/c/w;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public k(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/y/c/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/y/b/w;

    invoke-interface {p2, p1}, Le/a/y/b/w;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "preferenceUtil"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method

.method public l(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/truecaller/flashsdk/ui/send/SendActivity;->N:Lcom/truecaller/flashsdk/ui/send/SendActivity$b;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "to_phone"

    .line 4
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "to_name"

    .line 5
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "screen_context"

    .line 6
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "time_left"

    .line 7
    invoke-virtual {v0, p2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "phoneWithoutPlus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, p2}, Le/a/y/c/i;->j(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/y/g/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->a:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/i;

    invoke-interface {v0, p1}, Le/a/y/d/i;->a(Ljava/util/List;)V

    return-void

    :cond_0
    const-string p1, "flashPendingManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public o(Ljava/lang/String;)I
    .locals 5

    const-string v0, "numberWithPlus"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->a:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/i;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "+"

    const-string v4, ""

    invoke-static {p1, v3, v4, v1, v2}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/d/i;->b(Ljava/lang/String;)Le/a/y/g/d;

    move-result-object p1

    .line 2
    iget p1, p1, Le/a/y/g/d;->b:I

    return p1

    :cond_0
    const-string p1, "flashPendingManager"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public p(J)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/c/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/b/w;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "preferenceUtil"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method

.method public q(Ljava/lang/String;)J
    .locals 3

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/y/c/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y/b/w;

    invoke-interface {v2, p1, v0, v1}, Le/a/y/b/w;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "preferenceUtil"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-wide v0
.end method

.method public r(Le/a/y/c/w;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/c/d;->i:Le/a/y/c/w;

    return-void
.end method

.method public s(Lcom/truecaller/flashsdk/core/Theme;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/c/d;->j:Lcom/truecaller/flashsdk/core/Theme;

    return-void
.end method

.method public t(JLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "responses"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v0}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 2
    iput-wide p1, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    const-string p1, ""

    .line 3
    iput-object p1, v0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 6
    new-instance p1, Lcom/truecaller/flashsdk/models/Payload;

    const-string p2, "custom_flash"

    const/4 v1, 0x0

    invoke-direct {p1, p2, p4, p3, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 7
    iput-object p1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 8
    iget-object p1, p0, Le/a/y/c/d;->c:Lo3/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/c/k;

    const/4 p2, 0x0

    const-string p3, "paying"

    invoke-interface {p1, v0, p3, p2, v1}, Le/a/y/c/k;->a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V

    return-void

    :cond_0
    const-string p1, "flashRequestHandler"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public u(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/c/d;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object v0

    .line 2
    iget-wide v0, v0, Le/a/y/d/h;->b:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v0, 0xea60

    cmp-long v5, v3, v0

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p5}, Le/a/y/c/d;->K(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sub-long v7, v0, v3

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 5
    invoke-virtual/range {v1 .. v8}, Le/a/y/c/d;->l(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Le/a/y/c/i;->j(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->h()V

    return-void

    :cond_0
    const-string v0, "preferenceUtil"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    const-string v1, "preferenceUtil"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    const/4 v3, -0x1

    const-string v4, "flash_settings_version"

    invoke-interface {v0, v4, v3}, Le/a/y/b/w;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/c/i;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 3
    :goto_1
    invoke-virtual {p0, v0}, Le/a/y/c/d;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/y/c/d;->b:Lo3/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/b/w;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public y(JLjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    const-string v1, "call_me_back"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2, v2}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {p3}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 3
    iput-wide p1, p3, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 4
    iput-object v0, p3, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v0, ""

    .line 5
    iput-object v0, p3, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 7
    invoke-virtual {p3}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 8
    iget-object v0, p0, Le/a/y/c/d;->c:Lo3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/c/k;

    const/4 v3, 0x0

    invoke-interface {v0, p3, v1, v3, v2}, Le/a/y/c/k;->a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v3, "flash.payload"

    .line 11
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p3, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v3, "flashMessageId"

    .line 13
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "flashReceiverId"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "flashContext"

    const-string p2, "callMeBack"

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "flashReplyId"

    .line 16
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p3, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    const-string p2, "flashThreadId"

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "flashFromHistory"

    const-string p2, "false"

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "historyLength"

    const-string p2, "0"

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FlashSent"

    .line 21
    invoke-virtual {p0, p1, v0}, Le/a/y/c/d;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "flashRequestHandler"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public z()Le/a/y/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/d;->h:Le/a/y/c/i;

    return-object v0
.end method
