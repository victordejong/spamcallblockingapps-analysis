.class public final enum Lcom/truecaller/messaging/conversation/search/SearchFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/search/SearchFilter;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/search/SearchFilter;",
        "",
        "",
        "icon",
        "I",
        "getIcon",
        "()I",
        "text",
        "getText",
        "<init>",
        "(Ljava/lang/String;III)V",
        "DATE",
        "STARRED",
        "MEMBER",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/search/SearchFilter;

.field public static final enum DATE:Lcom/truecaller/messaging/conversation/search/SearchFilter;

.field public static final enum MEMBER:Lcom/truecaller/messaging/conversation/search/SearchFilter;

.field public static final enum STARRED:Lcom/truecaller/messaging/conversation/search/SearchFilter;


# instance fields
.field private final icon:I

.field private final text:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/search/SearchFilter;

    new-instance v1, Lcom/truecaller/messaging/conversation/search/SearchFilter;

    const-string v2, "DATE"

    const/4 v3, 0x0

    const v4, 0x7f08045e

    const v5, 0x7f120efa

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/conversation/search/SearchFilter;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/messaging/conversation/search/SearchFilter;->DATE:Lcom/truecaller/messaging/conversation/search/SearchFilter;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/search/SearchFilter;

    const-string v2, "STARRED"

    const/4 v3, 0x1

    const v4, 0x7f08066f

    const v5, 0x7f120efc

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/conversation/search/SearchFilter;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/messaging/conversation/search/SearchFilter;->STARRED:Lcom/truecaller/messaging/conversation/search/SearchFilter;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/search/SearchFilter;

    const-string v2, "MEMBER"

    const/4 v3, 0x2

    const v4, 0x7f0805ab

    const v5, 0x7f120efb

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/truecaller/messaging/conversation/search/SearchFilter;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/messaging/conversation/search/SearchFilter;->MEMBER:Lcom/truecaller/messaging/conversation/search/SearchFilter;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->$VALUES:[Lcom/truecaller/messaging/conversation/search/SearchFilter;

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

    iput p3, p0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->icon:I

    iput p4, p0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->text:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/search/SearchFilter;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/search/SearchFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/search/SearchFilter;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/search/SearchFilter;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->$VALUES:[Lcom/truecaller/messaging/conversation/search/SearchFilter;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/search/SearchFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/search/SearchFilter;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->icon:I

    return v0
.end method

.method public final getText()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/search/SearchFilter;->text:I

    return v0
.end method
