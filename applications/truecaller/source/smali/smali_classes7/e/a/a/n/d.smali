.class public final Le/a/a/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/String;Z)V
    .locals 1
    .param p3    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "is_delete_mode"
        .end annotation
    .end param

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/n/d;->a:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p2, p0, Le/a/a/n/d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/a/n/d;->c:Z

    return-void
.end method
