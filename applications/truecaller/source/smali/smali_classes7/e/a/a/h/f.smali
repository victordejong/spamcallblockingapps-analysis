.class public final Le/a/a/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;Landroid/content/Context;)V
    .locals 1

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h/f;->a:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p2, p0, Le/a/a/h/f;->b:Landroid/content/Context;

    return-void
.end method
