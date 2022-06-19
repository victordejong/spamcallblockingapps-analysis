.class public final Le/a/q2/x$d;
.super Le/a/q2/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/avro/generic/GenericRecord;",
        ">",
        "Le/a/q2/x;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/avro/generic/GenericRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/avro/generic/GenericRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "record"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/q2/x;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/q2/x$d;->a:Lorg/apache/avro/generic/GenericRecord;

    return-void
.end method
