.class public Le/a/a/c/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;

.field public final b:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:I

.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/truecaller/messaging/conversation/ConversationMode;

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Long;Ljava/lang/Long;Landroid/content/Context;ILjava/lang/String;Lcom/truecaller/messaging/conversation/ConversationMode;ZZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "At least one should be not null"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isFalse(Z[Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/a/c/a5;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    iput-object p2, p0, Le/a/a/c/a5;->b:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iput-object p3, p0, Le/a/a/c/a5;->c:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Le/a/a/c/a5;->d:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Le/a/a/c/a5;->f:Landroid/content/Context;

    .line 8
    iput p6, p0, Le/a/a/c/a5;->e:I

    .line 9
    iput-object p7, p0, Le/a/a/c/a5;->g:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Le/a/a/c/a5;->h:Lcom/truecaller/messaging/conversation/ConversationMode;

    .line 11
    iput-boolean p9, p0, Le/a/a/c/a5;->i:Z

    .line 12
    iput-boolean p11, p0, Le/a/a/c/a5;->j:Z

    .line 13
    iput-boolean p10, p0, Le/a/a/c/a5;->k:Z

    .line 14
    invoke-static {p5}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result p1

    .line 15
    iput-boolean p1, p0, Le/a/a/c/a5;->l:Z

    .line 16
    iput-boolean p12, p0, Le/a/a/c/a5;->m:Z

    return-void
.end method
