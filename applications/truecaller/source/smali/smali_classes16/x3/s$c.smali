.class public final Lx3/s$c;
.super Lu3/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lu3/c0;

.field public final d:J


# direct methods
.method public constructor <init>(Lu3/c0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu3/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/s$c;->c:Lu3/c0;

    .line 3
    iput-wide p2, p0, Lx3/s$c;->d:J

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lx3/s$c;->d:J

    return-wide v0
.end method

.method public l()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/s$c;->c:Lu3/c0;

    return-object v0
.end method

.method public q()Lv3/h;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
