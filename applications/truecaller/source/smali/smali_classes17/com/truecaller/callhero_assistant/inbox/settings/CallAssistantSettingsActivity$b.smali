.class public final Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$b;->a:Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity$b;->a:Lcom/truecaller/callhero_assistant/inbox/settings/CallAssistantSettingsActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
