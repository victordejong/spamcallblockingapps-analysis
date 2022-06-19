.class public final Lcom/truecaller/details_view/qa/DetailsViewQaActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/qa/DetailsViewQaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/details_view/qa/DetailsViewQaActivity$b;->a:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/truecaller/details_view/qa/DetailsViewQaActivity$b;->a:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    .line 2
    iget-object v0, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->l:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "hasSearchWarnings"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Le/a/v/m/a;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Le/a/v/m/a;-><init>(Lcom/truecaller/details_view/qa/DetailsViewQaActivity;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/truecaller/details_view/qa/DetailsViewQaActivity$b;->a:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    const-string v2, "12345"

    .line 8
    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 9
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->j:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "hasNameSwitch"

    .line 10
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Alan Mamedi"

    invoke-virtual {p1, v2}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->f:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "hasAltNameSwitch"

    .line 12
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Bruce Wayne"

    invoke-virtual {p1, v2}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->L0(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->q:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "hasTransliteratedNameSwitch"

    .line 14
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Transliterated Name"

    invoke-virtual {p1, v2}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->L0(Ljava/lang/String;)V

    .line 15
    :cond_3
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->e:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "hasAddressSwitch"

    .line 16
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const-string v3, "SE"

    if-eqz v2, :cond_4

    .line 17
    new-instance v2, Lcom/truecaller/data/entity/Address;

    invoke-direct {v2}, Lcom/truecaller/data/entity/Address;-><init>()V

    const-string v4, "Stockholm"

    .line 18
    invoke-virtual {p1, v4}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/truecaller/data/entity/Address;->setCity(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/Address;->setCountryCode(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    .line 21
    :cond_4
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->B:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v4, "showTimezone"

    .line 22
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    new-instance v2, Lcom/truecaller/data/entity/Address;

    invoke-direct {v2}, Lcom/truecaller/data/entity/Address;-><init>()V

    const-string v4, "India"

    .line 24
    invoke-virtual {v2, v4}, Lcom/truecaller/data/entity/Address;->setCity(Ljava/lang/String;)V

    const-string v4, "IN"

    .line 25
    invoke-virtual {v2, v4}, Lcom/truecaller/data/entity/Address;->setCountryCode(Ljava/lang/String;)V

    const-string v4, "+05:30"

    .line 26
    invoke-virtual {v2, v4}, Lcom/truecaller/data/entity/Address;->setTimeZone(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    .line 28
    :cond_5
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->g:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v4, "hasAvatarSwitch"

    .line 29
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 30
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v4, "https://storage.googleapis.com/tc-images-eu/myview/1/e9118ec2a5b4fdf1ab572ab98362bd74/3"

    iput-object v4, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    .line 31
    :cond_6
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->p:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v4, "hasTagSwitch"

    .line 32
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    new-instance v2, Lcom/truecaller/data/entity/Tag;

    invoke-direct {v2}, Lcom/truecaller/data/entity/Tag;-><init>()V

    sget-object v5, Ls1/c0/c;->b:Ls1/c0/c$a;

    const/16 v6, 0xc

    invoke-virtual {v5, v4, v6}, Ls1/c0/c$a;->d(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/truecaller/data/entity/Tag;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->g(Lcom/truecaller/data/entity/Tag;)V

    .line 33
    :cond_7
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->x:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "isSpamSwitch"

    .line 34
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 35
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v5, "SPAMMER"

    iput-object v5, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    .line 36
    :cond_8
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->o:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "hasSpamReportsSwitch"

    .line 37
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->Z0(Ljava/lang/Integer;)V

    .line 38
    :cond_9
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->n:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "hasSpamCategorySwitch"

    .line 39
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 40
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v5, "1"

    iput-object v5, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    .line 41
    :cond_a
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->w:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "isPrioritySwitch"

    .line 42
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 43
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v2, v2, 0x10

    .line 44
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 45
    :cond_b
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->z:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "isVerifiedSwitch"

    .line 46
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 47
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v2, v2, 0x2

    .line 48
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 49
    :cond_c
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->v:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "isPremiumSwitch"

    .line 50
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 51
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v2, v2, 0x4

    .line 52
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 53
    :cond_d
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->t:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "isGoldSwitch"

    .line 54
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 55
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v2, v2, 0x20

    .line 56
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 57
    :cond_e
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->r:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "isBusinessSwitch"

    .line 58
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const-string v5, "True Software Scandinavia AB"

    if-eqz v2, :cond_f

    .line 59
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit8 v2, v2, 0x40

    .line 60
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 61
    invoke-virtual {p1, v5}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    .line 62
    :cond_f
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->y:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v6, "isVerifiedBusinessSwitch"

    .line 63
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 64
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit16 v2, v2, 0x80

    .line 65
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 66
    invoke-virtual {p1, v5}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    .line 67
    :cond_10
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->s:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v6, "isCredPrivilegeSwitch"

    .line 68
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 69
    iget v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    add-int/lit16 v2, v2, 0x100

    .line 70
    iput v2, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 71
    :cond_11
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->i:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v6, "hasJobSwitch"

    .line 72
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 73
    invoke-virtual {p1, v5}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    const-string v2, "CEO"

    .line 74
    invoke-virtual {p1, v2}, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->pa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->R0(Ljava/lang/String;)V

    .line 75
    :cond_12
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->k:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v5, "hasNotesSwitch"

    .line 76
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 77
    new-instance v2, Lcom/truecaller/data/entity/Note;

    invoke-direct {v2}, Lcom/truecaller/data/entity/Note;-><init>()V

    const-string v5, "My bestest friend in the whole wide world."

    invoke-virtual {v2, v5}, Lcom/truecaller/data/entity/Note;->setValue(Ljava/lang/String;)V

    .line 78
    iput-object v2, v0, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    .line 79
    :cond_13
    iget-object v2, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->l:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 80
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 81
    new-instance v1, Lcom/truecaller/data/entity/SearchWarning;

    invoke-direct {v1}, Lcom/truecaller/data/entity/SearchWarning;-><init>()V

    const-string v2, "2147483647"

    invoke-virtual {v1, v2}, Lcom/truecaller/data/entity/SearchWarning;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->e(Lcom/truecaller/data/entity/SearchWarning;)V

    .line 82
    :cond_14
    iget-object v1, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->u:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const-string v2, "isPhonebookContact"

    .line 83
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->T0(Ljava/lang/Long;)V

    .line 84
    :cond_15
    invoke-virtual {v0, v4}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 85
    iget-object v1, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/c;

    .line 86
    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/data/entity/Contact;->X0(J)V

    .line 87
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->M0(Ljava/lang/Long;)V

    .line 88
    iget-object v1, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->b:Ljava/lang/String;

    invoke-static {v1, v1, v3}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_16

    const/16 v2, 0xd

    .line 89
    iput v2, v1, Lcom/truecaller/data/entity/Number;->a:I

    :cond_16
    if-eqz v1, :cond_17

    goto :goto_0

    .line 90
    :cond_17
    new-instance v1, Lcom/truecaller/data/entity/Number;

    invoke-direct {v1}, Lcom/truecaller/data/entity/Number;-><init>()V

    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 92
    iget-object v1, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->d:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const-string v2, "hasAboutSwitch"

    .line 93
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 94
    iget-object v1, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v2, "Hi! I\u2019m a freelance designer always looking for work, check my portfolio on my website. Hope to hear from you!"

    iput-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->about:Ljava/lang/String;

    .line 95
    :cond_18
    iget-object v1, p1, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->h:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const-string v2, "hasEmailSwitch"

    .line 96
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "test@test.com"

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 99
    new-instance v3, Lcom/truecaller/data/entity/Link;

    invoke-direct {v3}, Lcom/truecaller/data/entity/Link;-><init>()V

    const-string v4, "email"

    .line 100
    invoke-virtual {v3, v4}, Lcom/truecaller/data/entity/Link;->setService(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v2}, Lcom/truecaller/data/entity/Link;->setInfo(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->c(Lcom/truecaller/data/entity/Link;)V

    goto :goto_1

    .line 103
    :cond_1a
    sget-object v1, Lcom/truecaller/details_view/analytics/SourceType;->External:Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "context"

    .line 104
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contact"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ARG_CONTACT"

    .line 106
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "ARG_SOURCE_TYPE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "SHOULD_SAVE"

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 109
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
