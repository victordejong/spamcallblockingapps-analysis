.class public final enum Lg/g/b/d/e/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/d/e/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/d/e/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/d/e/d;

.field public static final Companion:Lg/g/b/d/e/d$a;

.field public static final enum PerformanceEvent:Lg/g/b/d/e/d;

.field public static final enum PlacesTrackEvent:Lg/g/b/d/e/d;

.field public static final enum SendPhoneEvent:Lg/g/b/d/e/d;

.field public static final enum UserFeedback:Lg/g/b/d/e/d;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lg/g/b/d/e/d;

    new-instance v1, Lg/g/b/d/e/d;

    const-string v2, "UserFeedback"

    const/4 v3, 0x0

    const-string v4, "user_feedback"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/d/e/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/d/e/d;->UserFeedback:Lg/g/b/d/e/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/d/e/d;

    const-string v2, "PlacesTrackEvent"

    const/4 v3, 0x1

    const-string v4, "places_event"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/d/e/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/d/e/d;->PlacesTrackEvent:Lg/g/b/d/e/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/d/e/d;

    const-string v2, "SendPhoneEvent"

    const/4 v3, 0x2

    const-string v4, "data_collection"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/d/e/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/d/e/d;->SendPhoneEvent:Lg/g/b/d/e/d;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/d/e/d;

    const-string v2, "PerformanceEvent"

    const/4 v3, 0x3

    const-string v4, "performance_event"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/d/e/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/d/e/d;->PerformanceEvent:Lg/g/b/d/e/d;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/d/e/d;->$VALUES:[Lg/g/b/d/e/d;

    new-instance v0, Lg/g/b/d/e/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/g/b/d/e/d$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lg/g/b/d/e/d;->Companion:Lg/g/b/d/e/d$a;

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

    iput-object p3, p0, Lg/g/b/d/e/d;->text:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getText$p(Lg/g/b/d/e/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/d/e/d;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/b/d/e/d;
    .locals 1

    const-class v0, Lg/g/b/d/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/d/e/d;

    return-object p0
.end method

.method public static values()[Lg/g/b/d/e/d;
    .locals 1

    sget-object v0, Lg/g/b/d/e/d;->$VALUES:[Lg/g/b/d/e/d;

    invoke-virtual {v0}, [Lg/g/b/d/e/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/d/e/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/e/d;->text:Ljava/lang/String;

    return-object v0
.end method
