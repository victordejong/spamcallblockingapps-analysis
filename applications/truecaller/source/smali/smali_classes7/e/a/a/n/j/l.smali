.class public final Le/a/a/n/j/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;

.field public final b:Lcom/truecaller/messaging/mediamanager/AttachmentType;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/mediamanager/AttachmentType;Z)V
    .locals 1

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/n/j/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p2, p0, Le/a/a/n/j/l;->b:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    iput-boolean p3, p0, Le/a/a/n/j/l;->c:Z

    return-void
.end method
