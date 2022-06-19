.class public final Le/a/d/d/a/c;
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
        "Le/a/d/d/a/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/c;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;

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
    new-instance v0, Le/a/d/d/a/a/a/a;

    iget-object v1, p0, Le/a/d/d/a/c;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;

    iget-object v1, v1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 4
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->qa()Le/a/o2/f;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/a/d/d/a/c;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;

    iget-object v2, v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {v2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ra()Le/a/l4/c;

    move-result-object v2

    iget-object v3, p0, Le/a/d/d/a/c;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;

    iget-object v3, v3, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$h;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {v3}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ua()Le/a/p5/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/d/d/a/a/a/a;-><init>(Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Landroid/view/View;)V

    return-object v0
.end method
