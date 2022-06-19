.class public final Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$e;->a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$e;->a:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    invoke-virtual {p1}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->qa()Le/a/a/h1/n/j;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/h1/n/j;->onCloseClick()V

    return-void
.end method
