.class public final Le/a/d/d/a/a/c/b;
.super Le/a/d/d/a/a/c/a;
.source "SourceFile"

# interfaces
.implements Le/a/o2/l;


# instance fields
.field public b:Le/a/d/d/a/t;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/d/d/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Le/a/d/d/a/t;)V
    .locals 1

    const-string v0, "presenterProxy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/d/a/a/c/b;->b:Le/a/d/d/a/t;

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/d/d/a/a/c/b;->b:Le/a/d/d/a/t;

    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/d/d/a/a/c/b;->c:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/d/a/a/c/b;->c:Z

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x67eccfc0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.CLICKED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d/d/a/a/c/b;->b:Le/a/d/d/a/t;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/d/d/a/t;->X6()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
