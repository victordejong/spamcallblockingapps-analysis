.class public final Le/a/l/d/b/e;
.super Le/a/u2/a/b;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/r5/i0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/l/p2/v0;Le/a/r5/i0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "name"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whoViewedMeManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/l/d/b/e;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/l/d/b/e;->c:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/d/b/e;->d:Le/a/r5/i0;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l/d/b/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/l/d/b/e;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/l/d/b/c;->setName(Ljava/lang/String;)V

    return-void
.end method
