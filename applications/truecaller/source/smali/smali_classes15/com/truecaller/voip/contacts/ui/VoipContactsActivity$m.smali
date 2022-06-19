.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->c9(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$m;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$m;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->wa()Le/a/d/d/a/s;

    move-result-object p1

    invoke-interface {p1}, Le/a/d/d/a/s;->m()V

    return-void
.end method
