.class public final Le/a/d/d/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/o;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/d/d/a/o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/d/a/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/d/d/a/o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-static {v0}, Le/a/p5/s0/g;->f0(Landroid/content/Context;)I

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/d/d/a/o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 4
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v1

    .line 6
    iget-object v1, v1, Le/a/m3/g;->h:Landroid/view/View;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 8
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v1, p0, Le/a/d/d/a/o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v1

    .line 12
    iget-object v1, v1, Le/a/m3/g;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.bottomSheet"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/d/d/a/o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v2

    .line 14
    iget-object v2, v2, Le/a/m3/g;->i:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v3, "binding.voipContactsContainer"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMaxHeight(I)V

    return-void
.end method
