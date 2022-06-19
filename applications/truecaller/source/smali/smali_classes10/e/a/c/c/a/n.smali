.class public final Le/a/c/c/a/n;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x15

    const/16 v1, 0x16

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "CREATE VIRTUAL TABLE IF NOT EXISTS `sms_message_fts` \nUSING FTS4(`message`, `address`, \ncontent=`sms_backup_table`)"

    const-string v2, "INSERT INTO sms_message_fts(sms_message_fts) VALUES (\'rebuild\')"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
