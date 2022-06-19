.class public final Le/a/q2/x0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/f;


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/q2/x0/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "numberNormalizerProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsHelperProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactSourceHelperProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallHelperProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/x0/e;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/q2/x0/e;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/q2/x0/e;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/q2/x0/e;->d:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/w0/h/b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/x0/e;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "contactSourceHelperProvider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/w0/h/b;

    return-object v0
.end method

.method public b()Le/a/q2/w0/h/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/x0/e;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "acsHelperProvider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/w0/h/a;

    return-object v0
.end method

.method public c()Le/a/q2/w0/h/e;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/x0/e;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "numberNormalizerProvider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/w0/h/e;

    return-object v0
.end method

.method public d()Le/a/q2/w0/h/d;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/x0/e;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "contextCallHelperProvider.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/w0/h/d;

    return-object v0
.end method
