.class public final Lu3/m0;
.super Lu3/l0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lv3/h;

.field public final synthetic d:Lu3/c0;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lv3/h;Lu3/c0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/m0;->c:Lv3/h;

    iput-object p2, p0, Lu3/m0;->d:Lu3/c0;

    iput-wide p3, p0, Lu3/m0;->e:J

    invoke-direct {p0}, Lu3/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu3/m0;->e:J

    return-wide v0
.end method

.method public l()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/m0;->d:Lu3/c0;

    return-object v0
.end method

.method public q()Lv3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/m0;->c:Lv3/h;

    return-object v0
.end method
