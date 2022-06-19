.class public Le/a/c/c/d/c0$a;
.super Ln3/z/v$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/c0;->a(Ljava/lang/String;)Ln3/z/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/v$b<",
        "Ljava/lang/Integer;",
        "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/c/c/d/c0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/c0;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/c0$a;->b:Le/a/c/c/d/c0;

    iput-object p2, p0, Le/a/c/c/d/c0$a;->a:Ln3/c0/y;

    invoke-direct {p0}, Ln3/z/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln3/z/v;
    .locals 8

    .line 1
    new-instance v7, Le/a/c/c/d/b0;

    iget-object v0, p0, Le/a/c/c/d/c0$a;->b:Le/a/c/c/d/c0;

    .line 2
    iget-object v2, v0, Le/a/c/c/d/c0;->a:Ln3/c0/q;

    .line 3
    iget-object v3, p0, Le/a/c/c/d/c0$a;->a:Ln3/c0/y;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v0, "sms_backup_table"

    const-string v1, "sms_message_fts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Le/a/c/c/d/b0;-><init>(Le/a/c/c/d/c0$a;Ln3/c0/q;Ln3/c0/y;ZZ[Ljava/lang/String;)V

    return-object v7
.end method
