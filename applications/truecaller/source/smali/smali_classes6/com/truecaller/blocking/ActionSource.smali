.class public final enum Lcom/truecaller/blocking/ActionSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/blocking/ActionSource;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/blocking/ActionSource;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "UNKNOWN",
        "NON_PHONEBOOK",
        "FOREIGN",
        "NEIGHBOUR_SPOOFING",
        "INDIAN_REGISTERED_TELEMARKETER",
        "TOP_SPAMMER",
        "BLACKLISTED_NUMBER",
        "BLACKLISTED_COUNTRY",
        "BLACKLISTED_WILDCARD",
        "CUSTOM_WHITELIST",
        "SPAMMER_FROM_SEARCH",
        "blocking_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/blocking/ActionSource;

.field public static final enum BLACKLISTED_COUNTRY:Lcom/truecaller/blocking/ActionSource;

.field public static final enum BLACKLISTED_NUMBER:Lcom/truecaller/blocking/ActionSource;

.field public static final enum BLACKLISTED_WILDCARD:Lcom/truecaller/blocking/ActionSource;

.field public static final enum CUSTOM_WHITELIST:Lcom/truecaller/blocking/ActionSource;

.field public static final enum FOREIGN:Lcom/truecaller/blocking/ActionSource;

.field public static final enum INDIAN_REGISTERED_TELEMARKETER:Lcom/truecaller/blocking/ActionSource;

.field public static final enum NEIGHBOUR_SPOOFING:Lcom/truecaller/blocking/ActionSource;

.field public static final enum NONE:Lcom/truecaller/blocking/ActionSource;

.field public static final enum NON_PHONEBOOK:Lcom/truecaller/blocking/ActionSource;

.field public static final enum SPAMMER_FROM_SEARCH:Lcom/truecaller/blocking/ActionSource;

.field public static final enum TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

.field public static final enum UNKNOWN:Lcom/truecaller/blocking/ActionSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/truecaller/blocking/ActionSource;

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->UNKNOWN:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "NON_PHONEBOOK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->NON_PHONEBOOK:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "FOREIGN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->FOREIGN:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "NEIGHBOUR_SPOOFING"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->NEIGHBOUR_SPOOFING:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "INDIAN_REGISTERED_TELEMARKETER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->INDIAN_REGISTERED_TELEMARKETER:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "TOP_SPAMMER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "BLACKLISTED_NUMBER"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_NUMBER:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "BLACKLISTED_COUNTRY"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_COUNTRY:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "BLACKLISTED_WILDCARD"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_WILDCARD:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "CUSTOM_WHITELIST"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->CUSTOM_WHITELIST:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/blocking/ActionSource;

    const-string v2, "SPAMMER_FROM_SEARCH"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/blocking/ActionSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/blocking/ActionSource;->SPAMMER_FROM_SEARCH:Lcom/truecaller/blocking/ActionSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/blocking/ActionSource;->$VALUES:[Lcom/truecaller/blocking/ActionSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/blocking/ActionSource;
    .locals 1

    const-class v0, Lcom/truecaller/blocking/ActionSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/blocking/ActionSource;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/blocking/ActionSource;
    .locals 1

    sget-object v0, Lcom/truecaller/blocking/ActionSource;->$VALUES:[Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v0}, [Lcom/truecaller/blocking/ActionSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/blocking/ActionSource;

    return-object v0
.end method
