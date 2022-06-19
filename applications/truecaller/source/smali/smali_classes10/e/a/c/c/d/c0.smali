.class public final Le/a/c/c/d/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/a0;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Le/a/c/c0/g;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/c0;->b:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/c0;->a:Ln3/c0/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ln3/z/v$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ln3/z/v$b<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            ">;"
        }
    .end annotation

    const-string v0, "\n        SELECT \n            Messages.messageID,\n            Messages.address,\n            Messages.message,\n            Messages.date,\n            Messages.conversationId\n        FROM sms_backup_table AS Messages\n        JOIN  sms_message_fts ON (messageID = docid)\n        WHERE sms_message_fts MATCH ?\n    "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    new-instance p1, Le/a/c/c/d/c0$a;

    invoke-direct {p1, p0, v0}, Le/a/c/c/d/c0$a;-><init>(Le/a/c/c/d/c0;Ln3/c0/y;)V

    return-object p1
.end method
