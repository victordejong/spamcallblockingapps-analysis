.class public final Le/a/d/d/a/j;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/d/a/j;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 3

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/d/d/a/j;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 3
    invoke-virtual {p1, v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->xa(F)V

    .line 4
    iget-object p1, p0, Le/a/d/d/a/j;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 5
    iget-object p1, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->u:Landroid/view/animation/AccelerateInterpolator;

    if-ltz v0, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    int-to-float v0, v0

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float p2, v0, p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    .line 7
    iget-object p2, p0, Le/a/d/d/a/j;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 8
    invoke-virtual {p2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object p2

    .line 9
    iget-object v0, p2, Le/a/m3/g;->b:Landroid/view/View;

    const-string v1, "backgroundView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-object v0, p2, Le/a/m3/g;->c:Landroid/view/View;

    const-string v1, "bottomShadowView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object v0, p2, Le/a/m3/g;->g:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v1, "fabGroupCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 12
    iget-object p2, p2, Le/a/m3/g;->e:Landroid/widget/Button;

    const-string v0, "buttonCreateGroupCall"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 2

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p1, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;->HIDDEN:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;->COLLAPSED:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;->EXPANDED:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    goto :goto_0

    .line 4
    :cond_3
    sget-object p1, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;->DRAGGING:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bottom sheet state changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    iget-object p2, p0, Le/a/d/d/a/j;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {p2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->wa()Le/a/d/d/a/s;

    move-result-object p2

    invoke-interface {p2, p1}, Le/a/d/d/a/s;->f3(Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;)V

    return-void
.end method
