.class public final enum Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/blocking/FiltersContract$Filters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public static final enum BUSINESS:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public static final enum PERSON:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public static final enum UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 2
    new-instance v1, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const-string v3, "PERSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->PERSON:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    .line 3
    new-instance v3, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const-string v5, "BUSINESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->BUSINESS:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->$VALUES:[Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

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

    .line 2
    iput p3, p0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->value:I

    return-void
.end method

.method public static fromIsBusiness(Z)Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->BUSINESS:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->PERSON:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object p0
.end method

.method public static fromValue(I)Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
    .locals 3

    .line 1
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->values()[Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    iget v2, v2, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->value:I

    if-ne v2, p0, :cond_0

    .line 3
    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->$VALUES:[Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    invoke-virtual {v0}, [Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    return-object v0
.end method
