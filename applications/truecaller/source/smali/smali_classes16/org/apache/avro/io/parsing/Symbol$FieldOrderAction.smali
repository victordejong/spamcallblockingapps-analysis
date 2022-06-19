.class public final Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOrderAction"
.end annotation


# instance fields
.field public final fields:[Lorg/apache/avro/Schema$Field;

.field public final noReorder:Z


# direct methods
.method public constructor <init>([Lorg/apache/avro/Schema$Field;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;->fields:[Lorg/apache/avro/Schema$Field;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/avro/Schema$Field;->pos()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v2, p0, Lorg/apache/avro/io/parsing/Symbol$FieldOrderAction;->noReorder:Z

    return-void
.end method
