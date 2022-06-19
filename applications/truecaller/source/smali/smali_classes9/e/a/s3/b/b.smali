.class public final Le/a/s3/b/b;
.super Le/a/s3/b/e;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q2/d1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/q2/d1/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "analyticsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/s3/b/e;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/s3/b/b;->a:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/exception/filters/RemoteFilterRule;Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "rule"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Le/a/s3/b/b;->a:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/d1/a;

    invoke-interface {p2}, Le/a/q2/d1/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
