.class public final Lx;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lx;->a:I

    iput-object p2, p0, Lx;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget p1, p0, Lx;->a:I

    const-string v0, "Setting"

    const-string v1, "Enabled"

    const-string v2, "Disabled"

    const-string v3, "presenter"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    if-ne p1, v4, :cond_2

    .line 1
    iget-object p1, p0, Lx;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;->d:Le/a/e/b/i/d;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v2, "MostCalled"

    .line 3
    invoke-virtual {p1, v0, v2, v1}, Le/a/e/b/i/d;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/e/b/i/d;->e:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "showFrequentlyCalledContacts"

    invoke-interface {p1, v0, p2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 5
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 6
    :cond_2
    throw v5

    .line 7
    :cond_3
    iget-object p1, p0, Lx;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;

    .line 8
    iget-object p1, p1, Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;->d:Le/a/e/b/i/d;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    const-string v2, "GroupCalls"

    .line 9
    invoke-virtual {p1, v0, v2, v1}, Le/a/e/b/i/d;->Ij(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "merge_by"

    if-eqz p2, :cond_5

    .line 10
    iget-object p1, p1, Le/a/e/b/i/d;->e:Lcom/truecaller/settings/CallingSettings;

    const/4 p2, 0x3

    invoke-interface {p1, v0, p2}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 11
    :cond_5
    iget-object p1, p1, Le/a/e/b/i/d;->e:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {p1, v0, v4}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    :goto_2
    return-void

    .line 12
    :cond_6
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method
