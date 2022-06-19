.class public final enum Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/callerid/CallerIdPerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0017\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "RCVR_PHONESTATEHANDLER_STATE_CHG",
        "RCVR_PHONESTATEHANDLER_OUTGOING",
        "C_SCREENING_CPROCESSOR_STATE_CHG",
        "PHONESTATEHANDLER_NORMALIZATION",
        "PHONESTATEHANDLER_CPROC_STCHG",
        "CPROC_STATECHGDEDUPLICATION",
        "CPROC_ISSYSTEMAWAREVOIPCALL",
        "CPROC_GETFILTER",
        "CPROC_HASMULTISIM",
        "CPROC_GETSIMINDEX",
        "CIDMGR_PROVIDEFROMCARRIERNUMBER",
        "CIDMGR_ONOUTGOINGCALL",
        "CIDMGR_GETFILTERACTIONFORNUMBER",
        "CIDMGR_GETCONTACTFROMAGGRCONTDAO",
        "CIDMGR_PHONEBOOKCHECK",
        "CIDSEARCH_GETCONTACTFROMAGGREG",
        "CIDSEARCH_PERFORMNETWORKSEARCH",
        "CIDWINDOW_INIT",
        "CIDWINDOW_UPDATE",
        "CIDSERVICE_INJECT",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDMGR_GETCONTACTFROMAGGRCONTDAO:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDMGR_GETFILTERACTIONFORNUMBER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDMGR_ONOUTGOINGCALL:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDMGR_PHONEBOOKCHECK:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDMGR_PROVIDEFROMCARRIERNUMBER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDSEARCH_GETCONTACTFROMAGGREG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDSEARCH_PERFORMNETWORKSEARCH:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDSERVICE_INJECT:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDWINDOW_INIT:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CIDWINDOW_UPDATE:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CPROC_GETFILTER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CPROC_GETSIMINDEX:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CPROC_HASMULTISIM:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CPROC_ISSYSTEMAWAREVOIPCALL:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum CPROC_STATECHGDEDUPLICATION:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum C_SCREENING_CPROCESSOR_STATE_CHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum PHONESTATEHANDLER_CPROC_STCHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum PHONESTATEHANDLER_NORMALIZATION:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum RCVR_PHONESTATEHANDLER_OUTGOING:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

.field public static final enum RCVR_PHONESTATEHANDLER_STATE_CHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "RCVR_PHONESTATEHANDLER_STATE_CHG"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->RCVR_PHONESTATEHANDLER_STATE_CHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "RCVR_PHONESTATEHANDLER_OUTGOING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->RCVR_PHONESTATEHANDLER_OUTGOING:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "C_SCREENING_CPROCESSOR_STATE_CHG"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->C_SCREENING_CPROCESSOR_STATE_CHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "PHONESTATEHANDLER_NORMALIZATION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->PHONESTATEHANDLER_NORMALIZATION:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "PHONESTATEHANDLER_CPROC_STCHG"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->PHONESTATEHANDLER_CPROC_STCHG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CPROC_STATECHGDEDUPLICATION"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_STATECHGDEDUPLICATION:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CPROC_ISSYSTEMAWAREVOIPCALL"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_ISSYSTEMAWAREVOIPCALL:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CPROC_GETFILTER"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_GETFILTER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CPROC_HASMULTISIM"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_HASMULTISIM:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CPROC_GETSIMINDEX"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CPROC_GETSIMINDEX:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDMGR_PROVIDEFROMCARRIERNUMBER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDMGR_PROVIDEFROMCARRIERNUMBER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDMGR_ONOUTGOINGCALL"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDMGR_ONOUTGOINGCALL:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDMGR_GETFILTERACTIONFORNUMBER"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDMGR_GETFILTERACTIONFORNUMBER:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDMGR_GETCONTACTFROMAGGRCONTDAO"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDMGR_GETCONTACTFROMAGGRCONTDAO:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDMGR_PHONEBOOKCHECK"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDMGR_PHONEBOOKCHECK:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDSEARCH_GETCONTACTFROMAGGREG"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDSEARCH_GETCONTACTFROMAGGREG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDSEARCH_PERFORMNETWORKSEARCH"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDSEARCH_PERFORMNETWORKSEARCH:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDWINDOW_INIT"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDWINDOW_INIT:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDWINDOW_UPDATE"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDWINDOW_UPDATE:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    const-string v2, "CIDSERVICE_INJECT"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDSERVICE_INJECT:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->$VALUES:[Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;
    .locals 1

    const-class v0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;
    .locals 1

    sget-object v0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->$VALUES:[Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-virtual {v0}, [Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    return-object v0
.end method
