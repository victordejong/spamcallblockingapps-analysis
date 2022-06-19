.class public final synthetic Le/a/e/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/v;->a:Lcom/truecaller/ui/TruecallerInit;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Le/a/e/v;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v6, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    sget-object v2, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->ADD_PARTICIPANTS:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v5, "voiceLauncherOneToOne"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "activity"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "ARG_FORCE_DARK_THEME"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "ARG_VOIP_SCREEN_PARAMS"

    .line 7
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->r0:Le/a/q2/a;

    const-string v0, "callLog"

    const-string v1, "voipLauncherFab"

    invoke-static {v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
