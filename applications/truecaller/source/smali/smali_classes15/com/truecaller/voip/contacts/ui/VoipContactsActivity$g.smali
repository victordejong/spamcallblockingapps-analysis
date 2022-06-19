.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;-><init>()V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$g;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$g;->a:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-virtual {p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->wa()Le/a/d/d/a/s;

    move-result-object p1

    invoke-interface {p1}, Le/a/d/d/a/s;->fi()V

    return-void
.end method
