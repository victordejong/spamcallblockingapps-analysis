.class public final Le/a/c/w/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/v;


# instance fields
.field public final a:Le/a/c/a0/b;


# direct methods
.method public constructor <init>(Le/a/c/a0/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountsDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/w;->a:Le/a/c/a0/b;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/r/e/a/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/w;->a:Le/a/c/a0/b;

    .line 2
    iget-object v1, v0, Le/a/c/a0/b;->a:Le/a/c/c/d/c;

    invoke-interface {v1}, Le/a/c/c/d/c;->d()Lq3/a/x2/f;

    move-result-object v1

    .line 3
    new-instance v2, Le/a/c/a0/a;

    invoke-direct {v2, v1, v0}, Le/a/c/a0/a;-><init>(Lq3/a/x2/f;Le/a/c/a0/b;)V

    return-object v2
.end method
