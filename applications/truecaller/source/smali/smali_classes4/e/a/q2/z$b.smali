.class public Le/a/q2/z$b;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/q2/a0;",
        "Lcom/truecaller/analytics/EventsUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lorg/apache/avro/generic/GenericRecord;

.field public final c:Lu3/e0;


# direct methods
.method public constructor <init>(Le/a/r2/e;Lorg/apache/avro/generic/GenericRecord;Lu3/e0;Le/a/q2/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/q2/z$b;->b:Lorg/apache/avro/generic/GenericRecord;

    .line 3
    iput-object p3, p0, Le/a/q2/z$b;->c:Lu3/e0;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2

    .line 1
    check-cast p1, Le/a/q2/a0;

    .line 2
    iget-object v0, p0, Le/a/q2/z$b;->b:Lorg/apache/avro/generic/GenericRecord;

    iget-object v1, p0, Le/a/q2/z$b;->c:Lu3/e0;

    invoke-interface {p1, v0, v1}, Le/a/q2/a0;->b(Lorg/apache/avro/generic/GenericRecord;Lu3/e0;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ".trackEventImmediately("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/q2/z$b;->b:Lorg/apache/avro/generic/GenericRecord;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/q2/z$b;->c:Lu3/e0;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
