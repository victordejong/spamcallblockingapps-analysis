.class public abstract enum Lcom/truecaller/insights/binders/utils/OrderStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/binders/utils/OrderStatus$e;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$f;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$g;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$d;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$i;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$j;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$a;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$k;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$c;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$h;,
        Lcom/truecaller/insights/binders/utils/OrderStatus$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/binders/utils/OrderStatus;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/insights/binders/utils/OrderStatus;",
        "",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "b",
        "OrderConfirmed",
        "OrderPacked",
        "OrderShipped",
        "OrderCancelled",
        "Returned",
        "Transit",
        "ActionRequired",
        "Undelivered",
        "Delivered",
        "Return",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum ActionRequired:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final Companion:Lcom/truecaller/insights/binders/utils/OrderStatus$b;

.field public static final enum Delivered:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum OrderCancelled:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum OrderConfirmed:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum OrderPacked:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum OrderShipped:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum Return:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum Returned:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum Transit:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field public static final enum Undelivered:Lcom/truecaller/insights/binders/utils/OrderStatus;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/binders/utils/OrderStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/truecaller/insights/binders/utils/OrderStatus;

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$e;

    const-string v3, "OrderConfirmed"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/truecaller/insights/binders/utils/OrderStatus$e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderConfirmed:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$f;

    const-string v3, "OrderPacked"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$f;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderPacked:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$g;

    const-string v3, "OrderShipped"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$g;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderShipped:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$d;

    const-string v3, "OrderCancelled"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderCancelled:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$i;

    const-string v3, "Returned"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$i;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->Returned:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$j;

    const-string v3, "Transit"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$j;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->Transit:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$a;

    const-string v3, "ActionRequired"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->ActionRequired:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$k;

    const-string v3, "Undelivered"

    const/4 v5, 0x7

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$k;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->Undelivered:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$c;

    const-string v3, "Delivered"

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->Delivered:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/binders/utils/OrderStatus$h;

    const-string v3, "Return"

    const/16 v5, 0x9

    invoke-direct {v2, v3, v5}, Lcom/truecaller/insights/binders/utils/OrderStatus$h;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->Return:Lcom/truecaller/insights/binders/utils/OrderStatus;

    aput-object v2, v1, v5

    sput-object v1, Lcom/truecaller/insights/binders/utils/OrderStatus;->$VALUES:[Lcom/truecaller/insights/binders/utils/OrderStatus;

    new-instance v1, Lcom/truecaller/insights/binders/utils/OrderStatus$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/insights/binders/utils/OrderStatus$b;-><init>(Ls1/z/c/f;)V

    sput-object v1, Lcom/truecaller/insights/binders/utils/OrderStatus;->Companion:Lcom/truecaller/insights/binders/utils/OrderStatus$b;

    .line 1
    invoke-static {}, Lcom/truecaller/insights/binders/utils/OrderStatus;->values()[Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v1

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    move v0, v2

    .line 3
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    array-length v0, v1

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v3, v1, v4

    .line 5
    iget-object v5, v3, Lcom/truecaller/insights/binders/utils/OrderStatus;->value:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sput-object v2, Lcom/truecaller/insights/binders/utils/OrderStatus;->map:Ljava/util/Map;

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

    iput-object p3, p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/truecaller/insights/binders/utils/OrderStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/insights/binders/utils/OrderStatus;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/binders/utils/OrderStatus;
    .locals 1

    const-class v0, Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/binders/utils/OrderStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/binders/utils/OrderStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/binders/utils/OrderStatus;->$VALUES:[Lcom/truecaller/insights/binders/utils/OrderStatus;

    invoke-virtual {v0}, [Lcom/truecaller/insights/binders/utils/OrderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/binders/utils/OrderStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/binders/utils/OrderStatus;->value:Ljava/lang/String;

    return-object v0
.end method

.method public abstract synthetic uiOrderStatus(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
.end method

.method public abstract synthetic uiSubTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
.end method

.method public abstract synthetic uiTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;
.end method
