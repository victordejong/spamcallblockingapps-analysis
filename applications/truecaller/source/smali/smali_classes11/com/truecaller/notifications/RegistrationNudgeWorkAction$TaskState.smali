.class public final enum Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/notifications/RegistrationNudgeWorkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;",
        "",
        "",
        "interval",
        "J",
        "getInterval",
        "()J",
        "",
        "title",
        "I",
        "getTitle",
        "()I",
        "text",
        "getText",
        "<init>",
        "(Ljava/lang/String;IJII)V",
        "INIT",
        "FIRST",
        "SECOND",
        "THIRD",
        "DONE",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

.field public static final enum DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

.field public static final enum FIRST:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

.field public static final enum INIT:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

.field public static final enum SECOND:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

.field public static final enum THIRD:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;


# instance fields
.field private final interval:J

.field private final text:I

.field private final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    new-instance v8, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const-string v2, "INIT"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const v6, 0x7f120338

    const v7, 0x7f120337

    move-object v1, v8

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;-><init>(Ljava/lang/String;IJII)V

    sput-object v8, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->INIT:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const-string v10, "FIRST"

    const/4 v11, 0x1

    const-wide/16 v12, 0xe10

    const v14, 0x7f120338

    const v15, 0x7f120337

    move-object v9, v1

    .line 2
    invoke-direct/range {v9 .. v15}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->FIRST:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const-string v4, "SECOND"

    const/4 v5, 0x2

    const-wide/32 v6, 0x15180

    const v8, 0x7f12033a

    const v9, 0x7f120339

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->SECOND:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const-string v4, "THIRD"

    const/4 v5, 0x3

    const-wide/32 v6, 0x93a80

    const v8, 0x7f12033c

    const v9, 0x7f12033b

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->THIRD:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const-string v4, "DONE"

    const/4 v5, 0x4

    const-wide/16 v6, -0x1

    const v8, 0x7f120338

    const v9, 0x7f120337

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;-><init>(Ljava/lang/String;IJII)V

    sput-object v1, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->DONE:Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->$VALUES:[Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->interval:J

    iput p5, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->title:I

    iput p6, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->text:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;
    .locals 1

    const-class v0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;
    .locals 1

    sget-object v0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->$VALUES:[Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    invoke-virtual {v0}, [Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;

    return-object v0
.end method


# virtual methods
.method public final getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->interval:J

    return-wide v0
.end method

.method public final getText()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->text:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/notifications/RegistrationNudgeWorkAction$TaskState;->title:I

    return v0
.end method
