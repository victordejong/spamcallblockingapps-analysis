.class public final Le/a/d/d/a/q;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/d/d/a/a/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/q;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/d/d/a/a/d/c;

    .line 4
    iget-object v1, p0, Le/a/d/d/a/q;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;

    iget-object v1, v1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ua()Le/a/p5/c;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/d/d/a/q;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;

    iget-object v2, v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {v2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ra()Le/a/l4/c;

    move-result-object v2

    .line 6
    iget-object v3, p0, Le/a/d/d/a/q;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;

    iget-object v3, v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$p;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 7
    iget-object v3, v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->o:Le/a/d/d/a/a/d/d;

    if-eqz v3, :cond_0

    .line 8
    invoke-direct {v0, p1, v1, v2, v3}, Le/a/d/d/a/a/d/c;-><init>(Landroid/view/View;Le/a/p5/c;Le/a/l4/c;Le/a/d/d/a/a/d/d;)V

    return-object v0

    :cond_0
    const-string p1, "suggestedBarAdapterPresenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
