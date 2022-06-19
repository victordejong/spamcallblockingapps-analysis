.class Lio/grpc/g1/h$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/g1/h$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/g1/h$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read(Ln/f;J)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    sget-object v0, Ln/e0;->d:Ln/e0;

    return-object v0
.end method
