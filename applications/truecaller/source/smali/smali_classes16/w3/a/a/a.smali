.class public final synthetic Lw3/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/util/tc/Java8Support$MappingFunction;


# static fields
.field public static final synthetic a:Lw3/a/a/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/a/a/a;

    invoke-direct {v0}, Lw3/a/a/a;-><init>()V

    sput-object v0, Lw3/a/a/a;->a:Lw3/a/a/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/avro/Schema$Name;

    .line 1
    sget-object p1, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
