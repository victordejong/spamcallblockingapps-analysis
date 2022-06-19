.class public final enum Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/conversation/voice_notes/RecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;",
        "",
        "",
        "color",
        "I",
        "getColor",
        "()I",
        "icon",
        "getIcon",
        "<init>",
        "(Ljava/lang/String;III)V",
        "RECORD",
        "DELETE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

.field public static final enum DELETE:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

.field public static final enum RECORD:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;


# instance fields
.field private final color:I

.field private final icon:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    new-instance v1, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    const-string v2, "RECORD"

    const/4 v3, 0x0

    const v4, 0x7f080746

    const v5, 0x7f0405a1

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->RECORD:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    const-string v2, "DELETE"

    const/4 v3, 0x1

    const v4, 0x7f080699

    const v5, 0x7f04056e

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->DELETE:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->$VALUES:[Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->icon:I

    iput p4, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->color:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->$VALUES:[Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;

    return-object v0
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->color:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$RecordState;->icon:I

    return v0
.end method
