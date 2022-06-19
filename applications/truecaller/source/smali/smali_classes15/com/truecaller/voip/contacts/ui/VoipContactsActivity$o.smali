.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 2
    sget-object v1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->B:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->sa()Le/a/m3/g;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/m3/g;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Le/a/d/d/a/p;

    invoke-direct {v1, p0}, Le/a/d/d/a/p;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$o;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
