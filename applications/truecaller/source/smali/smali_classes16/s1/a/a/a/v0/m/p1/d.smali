.class public final Ls1/a/a/a/v0/m/p1/d;
.super Ls1/a/a/a/v0/m/x0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ls1/a/a/a/v0/m/v0;)Ls1/a/a/a/v0/m/y0;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/j/s/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ls1/a/a/a/v0/j/s/a/b;

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/j/s/a/b;->b()Ls1/a/a/a/v0/m/y0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ls1/a/a/a/v0/m/a1;

    sget-object v1, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    invoke-interface {p1}, Ls1/a/a/a/v0/j/s/a/b;->b()Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    return-object v0

    .line 4
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/j/s/a/b;->b()Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method
