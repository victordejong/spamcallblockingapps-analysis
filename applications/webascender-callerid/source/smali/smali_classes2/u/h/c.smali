.class public abstract enum Lu/h/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/h/c;",
        ">;",
        "Ljava/lang/Object<",
        "Lu/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu/h/c;

.field public static final enum JSON_V1:Lu/h/c;

.field public static final enum JSON_V2:Lu/h/c;

.field public static final enum PROTO3:Lu/h/c;

.field public static final enum THRIFT:Lu/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lu/h/c$a;

    const-string v1, "JSON_V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/h/c;->JSON_V1:Lu/h/c;

    .line 2
    new-instance v1, Lu/h/c$b;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu/h/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/h/c;->THRIFT:Lu/h/c;

    .line 3
    new-instance v3, Lu/h/c$c;

    const-string v5, "JSON_V2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu/h/c;->JSON_V2:Lu/h/c;

    .line 4
    new-instance v5, Lu/h/c$d;

    const-string v7, "PROTO3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lu/h/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lu/h/c;->PROTO3:Lu/h/c;

    const/4 v7, 0x4

    new-array v7, v7, [Lu/h/c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lu/h/c;->$VALUES:[Lu/h/c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILu/h/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lu/h/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static doDecodeList(Lu/h/c;Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/h/c;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lu/g;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, p1, v0}, Lu/h/c;->decodeList(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z

    return-object v0
.end method

.method static doDecodeList(Lu/h/c;[B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/h/c;",
            "[B)",
            "Ljava/util/List<",
            "Lu/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lu/h/c;->decodeList([BLjava/util/Collection;)Z

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/h/c;
    .locals 1

    .line 1
    const-class v0, Lu/h/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/h/c;

    return-object p0
.end method

.method public static values()[Lu/h/c;
    .locals 1

    .line 1
    sget-object v0, Lu/h/c;->$VALUES:[Lu/h/c;

    invoke-virtual {v0}, [Lu/h/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/h/c;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic decode([BLjava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract decodeList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lu/g;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic decodeList([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract decodeList(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract synthetic decodeList([BLjava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract synthetic decodeOne([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public abstract decodeOne(Ljava/nio/ByteBuffer;)Lu/g;
.end method

.method public abstract synthetic encoding()Lu/h/b;
.end method
