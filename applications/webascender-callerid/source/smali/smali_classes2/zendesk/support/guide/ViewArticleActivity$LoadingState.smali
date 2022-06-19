.class final enum Lzendesk/support/guide/ViewArticleActivity$LoadingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/ViewArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoadingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/guide/ViewArticleActivity$LoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/guide/ViewArticleActivity$LoadingState;

.field public static final enum DISPLAYING:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

.field public static final enum ERRORED:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

.field public static final enum ERRORED_ATTACHMENT:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

.field public static final enum LOADING:Lzendesk/support/guide/ViewArticleActivity$LoadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/guide/ViewArticleActivity$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->LOADING:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    new-instance v1, Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    const-string v3, "DISPLAYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/support/guide/ViewArticleActivity$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->DISPLAYING:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    new-instance v3, Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    const-string v5, "ERRORED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/support/guide/ViewArticleActivity$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->ERRORED:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    new-instance v5, Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    const-string v7, "ERRORED_ATTACHMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/support/guide/ViewArticleActivity$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->ERRORED_ATTACHMENT:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    const/4 v7, 0x4

    new-array v7, v7, [Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->$VALUES:[Lzendesk/support/guide/ViewArticleActivity$LoadingState;

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

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/guide/ViewArticleActivity$LoadingState;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    return-object p0
.end method

.method public static values()[Lzendesk/support/guide/ViewArticleActivity$LoadingState;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->$VALUES:[Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    invoke-virtual {v0}, [Lzendesk/support/guide/ViewArticleActivity$LoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    return-object v0
.end method
