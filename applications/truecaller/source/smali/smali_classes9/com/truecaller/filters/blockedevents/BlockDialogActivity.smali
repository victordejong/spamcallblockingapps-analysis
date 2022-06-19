.class public Lcom/truecaller/filters/blockedevents/BlockDialogActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method

.method public static pa(Landroid/content/Context;Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Le/a/l4/k;->l0(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "No dialog type specified"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Le/a/h0/a/b0/a;

    invoke-direct {p1}, Le/a/h0/a/b0/a;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Le/a/h0/a/d0/c;

    invoke-direct {p1}, Le/a/h0/a/d0/c;-><init>()V

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Le/a/h0/a/a0/c;

    invoke-direct {p1}, Le/a/h0/a/a0/c;-><init>()V

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Le/a/h0/a/c0/c;

    invoke-direct {p1}, Le/a/h0/a/c0/c;-><init>()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 11
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x1020002

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, p1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 13
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    :cond_4
    return-void
.end method
