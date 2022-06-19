.class public final Le/a/d0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/o;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/d0/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/p5/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/d0/t;",
            ">;",
            "Le/a/p5/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callNotificationsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/p;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/d0/p;->b:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/v;)V
    .locals 5

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/d0/v;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0xc317ed

    if-ne v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v3, :cond_3

    .line 2
    iget-object v0, p0, Le/a/d0/p;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Le/a/d0/p;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Le/a/d0/p;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/t;

    invoke-interface {v0}, Le/a/d0/t;->f()V

    :cond_3
    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    .line 4
    :cond_4
    iget-object v0, p0, Le/a/d0/p;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/t;

    invoke-interface {v0, p1}, Le/a/d0/t;->h(Le/a/d0/v;)V

    :cond_5
    return-void
.end method
