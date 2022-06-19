.class public interface abstract Le/k/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final G:Le/k/a/b/a0/m;

.field public static final H:Le/k/a/b/w/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/b/a0/m;

    invoke-direct {v0}, Le/k/a/b/a0/m;-><init>()V

    .line 2
    sput-object v0, Le/k/a/b/o;->G:Le/k/a/b/a0/m;

    .line 3
    new-instance v0, Le/k/a/b/w/i;

    const-string v1, " "

    invoke-direct {v0, v1}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/k/a/b/o;->H:Le/k/a/b/w/i;

    return-void
.end method


# virtual methods
.method public abstract beforeArrayValues(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beforeObjectEntries(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeArrayValueSeparator(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndArray(Le/k/a/b/g;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndObject(Le/k/a/b/g;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeObjectEntrySeparator(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeObjectFieldValueSeparator(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRootValueSeparator(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartArray(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartObject(Le/k/a/b/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
