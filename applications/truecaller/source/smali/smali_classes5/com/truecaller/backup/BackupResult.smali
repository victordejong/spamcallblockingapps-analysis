.class public final enum Lcom/truecaller/backup/BackupResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/backup/BackupResult$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/backup/BackupResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u001a\u0008\u0086\u0001\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/backup/BackupResult;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "Success",
        "Skipped",
        "MaxRunAttemptReached",
        "ErrorClient",
        "ErrorFile",
        "ErrorOpen",
        "ErrorWrite",
        "ErrorCommit",
        "ErrorCommitInternet",
        "ErrorDatabase",
        "ErrorNetwork",
        "ErrorRead",
        "ErrorFileName",
        "ErrorJsonParsing",
        "ErrorDBFileNotFound",
        "ErrorDBDeletion",
        "ErrorIO",
        "ErrorNotSupportedDb",
        "ErrorPropertyRead",
        "ErrorWorker",
        "ErrorSave",
        "backup_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/backup/BackupResult;

.field public static final Companion:Lcom/truecaller/backup/BackupResult$a;

.field public static final enum ErrorClient:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorCommit:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorCommitInternet:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorDBDeletion:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorDBFileNotFound:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorDatabase:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorFile:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorFileName:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorIO:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorNetwork:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorNotSupportedDb:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorOpen:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorPropertyRead:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorRead:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorSave:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorWorker:Lcom/truecaller/backup/BackupResult;

.field public static final enum ErrorWrite:Lcom/truecaller/backup/BackupResult;

.field public static final enum MaxRunAttemptReached:Lcom/truecaller/backup/BackupResult;

.field public static final enum Skipped:Lcom/truecaller/backup/BackupResult;

.field public static final enum Success:Lcom/truecaller/backup/BackupResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/truecaller/backup/BackupResult;

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "Success"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "Skipped"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "MaxRunAttemptReached"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->MaxRunAttemptReached:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorClient"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorClient:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorFile"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorFile:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorOpen"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorOpen:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorWrite"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorWrite:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorCommit"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorCommit:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorCommitInternet"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorCommitInternet:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorDatabase"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorDatabase:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorNetwork"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorNetwork:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorRead"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorRead:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorFileName"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorJsonParsing"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorDBFileNotFound"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorDBFileNotFound:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorDBDeletion"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorDBDeletion:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorIO"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorIO:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorNotSupportedDb"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorNotSupportedDb:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorPropertyRead"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorPropertyRead:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorWorker"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorWorker:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/backup/BackupResult;

    const-string v2, "ErrorSave"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/truecaller/backup/BackupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/backup/BackupResult;->ErrorSave:Lcom/truecaller/backup/BackupResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/backup/BackupResult;->$VALUES:[Lcom/truecaller/backup/BackupResult;

    new-instance v0, Lcom/truecaller/backup/BackupResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/backup/BackupResult$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/backup/BackupResult;->Companion:Lcom/truecaller/backup/BackupResult$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/backup/BackupResult;
    .locals 1

    const-class v0, Lcom/truecaller/backup/BackupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/backup/BackupResult;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/backup/BackupResult;
    .locals 1

    sget-object v0, Lcom/truecaller/backup/BackupResult;->$VALUES:[Lcom/truecaller/backup/BackupResult;

    invoke-virtual {v0}, [Lcom/truecaller/backup/BackupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/backup/BackupResult;

    return-object v0
.end method
