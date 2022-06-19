.class public final Le/a/y/a/f/g;
.super Le/a/y/a/f/f;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/y/a/f/f;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/y/a/f/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Ja()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/y/a/f/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/f/e;->close()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/y/a/f/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/y/a/f/e;->xk()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/y/a/f/e;->close()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Le/a/y/a/f/e;->ku()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/y/a/f/g;->b:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0, v1}, Le/a/y/a/f/e;->Ic(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
