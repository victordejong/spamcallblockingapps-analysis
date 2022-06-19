.class public final Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemaCompatibilityResult"
.end annotation


# static fields
.field private static final COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

.field private static final RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;


# instance fields
.field private final mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

.field private final mIncompatibilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/avro/SchemaCompatibility$Incompatibility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    sget-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;-><init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;Ljava/util/List;)V

    sput-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    .line 3
    new-instance v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    sget-object v1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;-><init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;Ljava/util/List;)V

    sput-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;",
            "Ljava/util/List<",
            "Lorg/apache/avro/SchemaCompatibility$Incompatibility;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    return-void
.end method

.method public static compatible()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    return-object v0
.end method

.method public static incompatible(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;"
        }
    .end annotation

    .line 1
    new-instance v6, Lorg/apache/avro/SchemaCompatibility$Incompatibility;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/avro/SchemaCompatibility$Incompatibility;-><init>(Lorg/apache/avro/SchemaCompatibility$SchemaIncompatibilityType;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    new-instance p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    sget-object p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->INCOMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    .line 3
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;-><init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;Ljava/util/List;)V

    return-object p0
.end method

.method public static recursionInProgress()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->RECURSION_IN_PROGRESS:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    .line 3
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    if-eqz v2, :cond_4

    return v1

    .line 5
    :cond_3
    iget-object v3, p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    iget-object p1, p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getCompatibility()Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    return-object v0
.end method

.method public getIncompatibilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/avro/SchemaCompatibility$Incompatibility;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v2, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public mergedWith(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;)Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p1}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->getIncompatibilities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    sget-object v2, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->COMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;->INCOMPATIBLE:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    .line 4
    :goto_0
    new-instance v1, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;

    invoke-direct {v1, p1, v0}, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;-><init>(Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;Ljava/util/List;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mCompatibilityType:Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/avro/SchemaCompatibility$SchemaCompatibilityResult;->mIncompatibilities:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SchemaCompatibilityResult{compatibility:%s, incompatibilities:%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
