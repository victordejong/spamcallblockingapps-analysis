.class public final Le/a/e/b/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/a;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/b/j/a;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->qa()Le/a/e/b/j/h;

    move-result-object p1

    check-cast p1, Le/a/e/b/j/l;

    .line 2
    iget-object p1, p1, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "afterCall"

    invoke-interface {p1, v0, p2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
