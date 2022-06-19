.class public final Lu3/d$a;
.super Lu3/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Lv3/h;

.field public final d:Lu3/p0/e/e$c;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu3/p0/e/e$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/l0;-><init>()V

    iput-object p1, p0, Lu3/d$a;->d:Lu3/p0/e/e$c;

    iput-object p2, p0, Lu3/d$a;->e:Ljava/lang/String;

    iput-object p3, p0, Lu3/d$a;->f:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lu3/p0/e/e$c;->c:Ljava/util/List;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/b0;

    .line 3
    new-instance p2, Lu3/d$a$a;

    invoke-direct {p2, p0, p1, p1}, Lu3/d$a$a;-><init>(Lu3/d$a;Lv3/b0;Lv3/b0;)V

    const-string p1, "$this$buffer"

    .line 4
    invoke-static {p2, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lv3/v;

    invoke-direct {p1, p2}, Lv3/v;-><init>(Lv3/b0;)V

    .line 6
    iput-object p1, p0, Lu3/d$a;->c:Lv3/h;

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/d$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lu3/p0/c;->a:[B

    const-string v1, "$this$toLongOrDefault"

    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public l()Lu3/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/d$a;->e:Ljava/lang/String;

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
    iget-object v0, p0, Lu3/d$a;->c:Lv3/h;

    return-object v0
.end method
