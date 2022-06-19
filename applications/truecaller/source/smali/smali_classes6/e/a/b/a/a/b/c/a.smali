.class public final Le/a/b/a/a/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b/a/a/b/c/b;

.field public final b:Le/a/m4/c/i/a/b;

.field public final c:Le/a/b/a/g/g;


# direct methods
.method public constructor <init>(Le/a/m4/c/i/a/b;Le/a/b/a/g/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "bizProfileLocalFileManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/b/c/a;->b:Le/a/m4/c/i/a/b;

    iput-object p2, p0, Le/a/b/a/a/b/c/a;->c:Le/a/b/a/g/g;

    .line 2
    new-instance v0, Le/a/b/a/a/b/c/b;

    invoke-interface {p2}, Le/a/b/a/g/g;->a()Lq3/a/g0;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Le/a/b/a/a/b/c/b;-><init>(Le/a/m4/c/i/a/b;Lq3/a/g0;)V

    iput-object v0, p0, Le/a/b/a/a/b/c/a;->a:Le/a/b/a/a/b/c/b;

    return-void
.end method
