.class public final Le/a/e/b/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/f;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/b/j/f;->a:Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->qa()Le/a/e/b/j/h;

    move-result-object p1

    check-cast p1, Le/a/e/b/j/l;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/j/i;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/e/b/j/i;->t4()V

    :cond_0
    return-void
.end method
