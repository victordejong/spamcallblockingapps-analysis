.class public Lorg/apache/avro/Schema$Field;
.super Lorg/apache/avro/JsonProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Schema$Field$Order;
    }
.end annotation


# static fields
.field public static final NULL_DEFAULT_VALUE:Ljava/lang/Object;


# instance fields
.field private aliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Le/k/a/c/l;

.field private final doc:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final order:Lorg/apache/avro/Schema$Field$Order;

.field private position:I

.field private final schema:Lorg/apache/avro/Schema;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$Field$1;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Field$1;-><init>()V

    invoke-static {v0}, Lorg/apache/avro/util/internal/Accessor;->setAccessor(Lorg/apache/avro/util/internal/Accessor$FieldAccessor;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/avro/Schema$Field;->NULL_DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/avro/Schema;)V
    .locals 7

    .line 12
    sget-object v6, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;)V
    .locals 7

    .line 13
    sget-object v6, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/avro/Schema;->access$300()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/avro/JsonProperties;-><init>(Ljava/util/Set;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/avro/Schema$Field;->position:I

    .line 3
    invoke-static {p1}, Lorg/apache/avro/Schema;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    .line 5
    iput-object p3, p0, Lorg/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 6
    invoke-static {p1, p2, p4}, Lorg/apache/avro/Schema;->access$500(Ljava/lang/String;Lorg/apache/avro/Schema;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    const-string p1, "Order cannot be null"

    .line 7
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lorg/apache/avro/Schema$Field$Order;

    iput-object p6, p0, Lorg/apache/avro/Schema$Field;->order:Lorg/apache/avro/Schema$Field$Order;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 14
    sget-object v0, Lorg/apache/avro/Schema$Field;->NULL_DEFAULT_VALUE:Ljava/lang/Object;

    if-ne p4, v0, :cond_0

    .line 15
    sget-object p4, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p4

    :goto_0
    move-object v4, p4

    const/4 v5, 0x1

    sget-object v6, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/avro/Schema$Field$Order;)V
    .locals 7

    .line 17
    sget-object v0, Lorg/apache/avro/Schema$Field;->NULL_DEFAULT_VALUE:Ljava/lang/Object;

    if-ne p4, v0, :cond_0

    .line 18
    sget-object p4, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/apache/avro/util/internal/JacksonUtils;->toJsonNode(Ljava/lang/Object;)Le/k/a/c/l;

    move-result-object p4

    :goto_0
    move-object v4, p4

    const/4 v5, 0x1

    .line 19
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, p5

    check-cast v6, Lorg/apache/avro/Schema$Field$Order;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 20
    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema$Field;Lorg/apache/avro/Schema;)V
    .locals 7

    .line 8
    iget-object v1, p1, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    iget-object v6, p1, Lorg/apache/avro/Schema$Field;->order:Lorg/apache/avro/Schema$Field$Order;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->putAll(Lorg/apache/avro/JsonProperties;)V

    .line 10
    iget-object p2, p1, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 11
    new-instance p2, Ljava/util/LinkedHashSet;

    iget-object p1, p1, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method public static synthetic access$1000(Lorg/apache/avro/Schema$Field;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/avro/Schema$Field;->position:I

    return p0
.end method

.method public static synthetic access$1002(Lorg/apache/avro/Schema$Field;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/avro/Schema$Field;->position:I

    return p1
.end method

.method public static synthetic access$1500(Lorg/apache/avro/Schema$Field;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$1502(Lorg/apache/avro/Schema$Field;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic access$1800(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    return-object p0
.end method

.method public static synthetic access$1900(Lorg/apache/avro/Schema$Field;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2000(Lorg/apache/avro/Schema$Field;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2100(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    return-object p0
.end method

.method public static synthetic access$2200(Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/Schema$Field$Order;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Field;->order:Lorg/apache/avro/Schema$Field$Order;

    return-object p0
.end method

.method private defaultValueEquals(Le/k/a/c/l;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 2
    :cond_2
    invoke-virtual {v0}, Le/k/a/c/l;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Le/k/a/c/l;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    return p1

    .line 4
    :cond_3
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    invoke-virtual {v0, p1}, Le/k/a/c/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aliases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->aliases:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public defaultVal()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    invoke-static {v0, v1}, Lorg/apache/avro/util/internal/JacksonUtils;->toObject(Le/k/a/c/l;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public defaultValue()Le/k/a/c/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    return-object v0
.end method

.method public doc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Schema$Field;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Schema$Field;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    iget-object v3, p1, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v1, v3}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    invoke-direct {p0, v1}, Lorg/apache/avro/Schema$Field;->defaultValueEquals(Le/k/a/c/l;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->order:Lorg/apache/avro/Schema$Field$Order;

    iget-object v3, p1, Lorg/apache/avro/Schema$Field;->order:Lorg/apache/avro/Schema$Field$Order;

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->defaultValue:Le/k/a/c/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->computeHash()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public order()Lorg/apache/avro/Schema$Field$Order;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->order:Lorg/apache/avro/Schema$Field$Order;

    return-object v0
.end method

.method public pos()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/Schema$Field;->position:I

    return v0
.end method

.method public schema()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/avro/Schema$Field;->schema:Lorg/apache/avro/Schema;

    invoke-static {v1}, Lorg/apache/avro/Schema;->access$600(Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/avro/Schema$Field;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
