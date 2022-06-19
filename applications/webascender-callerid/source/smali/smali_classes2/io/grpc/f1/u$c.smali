.class abstract Lio/grpc/f1/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Ljava/io/IOException;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/u$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/u$c;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/u$c;->b:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final b(Lio/grpc/f1/s1;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/f1/u$c;->c(Lio/grpc/f1/s1;I)I

    move-result p1

    iput p1, p0, Lio/grpc/f1/u$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iput-object p1, p0, Lio/grpc/f1/u$c;->b:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method abstract c(Lio/grpc/f1/s1;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
