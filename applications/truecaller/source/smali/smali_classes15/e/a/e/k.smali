.class public final synthetic Le/a/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/FeedbackDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/FeedbackDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/k;->a:Lcom/truecaller/ui/FeedbackDialogActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Le/a/e/k;->a:Lcom/truecaller/ui/FeedbackDialogActivity;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
