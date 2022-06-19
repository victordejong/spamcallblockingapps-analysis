.class public final Le/a/d/d/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/p;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/d/a/p;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;

    iget-object v0, v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    return-void

    :cond_0
    const-string v0, "bottomSheetBehavior"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
