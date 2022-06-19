.class public final Le/a/l/p2/e2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/d3/h;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/d3/h;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessCardRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/b;->a:Le/a/d3/h;

    iput-object p2, p0, Le/a/l/p2/e2/b;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/l/p2/y0;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Le/a/l/p2/y0;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-boolean p1, p1, Le/a/l/p2/y0;->c:Z

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/l/p2/e2/b;->b:Le/a/u3/g;

    .line 5
    iget-object v0, p1, Le/a/u3/g;->N4:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x131

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/l/p2/e2/b;->a:Le/a/d3/h;

    invoke-interface {p1}, Le/a/d3/h;->b()V

    :cond_1
    return-void
.end method
