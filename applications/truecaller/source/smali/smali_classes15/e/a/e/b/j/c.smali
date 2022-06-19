.class public final Le/a/e/b/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/c;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/e/b/j/c;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->qa()Le/a/e/b/j/h;

    move-result-object p1

    check-cast p1, Le/a/e/b/j/l;

    .line 2
    iget-object v0, p1, Le/a/e/b/j/l;->n:Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/b/j/i;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->ANNOUNCE_CALLER_ID:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v1, "premiumAnnounceCallerId"

    invoke-interface {p2, v0, v1}, Le/a/e/b/j/i;->y4(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/j/i;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/e/b/j/i;->a7(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p1, Le/a/e/b/j/l;->o:Le/a/s2/g/a;

    .line 6
    sget-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;->CALLER_ID_SETTINGS:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

    .line 7
    iget-object v2, p1, Le/a/e/b/j/l;->p:Le/a/l/c/n/d;

    sget-object v3, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v2, v3}, Le/a/l/c/n/d;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v2

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, v3, v1, p2, v2}, Le/a/s2/g/a;->c(Ljava/lang/Integer;Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;ZZ)V

    .line 9
    iget-object p1, p1, Le/a/e/b/j/l;->n:Le/a/s2/c;

    invoke-interface {p1, p2}, Le/a/s2/c;->k(Z)V

    :cond_2
    :goto_0
    return-void
.end method
