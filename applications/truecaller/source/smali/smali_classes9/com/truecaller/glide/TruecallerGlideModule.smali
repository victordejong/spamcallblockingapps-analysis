.class public final Lcom/truecaller/glide/TruecallerGlideModule;
.super Le/f/a/p/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/glide/TruecallerGlideModule;",
        "Le/f/a/p/a;",
        "Landroid/content/Context;",
        "appContext",
        "Le/f/a/c;",
        "glide",
        "Le/f/a/g;",
        "registry",
        "Ls1/s;",
        "b",
        "(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V",
        "",
        "c",
        "()Z",
        "context",
        "Le/f/a/d;",
        "builder",
        "a",
        "(Landroid/content/Context;Le/f/a/d;)V",
        "<init>",
        "()V",
        "glide-support_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/p/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/f/a/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "builder"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 1
    iput p1, p2, Le/f/a/d;->k:I

    return-void
.end method

.method public b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V
    .locals 6

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glide"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "registry"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class p2, Landroid/net/Uri;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Le/a/z3/g/d;

    invoke-direct {v1, p1}, Le/a/z3/g/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2, v0, v1}, Le/f/a/g;->g(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    .line 2
    const-class p2, Landroid/net/Uri;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v1, Le/a/z3/g/a$b;

    invoke-direct {v1, p1}, Le/a/z3/g/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2, v0, v1}, Le/f/a/g;->g(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    .line 3
    const-class p2, Ljava/io/InputStream;

    const-class v0, Landroid/graphics/BitmapFactory$Options;

    new-instance v1, Le/a/z3/i/b;

    invoke-direct {v1}, Le/a/z3/i/b;-><init>()V

    const-string v2, "legacy_prepend_all"

    .line 4
    iget-object v3, p3, Le/f/a/g;->c:Le/f/a/q/e;

    .line 5
    monitor-enter v3

    .line 6
    :try_start_0
    invoke-virtual {v3, v2}, Le/f/a/q/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Le/f/a/q/e$a;

    invoke-direct {v5, p2, v0, v1}, Le/f/a/q/e$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/k;)V

    invoke-interface {v2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v3

    .line 8
    instance-of p2, p1, Le/a/z3/b;

    if-eqz p2, :cond_0

    .line 9
    const-class p2, Landroid/net/Uri;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Le/a/z3/g/g;

    check-cast p1, Le/a/z3/b;

    invoke-direct {v1, p1}, Le/a/z3/g/g;-><init>(Le/a/z3/b;)V

    invoke-virtual {p3, p2, v0, v1}, Le/f/a/g;->g(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v3

    throw p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
