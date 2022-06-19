.class public final Le/a/a/k/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Lcom/truecaller/ui/TruecallerInit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2
    const-class v2, Lcom/truecaller/messaging/conversation/ConversationActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 3
    const-class v2, Lcom/truecaller/messaging/groupinfo/GroupInfoActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4
    const-class v2, Lcom/truecaller/messaging/imgroupinvitation/ImGroupInvitationActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 5
    const-class v2, Lcom/truecaller/messaging/mediamanager/MediaManagerActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 6
    const-class v2, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    aput-object v2, v0, v1

    .line 7
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/a/a/k/a/f0;->a:Ljava/util/Set;

    return-void
.end method
