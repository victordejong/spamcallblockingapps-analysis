.class public final Le/a/c/v/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)I
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v0}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object p1

    .line 2
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 3
    invoke-virtual {v0}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v0

    invoke-static {p1, v0}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object p1

    const-string v0, "Days.daysBetween(DateTim\u2026Time.now().toLocalDate())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget p1, p1, Lw3/b/a/e0/i;->a:I

    return p1
.end method
