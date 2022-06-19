.class public final Le/a/e/b/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/RadioButton;

.field public final synthetic b:Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;


# direct methods
.method public constructor <init>(Landroid/widget/RadioButton;Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/i/a;->a:Landroid/widget/RadioButton;

    iput-object p2, p0, Le/a/e/b/i/a;->b:Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/e/b/i/a;->b:Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;

    iget-object v0, p0, Le/a/e/b/i/a;->a:Landroid/widget/RadioButton;

    .line 2
    sget v1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;->l:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    const-string v1, "presenter"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object p1, p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;->d:Le/a/e/b/i/d;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/truecaller/ui/settings/appearance/ThemeType;->DEFAULT_INHERIT:Lcom/truecaller/ui/settings/appearance/ThemeType;

    invoke-virtual {p1, v0}, Le/a/e/b/i/d;->Jj(Lcom/truecaller/ui/settings/appearance/ThemeType;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 7
    :pswitch_1
    iget-object p1, p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;->d:Le/a/e/b/i/d;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/truecaller/ui/settings/appearance/ThemeType;->DARK_MODE:Lcom/truecaller/ui/settings/appearance/ThemeType;

    invoke-virtual {p1, v0}, Le/a/e/b/i/d;->Jj(Lcom/truecaller/ui/settings/appearance/ThemeType;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :pswitch_2
    iget-object p1, p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;->d:Le/a/e/b/i/d;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/truecaller/ui/settings/appearance/ThemeType;->BRIGHT_MODE:Lcom/truecaller/ui/settings/appearance/ThemeType;

    invoke-virtual {p1, v0}, Le/a/e/b/i/d;->Jj(Lcom/truecaller/ui/settings/appearance/ThemeType;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0dcb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
