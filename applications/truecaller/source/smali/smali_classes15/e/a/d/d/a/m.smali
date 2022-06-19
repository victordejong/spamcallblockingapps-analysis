.class public final Le/a/d/d/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/m;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/d/d/a/m;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->wa()Le/a/d/d/a/s;

    move-result-object p1

    iget-object p2, p0, Le/a/d/d/a/m;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->ta()Le/a/m3/h;

    move-result-object p2

    .line 3
    iget-object p2, p2, Le/a/m3/h;->k:Landroidx/appcompat/widget/AppCompatEditText;

    const-string p3, "bindingContent.searchFieldEditText"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 4
    invoke-interface {p1, p2, p3}, Le/a/d/d/a/s;->Fh(Ljava/lang/String;Z)V

    return-void
.end method
