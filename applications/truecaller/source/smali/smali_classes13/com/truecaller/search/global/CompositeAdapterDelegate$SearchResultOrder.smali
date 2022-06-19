.class public final enum Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/search/global/CompositeAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchResultOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

.field public static final enum ORDER_CGMT:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

.field public static final enum ORDER_CTGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

.field public static final enum ORDER_TCGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const-string v1, "ORDER_CGMT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CGMT:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 2
    new-instance v1, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const-string v3, "ORDER_TCGM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_TCGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 3
    new-instance v3, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const-string v5, "ORDER_CTGM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CTGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->$VALUES:[Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->$VALUES:[Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    invoke-virtual {v0}, [Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    return-object v0
.end method
