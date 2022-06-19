.class public abstract enum Lu/h/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lu/h/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/h/d;",
        ">;",
        "Lu/h/a<",
        "Lu/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu/h/d;

.field public static final enum JSON_V1:Lu/h/d;

.field public static final enum JSON_V2:Lu/h/d;

.field public static final enum PROTO3:Lu/h/d;

.field public static final enum THRIFT:Lu/h/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lu/h/d$a;

    const-string v1, "JSON_V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/h/d;->JSON_V1:Lu/h/d;

    .line 2
    new-instance v1, Lu/h/d$b;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu/h/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/h/d;->THRIFT:Lu/h/d;

    .line 3
    new-instance v3, Lu/h/d$c;

    const-string v5, "JSON_V2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu/h/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu/h/d;->JSON_V2:Lu/h/d;

    .line 4
    new-instance v5, Lu/h/d$d;

    const-string v7, "PROTO3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lu/h/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lu/h/d;->PROTO3:Lu/h/d;

    const/4 v7, 0x4

    new-array v7, v7, [Lu/h/d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lu/h/d;->$VALUES:[Lu/h/d;

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

.method synthetic constructor <init>(Ljava/lang/String;ILu/h/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lu/h/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/h/d;
    .locals 1

    .line 1
    const-class v0, Lu/h/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/h/d;

    return-object p0
.end method

.method public static values()[Lu/h/d;
    .locals 1

    .line 1
    sget-object v0, Lu/h/d;->$VALUES:[Lu/h/d;

    invoke-virtual {v0}, [Lu/h/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/h/d;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic encode(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation
.end method

.method public abstract encodeList(Ljava/util/List;[BI)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;[BI)I"
        }
    .end annotation
.end method

.method public abstract synthetic encodeList(Ljava/util/List;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)[B"
        }
    .end annotation
.end method

.method public abstract synthetic encoding()Lu/h/b;
.end method

.method public abstract synthetic sizeInBytes(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
