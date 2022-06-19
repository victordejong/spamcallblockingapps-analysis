.class public final Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;->a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;->a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;->a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;->a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/m3/f;->d:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    .line 5
    sget v1, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->g:I

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->a(Z)V

    :cond_0
    return-void
.end method
