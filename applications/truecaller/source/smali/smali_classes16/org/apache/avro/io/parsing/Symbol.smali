.class public abstract Lorg/apache/avro/io/parsing/Symbol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;,
        Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;,
        Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;,
        Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;,
        Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;,
        Lorg/apache/avro/io/parsing/Symbol$SkipAction;,
        Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;,
        Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;,
        Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;,
        Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;,
        Lorg/apache/avro/io/parsing/Symbol$ErrorAction;,
        Lorg/apache/avro/io/parsing/Symbol$Alternative;,
        Lorg/apache/avro/io/parsing/Symbol$Repeater;,
        Lorg/apache/avro/io/parsing/Symbol$Sequence;,
        Lorg/apache/avro/io/parsing/Symbol$Root;,
        Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;,
        Lorg/apache/avro/io/parsing/Symbol$Terminal;,
        Lorg/apache/avro/io/parsing/Symbol$Fixup;,
        Lorg/apache/avro/io/parsing/Symbol$Kind;
    }
.end annotation


# static fields
.field public static final ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

.field public static final ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

.field public static final BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

.field public static final BYTES:Lorg/apache/avro/io/parsing/Symbol;

.field public static final DEFAULT_END_ACTION:Lorg/apache/avro/io/parsing/Symbol;

.field public static final DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

.field public static final ENUM:Lorg/apache/avro/io/parsing/Symbol;

.field public static final FIELD_ACTION:Lorg/apache/avro/io/parsing/Symbol;

.field public static final FIELD_END:Lorg/apache/avro/io/parsing/Symbol;

.field public static final FIXED:Lorg/apache/avro/io/parsing/Symbol;

.field public static final FLOAT:Lorg/apache/avro/io/parsing/Symbol;

.field public static final INT:Lorg/apache/avro/io/parsing/Symbol;

.field public static final ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

.field public static final LONG:Lorg/apache/avro/io/parsing/Symbol;

.field public static final MAP_END:Lorg/apache/avro/io/parsing/Symbol;

.field public static final MAP_KEY_MARKER:Lorg/apache/avro/io/parsing/Symbol;

.field public static final MAP_START:Lorg/apache/avro/io/parsing/Symbol;

.field public static final NULL:Lorg/apache/avro/io/parsing/Symbol;

.field public static final RECORD_END:Lorg/apache/avro/io/parsing/Symbol;

.field public static final RECORD_START:Lorg/apache/avro/io/parsing/Symbol;

.field public static final STRING:Lorg/apache/avro/io/parsing/Symbol;

.field public static final UNION:Lorg/apache/avro/io/parsing/Symbol;

.field public static final UNION_END:Lorg/apache/avro/io/parsing/Symbol;

.field public static final WRITER_UNION_ACTION:Lorg/apache/avro/io/parsing/Symbol;


# instance fields
.field public final kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public final production:[Lorg/apache/avro/io/parsing/Symbol;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->NULL:Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "boolean"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->BOOLEAN:Lorg/apache/avro/io/parsing/Symbol;

    .line 3
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "int"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->INT:Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "long"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->LONG:Lorg/apache/avro/io/parsing/Symbol;

    .line 5
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "float"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->FLOAT:Lorg/apache/avro/io/parsing/Symbol;

    .line 6
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "double"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->DOUBLE:Lorg/apache/avro/io/parsing/Symbol;

    .line 7
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "string"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->STRING:Lorg/apache/avro/io/parsing/Symbol;

    .line 8
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "bytes"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->BYTES:Lorg/apache/avro/io/parsing/Symbol;

    .line 9
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "fixed"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIXED:Lorg/apache/avro/io/parsing/Symbol;

    .line 10
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "enum"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->ENUM:Lorg/apache/avro/io/parsing/Symbol;

    .line 11
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "union"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->UNION:Lorg/apache/avro/io/parsing/Symbol;

    .line 12
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "array-start"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_START:Lorg/apache/avro/io/parsing/Symbol;

    .line 13
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "array-end"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->ARRAY_END:Lorg/apache/avro/io/parsing/Symbol;

    .line 14
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "map-start"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_START:Lorg/apache/avro/io/parsing/Symbol;

    .line 15
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "map-end"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_END:Lorg/apache/avro/io/parsing/Symbol;

    .line 16
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "item-end"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->ITEM_END:Lorg/apache/avro/io/parsing/Symbol;

    .line 17
    invoke-static {}, Lorg/apache/avro/io/parsing/Symbol;->writerUnionAction()Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;

    move-result-object v0

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->WRITER_UNION_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    .line 18
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "field-action"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    .line 19
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->RECORD_START:Lorg/apache/avro/io/parsing/Symbol;

    .line 20
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->RECORD_END:Lorg/apache/avro/io/parsing/Symbol;

    .line 21
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->UNION_END:Lorg/apache/avro/io/parsing/Symbol;

    .line 22
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->FIELD_END:Lorg/apache/avro/io/parsing/Symbol;

    .line 23
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lorg/apache/avro/io/parsing/Symbol;

    .line 24
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "map-key-marker"

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lorg/apache/avro/io/parsing/Symbol;

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol$Kind;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;[Lorg/apache/avro/io/parsing/Symbol;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol$Kind;[Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    return-void
.end method

.method public static alt([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/avro/io/parsing/Symbol$Alternative;-><init>([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method private static copyFixups(Ljava/util/List;[Lorg/apache/avro/io/parsing/Symbol;I[Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/avro/io/parsing/Symbol$Fixup;",
            ">;[",
            "Lorg/apache/avro/io/parsing/Symbol;",
            "I[",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/io/parsing/Symbol$Fixup;

    .line 3
    iget-object v3, v2, Lorg/apache/avro/io/parsing/Symbol$Fixup;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    if-ne v3, p3, :cond_0

    .line 4
    new-instance v3, Lorg/apache/avro/io/parsing/Symbol$Fixup;

    iget v2, v2, Lorg/apache/avro/io/parsing/Symbol$Fixup;->pos:I

    add-int/2addr v2, p2

    invoke-direct {v3, p1, v2}, Lorg/apache/avro/io/parsing/Symbol$Fixup;-><init>([Lorg/apache/avro/io/parsing/Symbol;I)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static defaultStartAction([B)Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;

    invoke-direct {v0, p0}, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;-><init>([B)V

    return-object v0
.end method

.method public static enumAdjustAction(I[Ljava/lang/Object;)Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static enumLabelsAction(Ljava/util/List;)Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;

    invoke-direct {v0, p0}, Lorg/apache/avro/io/parsing/Symbol$EnumLabelsAction;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static error(Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;-><init>(Ljava/lang/String;Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method public static fieldAdjustAction(ILjava/lang/String;Ljava/util/Set;)Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;-><init>(ILjava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public static fieldOrderAction([Lorg/apache/avro/Schema$Field;)Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;

    invoke-direct {v0, p0}, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;-><init>([Lorg/apache/avro/Schema$Field;)V

    return-object v0
.end method

.method public static flatten([Lorg/apache/avro/io/parsing/Symbol;I[Lorg/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/avro/io/parsing/Symbol;",
            "I[",
            "Lorg/apache/avro/io/parsing/Symbol;",
            "I",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List<",
            "Lorg/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_3

    .line 2
    aget-object v0, p0, p1

    invoke-virtual {v0, p4, p5}, Lorg/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/apache/avro/io/parsing/Symbol$Sequence;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    .line 5
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    array-length v2, v1

    invoke-static {v1, v0, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-interface {p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    invoke-static {v2, p2, p3, v1}, Lorg/apache/avro/io/parsing/Symbol;->copyFixups(Ljava/util/List;[Lorg/apache/avro/io/parsing/Symbol;I[Lorg/apache/avro/io/parsing/Symbol;)V

    goto :goto_1

    .line 9
    :cond_0
    new-instance v2, Lorg/apache/avro/io/parsing/Symbol$Fixup;

    invoke-direct {v2, p2, p3}, Lorg/apache/avro/io/parsing/Symbol$Fixup;-><init>([Lorg/apache/avro/io/parsing/Symbol;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    array-length v0, v1

    add-int/2addr p3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, p3, 0x1

    .line 11
    aput-object v0, p2, p3

    move p3, v1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static flattenedSize([Lorg/apache/avro/io/parsing/Symbol;I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_1

    .line 2
    aget-object v1, p0, p1

    instance-of v1, v1, Lorg/apache/avro/io/parsing/Symbol$Sequence;

    if-eqz v1, :cond_0

    .line 3
    aget-object v1, p0, p1

    check-cast v1, Lorg/apache/avro/io/parsing/Symbol$Sequence;

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/io/parsing/Symbol$Sequence;->flattenedSize()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static hasErrors(Lorg/apache/avro/io/parsing/Symbol;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private static hasErrors(Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/io/parsing/Symbol;",
            "Ljava/util/Set<",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unknown symbol kind: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/avro/io/parsing/Symbol;->kind:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_0
    instance-of v0, p0, Lorg/apache/avro/io/parsing/Symbol$ErrorAction;

    if-eqz v0, :cond_1

    return v2

    .line 7
    :cond_1
    instance-of v0, p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    iget-object p0, p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lorg/apache/avro/io/parsing/Symbol;

    invoke-static {p0, p1}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result p0

    return p0

    :cond_2
    :pswitch_1
    return v1

    .line 9
    :pswitch_2
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    invoke-static {p0, v0, p1}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result p0

    return p0

    .line 10
    :pswitch_3
    move-object v0, p0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Repeater;

    .line 11
    iget-object v3, v0, Lorg/apache/avro/io/parsing/Symbol$Repeater;->end:Lorg/apache/avro/io/parsing/Symbol;

    invoke-static {v3, p1}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    invoke-static {p0, v0, p1}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    .line 12
    :pswitch_4
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    invoke-static {p0, v0, p1}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result p0

    return p0

    :pswitch_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static hasErrors(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/io/parsing/Symbol;",
            "[",
            "Lorg/apache/avro/io/parsing/Symbol;",
            "Ljava/util/Set<",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 13
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-ne v3, p0, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v3, p2}, Lorg/apache/avro/io/parsing/Symbol;->hasErrors(Lorg/apache/avro/io/parsing/Symbol;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static intCheckAction(I)Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;

    invoke-direct {v0, p0}, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    return-object v0
.end method

.method public static varargs repeat(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Repeater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/avro/io/parsing/Symbol$Repeater;-><init>(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method public static resolve(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method public static varargs root([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Root;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/avro/io/parsing/Symbol$Root;-><init>([Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method public static varargs seq([Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Sequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/avro/io/parsing/Symbol$Sequence;-><init>([Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method public static skipAction(Lorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol$SkipAction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    invoke-direct {v0, p0}, Lorg/apache/avro/io/parsing/Symbol$SkipAction;-><init>(Lorg/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public static unionAdjustAction(ILorg/apache/avro/io/parsing/Symbol;)Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    invoke-direct {v0, p0, p1}, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;-><init>(ILorg/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public static writerUnionAction()Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List<",
            "Lorg/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)",
            "Lorg/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    return-object p0
.end method

.method public flattenedSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
