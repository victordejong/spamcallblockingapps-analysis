.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;Landroid/app/Activity;ILcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;ZI)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    const-string p5, "activity"

    .line 1
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "params"

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;->b(Landroid/content/Context;Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;Z)Landroid/content/Intent;

    move-result-object p0

    .line 3
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Set;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V

    .line 2
    invoke-virtual {p0, p1, v0, p3}, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$c;->b(Landroid/content/Context;Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ARG_UNLOCK_SCREEN"

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public final b(Landroid/content/Context;Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "ARG_FORCE_DARK_THEME"

    .line 2
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "ARG_VOIP_SCREEN_PARAMS"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
