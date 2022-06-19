.class public final enum Lg/g/b/c/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/c/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/r;

.field public static final enum BUSINESS_PROFILE:Lg/g/b/c/r;

.field public static final Companion:Lg/g/b/c/r$a;

.field public static final enum EVENT_PROFILE:Lg/g/b/c/r;

.field public static final enum LOCAL_OVERRIDE:Lg/g/b/c/r;

.field private static final NON_LOOKUP_SOURCE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg/g/b/c/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PHONE_LOOKUP_PROFILE:Lg/g/b/c/r;

.field public static final enum PROFILE_CACHE:Lg/g/b/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x5

    new-array v0, v0, [Lg/g/b/c/r;

    new-instance v1, Lg/g/b/c/r;

    const-string v2, "PROFILE_CACHE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/b/c/r;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/b/c/r;->PROFILE_CACHE:Lg/g/b/c/r;

    aput-object v1, v0, v3

    new-instance v2, Lg/g/b/c/r;

    const-string v4, "EVENT_PROFILE"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lg/g/b/c/r;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    aput-object v2, v0, v5

    new-instance v4, Lg/g/b/c/r;

    const-string v6, "LOCAL_OVERRIDE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lg/g/b/c/r;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    aput-object v4, v0, v7

    new-instance v6, Lg/g/b/c/r;

    const-string v8, "BUSINESS_PROFILE"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lg/g/b/c/r;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/g/b/c/r;->BUSINESS_PROFILE:Lg/g/b/c/r;

    aput-object v6, v0, v9

    new-instance v8, Lg/g/b/c/r;

    const-string v10, "PHONE_LOOKUP_PROFILE"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11}, Lg/g/b/c/r;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lg/g/b/c/r;->PHONE_LOOKUP_PROFILE:Lg/g/b/c/r;

    aput-object v8, v0, v11

    sput-object v0, Lg/g/b/c/r;->$VALUES:[Lg/g/b/c/r;

    new-instance v0, Lg/g/b/c/r$a;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lg/g/b/c/r$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/b/c/r;->Companion:Lg/g/b/c/r$a;

    new-array v0, v11, [Lg/g/b/c/r;

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    aput-object v2, v0, v7

    aput-object v1, v0, v9

    .line 1
    invoke-static {v0}, Lkotlin/s/h0;->e([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lg/g/b/c/r;->NON_LOOKUP_SOURCE_TYPES:Ljava/util/Set;

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

.method public static final synthetic access$getNON_LOOKUP_SOURCE_TYPES$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/c/r;->NON_LOOKUP_SOURCE_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/r;
    .locals 1

    const-class v0, Lg/g/b/c/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/r;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/r;
    .locals 1

    sget-object v0, Lg/g/b/c/r;->$VALUES:[Lg/g/b/c/r;

    invoke-virtual {v0}, [Lg/g/b/c/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/r;

    return-object v0
.end method
