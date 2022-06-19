.class public final Le/a/l/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/u2/c;


# instance fields
.field public final a:Le/a/d4/c;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/d4/c;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/y;->a:Le/a/d4/c;

    iput-object p2, p0, Le/a/l/a/y;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/a/y;->a:Le/a/d4/c;

    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/y;->a:Le/a/d4/c;

    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/a/y;->b:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->y:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
