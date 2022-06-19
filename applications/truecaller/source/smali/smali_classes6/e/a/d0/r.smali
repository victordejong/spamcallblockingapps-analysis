.class public final Le/a/d0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/q;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/r;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/v;)V
    .locals 4

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    iget-object v0, p0, Le/a/d0/r;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/truecaller/ui/components/FeedbackItemView;->c(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Landroid/content/Context;)Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d0/r;->a:Landroid/content/Context;

    .line 3
    iget-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 4
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 5
    sget v2, Lcom/truecaller/ui/FeedbackDialogActivity;->d:I

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/ui/FeedbackDialogActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v3, "FeedbackDialogActivity.EXTRA_SOURCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v2, "FeedbackDialogActivity.EXTRA_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
