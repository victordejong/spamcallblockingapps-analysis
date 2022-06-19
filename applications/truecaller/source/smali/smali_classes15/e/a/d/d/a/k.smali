.class public final Le/a/d/d/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/k;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/d/d/a/k;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 2
    sget-object v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/m3/g;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.callButtonContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    const-string v2, "insets"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ln3/k/i/d0;->c()I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget-object p1, Ln3/k/i/d0;->b:Ln3/k/i/d0;

    return-object p1
.end method
