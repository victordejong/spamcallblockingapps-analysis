.class public final enum Lcom/truecaller/bizmon/newBusiness/workers/ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/bizmon/newBusiness/workers/ImageType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/workers/ImageType;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "a",
        "LOGO",
        "GALLERY",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

.field public static final Companion:Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;

.field public static final enum GALLERY:Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

.field public static final enum LOGO:Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/bizmon/newBusiness/workers/ImageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    new-instance v2, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    const-string v3, "LOGO"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->LOGO:Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    const-string v3, "GALLERY"

    .line 2
    invoke-direct {v2, v3, v5, v0}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->GALLERY:Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    aput-object v2, v1, v5

    sput-object v1, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->$VALUES:[Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;-><init>(Ls1/z/c/f;)V

    sput-object v1, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->Companion:Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;

    .line 3
    invoke-static {}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->values()[Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    move-result-object v1

    .line 4
    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    move v0, v2

    .line 5
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    array-length v0, v1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v3, v1, v4

    .line 7
    iget v5, v3, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sput-object v2, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->value:I

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/bizmon/newBusiness/workers/ImageType;
    .locals 1

    const-class v0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/bizmon/newBusiness/workers/ImageType;
    .locals 1

    sget-object v0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->$VALUES:[Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    invoke-virtual {v0}, [Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->value:I

    return v0
.end method
