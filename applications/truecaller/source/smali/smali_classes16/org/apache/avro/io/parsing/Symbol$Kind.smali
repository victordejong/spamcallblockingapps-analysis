.class public final enum Lorg/apache/avro/io/parsing/Symbol$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/avro/io/parsing/Symbol$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum ALTERNATIVE:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum EXPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum REPEATER:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum ROOT:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum SEQUENCE:Lorg/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum TERMINAL:Lorg/apache/avro/io/parsing/Symbol$Kind;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "TERMINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 2
    new-instance v1, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v3, "ROOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/avro/io/parsing/Symbol$Kind;->ROOT:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 3
    new-instance v3, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v5, "SEQUENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/avro/io/parsing/Symbol$Kind;->SEQUENCE:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 4
    new-instance v5, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v7, "REPEATER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 5
    new-instance v7, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v9, "ALTERNATIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/avro/io/parsing/Symbol$Kind;->ALTERNATIVE:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 6
    new-instance v9, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v11, "IMPLICIT_ACTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    .line 7
    new-instance v11, Lorg/apache/avro/io/parsing/Symbol$Kind;

    const-string v13, "EXPLICIT_ACTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/apache/avro/io/parsing/Symbol$Kind;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lorg/apache/avro/io/parsing/Symbol$Kind;->$VALUES:[Lorg/apache/avro/io/parsing/Symbol$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/avro/io/parsing/Symbol$Kind;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/avro/io/parsing/Symbol$Kind;

    return-object p0
.end method

.method public static values()[Lorg/apache/avro/io/parsing/Symbol$Kind;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->$VALUES:[Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-virtual {v0}, [Lorg/apache/avro/io/parsing/Symbol$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/avro/io/parsing/Symbol$Kind;

    return-object v0
.end method
