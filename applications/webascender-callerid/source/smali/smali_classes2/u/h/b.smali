.class public abstract enum Lu/h/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/h/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lu/h/b;

.field public static final enum JSON:Lu/h/b;

.field public static final enum PROTO3:Lu/h/b;

.field public static final enum THRIFT:Lu/h/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lu/h/b$a;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/h/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/h/b;->JSON:Lu/h/b;

    .line 2
    new-instance v1, Lu/h/b$b;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu/h/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/h/b;->THRIFT:Lu/h/b;

    .line 3
    new-instance v3, Lu/h/b$c;

    const-string v5, "PROTO3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu/h/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu/h/b;->PROTO3:Lu/h/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lu/h/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lu/h/b;->$VALUES:[Lu/h/b;

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

.method synthetic constructor <init>(Ljava/lang/String;ILu/h/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lu/h/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/h/b;
    .locals 1

    .line 1
    const-class v0, Lu/h/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/h/b;

    return-object p0
.end method

.method public static values()[Lu/h/b;
    .locals 1

    .line 1
    sget-object v0, Lu/h/b;->$VALUES:[Lu/h/b;

    invoke-virtual {v0}, [Lu/h/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/h/b;

    return-object v0
.end method


# virtual methods
.method public abstract listSizeInBytes(I)I
.end method

.method public abstract listSizeInBytes(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation
.end method
