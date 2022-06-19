.class public Le/a/a/c/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/a/c/i6;


# direct methods
.method public constructor <init>(Le/a/a/c/i6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/h6;->a:Le/a/a/c/i6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/h6;->a:Le/a/a/c/i6;

    .line 2
    iget-boolean v0, p1, Le/a/a/c/i6;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/a/c/i6;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/a/c/i6;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/q3;

    check-cast p1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-interface {v0, p1}, Le/a/a/c/q3;->f0(Lcom/truecaller/messaging/conversation/ConversationActivity;)V

    :cond_0
    return-void
.end method
