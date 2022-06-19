.class public final synthetic Le/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/AfterClipboardSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/AfterClipboardSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/d;->a:Lcom/truecaller/ui/AfterClipboardSearchActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Le/a/e/d;->a:Lcom/truecaller/ui/AfterClipboardSearchActivity;

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p1, Lcom/truecaller/ui/AfterClipboardSearchActivity;->c:Le/a/h3/b/a;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Le/a/h3/b/a;->j(Z)V

    .line 2
    :cond_0
    iget-object p2, p1, Lcom/truecaller/ui/AfterClipboardSearchActivity;->b:Lcom/truecaller/settings/CallingSettings;

    const/4 v0, 0x1

    const-string v1, "clipboardSearchHaveAskedOnDismiss"

    invoke-interface {p2, v1, v0}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
