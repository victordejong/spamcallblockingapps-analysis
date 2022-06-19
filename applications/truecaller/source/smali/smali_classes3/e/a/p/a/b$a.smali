.class public final Le/a/p/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/p/a/b$a;->a:I

    iput-object p2, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget v0, p0, Le/a/p/a/b$a;->a:I

    const-string v1, "EditProflePrefillPressed"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    throw v2

    .line 1
    :pswitch_0
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->vb()V

    :cond_1
    return-void

    .line 4
    :pswitch_1
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 5
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    :cond_2
    new-array v0, v3, [Ls1/k;

    const-string v2, "Facebook"

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Le/a/p/a/m;->Sj(Ljava/lang/String;Ljava/lang/String;[Ls1/k;)V

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ov()V

    :cond_3
    return-void

    .line 8
    :pswitch_2
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 9
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    :cond_4
    new-array v0, v3, [Ls1/k;

    const-string v2, "Google"

    .line 10
    invoke-virtual {p1, v1, v2, v0}, Le/a/p/a/m;->Sj(Ljava/lang/String;Ljava/lang/String;[Ls1/k;)V

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->fh()V

    :cond_5
    return-void

    .line 12
    :pswitch_3
    iget-object v0, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/p/a/b;

    invoke-virtual {v0}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.editprofile.ui.EditProfileMvp.View.VideoCallerIdProfileAction"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;

    check-cast v0, Le/a/p/a/m;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "videoCallerIdProfileAction"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->dw()V

    goto :goto_0

    .line 16
    :cond_7
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->L6()V

    :cond_8
    :goto_0
    return-void

    .line 17
    :pswitch_4
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 18
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 19
    :cond_9
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_a

    iget-object p1, p1, Le/a/p/a/m;->i:Ljava/lang/Long;

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->nb(Ljava/lang/Long;)V

    :cond_a
    return-void

    .line 20
    :pswitch_5
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 21
    iget-object v0, p1, Le/a/p/a/m;->z:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->n()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_b

    .line 22
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ew()V

    goto :goto_1

    :cond_b
    if-nez v0, :cond_c

    .line 23
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Dt()V

    :cond_c
    :goto_1
    return-void

    .line 24
    :pswitch_6
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 25
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 26
    :cond_d
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->wd()V

    :cond_e
    return-void

    .line 27
    :pswitch_7
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 28
    iput-object v2, p1, Le/a/p/a/m;->j:Ljava/util/Date;

    .line 29
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->ca()V

    .line 30
    :cond_f
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->lk()V

    :cond_10
    return-void

    .line 31
    :pswitch_8
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 32
    iget-object v0, p1, Le/a/p/a/m;->x:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v9

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "calendar"

    .line 34
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, -0x15

    .line 35
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 36
    iget-object v1, p1, Le/a/p/a/m;->j:Ljava/util/Date;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 37
    :cond_11
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x2

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v1, 0x5

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 40
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 41
    :cond_12
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v5, :cond_13

    invoke-interface/range {v5 .. v10}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->tn(IIIJ)V

    .line 42
    :cond_13
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "calendar.time"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Le/a/p/a/m;->q:Ljava/text/SimpleDateFormat;

    invoke-interface {v1, v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->qs(Ljava/util/Date;Ljava/text/DateFormat;)V

    :cond_14
    return-void

    .line 43
    :pswitch_9
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 44
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 45
    :cond_15
    iget-object v0, p1, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {v0}, Le/a/p/c;->e()Le/a/b0/e/b;

    move-result-object v0

    if-nez v0, :cond_16

    .line 46
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_17

    iget-object p1, p1, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {p1}, Le/a/p/c;->c()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->r9(Landroid/content/Intent;)V

    goto :goto_2

    .line 47
    :cond_16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz p1, :cond_17

    sget v1, Lcom/truecaller/editprofile/R$string;->ProfileEditSecondaryPhoneNumberActionsMessage:I

    .line 48
    iget-object v0, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 49
    invoke-interface {p1, v1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Ua(ILjava/lang/String;)V

    :cond_17
    :goto_2
    return-void

    .line 50
    :pswitch_a
    iget-object p1, p0, Le/a/p/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/b;

    invoke-virtual {p1}, Le/a/p/a/b;->gB()Le/a/p/a/l;

    move-result-object p1

    check-cast p1, Le/a/p/a/m;

    .line 51
    invoke-virtual {p1}, Le/a/p/a/m;->Qj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    move v3, v4

    :cond_18
    if-eqz v3, :cond_1b

    .line 52
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Pw()V

    .line 53
    :cond_19
    iget-object v0, p1, Le/a/p/a/m;->C:Le/a/p/c;

    invoke-interface {v0}, Le/a/p/c;->e()Le/a/b0/e/b;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 54
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_1b

    sget v1, Lcom/truecaller/editprofile/R$string;->ProfileEditNumberMessage:I

    invoke-virtual {p1}, Le/a/p/a/m;->Qj()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Wf(ILjava/lang/String;)V

    goto :goto_3

    .line 55
    :cond_1a
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_1b

    sget v2, Lcom/truecaller/editprofile/R$string;->ProfileEditNumberWithSecondaryNumberMessage:I

    invoke-virtual {p1}, Le/a/p/a/m;->Qj()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 57
    invoke-interface {v1, v2, p1, v0}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Dn(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
