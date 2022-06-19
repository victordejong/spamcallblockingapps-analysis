.class public final Le/a/a/c/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "conversation"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/a/c/o/b;->a:Lcom/truecaller/messaging/data/types/Conversation;

    return-void
.end method
