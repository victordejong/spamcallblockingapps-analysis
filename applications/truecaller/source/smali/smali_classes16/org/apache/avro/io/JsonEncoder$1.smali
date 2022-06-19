.class public final Lorg/apache/avro/io/JsonEncoder$1;
.super Le/k/a/b/a0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/avro/io/JsonEncoder;->getJsonGenerator(Ljava/io/OutputStream;Z)Le/k/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/b/a0/e;-><init>()V

    return-void
.end method


# virtual methods
.method public writeRootValueSeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/avro/io/JsonEncoder;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/k/a/b/g;->s1(Ljava/lang/String;)V

    return-void
.end method
