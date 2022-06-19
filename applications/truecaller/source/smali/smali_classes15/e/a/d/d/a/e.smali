.class public final Le/a/d/d/a/e;
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
        "Le/a/d/d/a/a/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/e;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/d/d/a/a/c/c;

    .line 4
    iget-object v1, p0, Le/a/d/d/a/e;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;

    iget-object v1, v1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 5
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->qa()Le/a/o2/f;

    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Le/a/d/d/a/a/c/c;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0
.end method
