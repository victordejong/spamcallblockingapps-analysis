.class public final enum Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/log/UnmutedException$InsightsExceptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;",
        "",
        "",
        "description",
        "Ljava/lang/String;",
        "getDescription",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "PARSE_FAILURE",
        "PARSER_EXCEPTION",
        "PARSER_UNKNOWN_GRM_EXCEPTION",
        "BINDER_EXCEPTION",
        "UNBINDER_EXCEPTION",
        "ACCOUNT_MODEL_EXCEPTION",
        "INSIGHTS_WORKER_ERROR",
        "INSIGHTS_DB_ERROR",
        "MALFORMED_MODEL_RECEIVED",
        "log_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum ACCOUNT_MODEL_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum BINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum INSIGHTS_DB_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum INSIGHTS_WORKER_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum MALFORMED_MODEL_RECEIVED:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum PARSER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum PARSER_UNKNOWN_GRM_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum PARSE_FAILURE:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

.field public static final enum UNBINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "PARSE_FAILURE"

    const/4 v3, 0x0

    const-string v4, "Insights parser failed to parse the message"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->PARSE_FAILURE:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "PARSER_EXCEPTION"

    const/4 v3, 0x1

    const-string v4, "Exception from facade of Controller.parse "

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->PARSER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "PARSER_UNKNOWN_GRM_EXCEPTION"

    const/4 v3, 0x2

    const-string v4, "Unknown grammar exception "

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->PARSER_UNKNOWN_GRM_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "BINDER_EXCEPTION"

    const/4 v3, 0x3

    const-string v4, "Error in insights binder "

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->BINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "UNBINDER_EXCEPTION"

    const/4 v3, 0x4

    const-string v4, "Error in insights UnBinder "

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->UNBINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "ACCOUNT_MODEL_EXCEPTION"

    const/4 v3, 0x5

    const-string v4, "Error in accountmodel processing "

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->ACCOUNT_MODEL_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "INSIGHTS_WORKER_ERROR"

    const/4 v3, 0x6

    const-string v4, "Error in insights worker"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->INSIGHTS_WORKER_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "INSIGHTS_DB_ERROR"

    const/4 v3, 0x7

    const-string v4, "DB error which cannot be recovered from"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->INSIGHTS_DB_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    const-string v2, "MALFORMED_MODEL_RECEIVED"

    const/16 v3, 0x8

    const-string v4, "The model downloaded is malformed and could not be parsed"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->MALFORMED_MODEL_RECEIVED:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->$VALUES:[Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;
    .locals 1

    const-class v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;
    .locals 1

    sget-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->$VALUES:[Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-virtual {v0}, [Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->description:Ljava/lang/String;

    return-object v0
.end method
