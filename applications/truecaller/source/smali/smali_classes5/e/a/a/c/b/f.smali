.class public final Le/a/a/c/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/messaging/data/types/Conversation;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Conversation;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/b/f;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/b/f;->b:Lcom/truecaller/messaging/data/types/Conversation;

    iput p3, p0, Le/a/a/c/b/f;->c:I

    return-void
.end method
