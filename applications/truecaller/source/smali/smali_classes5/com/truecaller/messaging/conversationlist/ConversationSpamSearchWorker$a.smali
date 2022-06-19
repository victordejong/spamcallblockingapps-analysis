.class public final Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/y2/h;
    .locals 4

    .line 1
    new-instance v0, Le/a/y2/h;

    const-class v1, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;I)V

    .line 2
    sget-object v1, Ln3/m0/q;->b:Ln3/m0/q;

    invoke-virtual {v0, v1}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ConversationSpamSearchWorker"

    return-object v0
.end method
