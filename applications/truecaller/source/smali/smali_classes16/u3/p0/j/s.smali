.class public interface abstract Lu3/p0/j/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/p0/j/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu3/p0/j/r;

    invoke-direct {v0}, Lu3/p0/j/r;-><init>()V

    sput-object v0, Lu3/p0/j/s;->a:Lu3/p0/j/s;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lu3/p0/j/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lu3/p0/j/c;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILv3/h;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(ILu3/p0/j/b;)V
.end method
