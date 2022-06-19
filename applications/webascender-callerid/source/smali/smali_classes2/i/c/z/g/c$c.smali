.class final Li/c/z/g/c$c;
.super Li/c/z/g/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private h:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Li/c/z/g/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Li/c/z/g/c$c;->h:J

    return-void
.end method


# virtual methods
.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/c/z/g/c$c;->h:J

    return-wide v0
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Li/c/z/g/c$c;->h:J

    return-void
.end method
