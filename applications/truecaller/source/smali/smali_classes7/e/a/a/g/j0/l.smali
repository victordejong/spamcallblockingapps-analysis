.class public final Le/a/a/g/j0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;J)V
    .locals 1

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/j0/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    iput-wide p2, p0, Le/a/a/g/j0/l;->b:J

    return-void
.end method
