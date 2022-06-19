.class public Le/a/q2/d0$b;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lorg/apache/avro/generic/GenericRecord;


# direct methods
.method public constructor <init>(Lorg/apache/avro/generic/GenericRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q2/d0$b;->b:Lorg/apache/avro/generic/GenericRecord;

    return-void
.end method


# virtual methods
.method public b()Lu3/c0;
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lv3/n;

    invoke-direct {v0, p1}, Lv3/n;-><init>(Lv3/z;)V

    const-string p1, "$this$buffer"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lv3/u;

    invoke-direct {p1, v0}, Lv3/u;-><init>(Lv3/z;)V

    .line 4
    iget-object v0, p0, Le/a/q2/d0$b;->b:Lorg/apache/avro/generic/GenericRecord;

    .line 5
    new-instance v1, Lv3/u$a;

    invoke-direct {v1, p1}, Lv3/u$a;-><init>(Lv3/u;)V

    .line 6
    invoke-static {v0, v1}, Le/a/q2/y;->b(Lorg/apache/avro/generic/GenericRecord;Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {p1}, Lv3/u;->close()V

    return-void
.end method
