.class public Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/BlockingBinaryEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public items:I

.field public itemsLeftToWrite:J

.field public lastFullItem:I

.field public start:I

.field public state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

.field public type:Lorg/apache/avro/Schema$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/io/BlockingBinaryEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->type:Lorg/apache/avro/Schema$Type;

    .line 3
    sget-object v0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;->ROOT:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    iput-object v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->lastFullItem:I

    iput v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->start:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->items:I

    return-void
.end method


# virtual methods
.method public check(Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue;->state:Lorg/apache/avro/io/BlockingBinaryEncoder$BlockedValue$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
