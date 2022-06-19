.class public final Le/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/u;


# instance fields
.field public final a:Le/a/p5/h0;

.field public final b:Le/a/l4/c;

.field public final c:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V
    .locals 1
    .param p2    # Le/a/l4/c;
        .annotation runtime Ljavax/inject/Named;
            value = "inbox_availability_manager"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/v;->a:Le/a/p5/h0;

    iput-object p2, p0, Le/a/a/v;->b:Le/a/l4/c;

    iput-object p3, p0, Le/a/a/v;->c:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/u$a;)Le/a/l4/d;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/a/u$a;->z()Le/a/l4/d;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/l4/d;

    iget-object v0, p0, Le/a/a/v;->a:Le/a/p5/h0;

    iget-object v1, p0, Le/a/a/v;->b:Le/a/l4/c;

    iget-object v2, p0, Le/a/a/v;->c:Le/a/p5/c;

    invoke-direct {p1, v0, v1, v2}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    :goto_0
    return-object p1
.end method

.method public b(Le/a/a/u$a;)Le/a/b0/a/b/a;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/a/u$a;->o()Le/a/b0/a/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/b0/a/b/a;

    iget-object v0, p0, Le/a/a/v;->a:Le/a/p5/h0;

    invoke-direct {p1, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    :goto_0
    return-object p1
.end method
