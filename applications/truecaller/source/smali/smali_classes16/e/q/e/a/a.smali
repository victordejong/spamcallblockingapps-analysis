.class public abstract Le/q/e/a/a;
.super Le/q/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/q/e/b/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/q/e/b/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p4}, Le/q/e/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->u(Ljava/lang/String;)F

    move-result p1

    const-wide/32 v0, 0x36ee80

    .line 2
    div-long/2addr p2, v0

    long-to-float p2, p2

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/HashMap<",
            "TT;",
            "Le/q/e/b/a$c<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/q/e/a/a;->f(Ljava/util/List;)V

    return-void
.end method

.method public e(Ljava/lang/String;JLjava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract f(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
