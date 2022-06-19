.class public final Lu3/p0/h/h;
.super Lu3/l0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lv3/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLv3/h;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/l0;-><init>()V

    iput-object p1, p0, Lu3/p0/h/h;->c:Ljava/lang/String;

    iput-wide p2, p0, Lu3/p0/h/h;->d:J

    iput-object p4, p0, Lu3/p0/h/h;->e:Lv3/h;

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu3/p0/h/h;->d:J

    return-wide v0
.end method

.method public l()Lu3/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/p0/h/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lu3/c0;->f:Lu3/c0$a;

    invoke-static {v0}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q()Lv3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/h/h;->e:Lv3/h;

    return-object v0
.end method
