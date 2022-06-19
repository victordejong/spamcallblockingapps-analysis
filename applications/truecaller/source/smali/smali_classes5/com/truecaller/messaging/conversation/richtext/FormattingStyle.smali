.class public final enum Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;",
        "",
        "",
        "allowMultiline",
        "Z",
        "getAllowMultiline",
        "()Z",
        "",
        "delimiter",
        "Ljava/lang/String;",
        "getDelimiter",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "BOLD",
        "ITALIC",
        "UNDERLINE",
        "STRIKETHROUGH",
        "MONOSPACE_MULTILINE",
        "MONOSPACE",
        "messaging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

.field public static final enum BOLD:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

.field public static final enum ITALIC:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

.field public static final enum MONOSPACE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

.field public static final enum MONOSPACE_MULTILINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

.field public static final enum STRIKETHROUGH:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

.field public static final enum UNDERLINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;


# instance fields
.field private final allowMultiline:Z

.field private final delimiter:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    new-instance v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const-string v2, "BOLD"

    const/4 v3, 0x0

    const-string v4, "*"

    .line 1
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->BOLD:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const-string v2, "ITALIC"

    const/4 v4, 0x1

    const-string v5, "_"

    .line 2
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->ITALIC:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const-string v2, "UNDERLINE"

    const/4 v5, 0x2

    const-string v6, "+"

    .line 3
    invoke-direct {v1, v2, v5, v6, v3}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->UNDERLINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const-string v2, "STRIKETHROUGH"

    const/4 v5, 0x3

    const-string v6, "~"

    .line 4
    invoke-direct {v1, v2, v5, v6, v3}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->STRIKETHROUGH:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const-string v2, "MONOSPACE_MULTILINE"

    const/4 v5, 0x4

    const-string v6, "```"

    .line 5
    invoke-direct {v1, v2, v5, v6, v4}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE_MULTILINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const-string v2, "MONOSPACE"

    const/4 v4, 0x5

    const-string v5, "`"

    .line 6
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->$VALUES:[Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->delimiter:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->allowMultiline:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->$VALUES:[Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    return-object v0
.end method


# virtual methods
.method public final getAllowMultiline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->allowMultiline:Z

    return v0
.end method

.method public final getDelimiter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->delimiter:Ljava/lang/String;

    return-object v0
.end method
