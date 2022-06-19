.class public final Le/a/k0/n/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/c/a;->a:Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/k0/n/c/a;->a:Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;

    invoke-virtual {p1}, Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;->getPresenter()Le/a/k0/n/c/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/k0/n/c/g;->Vi()V

    return-void
.end method
