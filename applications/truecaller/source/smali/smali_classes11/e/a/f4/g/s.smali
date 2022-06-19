.class public final Le/a/f4/g/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/r;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/g/s;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/n;
    .locals 2

    const-string v0, "requestId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f4/g/n;

    iget-object v1, p0, Le/a/f4/g/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Le/a/f4/g/n;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;
    .locals 2

    const-string v0, "requestId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f4/g/p;

    iget-object v1, p0, Le/a/f4/g/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/i;
    .locals 2

    const-string v0, "requestId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/f4/g/i;

    iget-object v1, p0, Le/a/f4/g/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Le/a/f4/g/i;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    return-object v0
.end method
