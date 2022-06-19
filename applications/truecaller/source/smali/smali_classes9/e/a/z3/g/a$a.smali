.class public final Le/a/z3/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/n/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/z3/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/n/d<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/net/Uri;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/z3/g/a$a;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/z3/g/a$a;->c:Landroid/net/Uri;

    iput p3, p0, Le/a/z3/g/a$a;->d:I

    iput p4, p0, Le/a/z3/g/a$a;->e:I

    .line 2
    new-instance p1, Le/a/z3/g/a$a$b;

    invoke-direct {p1, p0}, Le/a/z3/g/a$a$b;-><init>(Le/a/z3/g/a$a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/z3/g/a$a;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Le/f/a/n/a;
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/a;->a:Le/f/a/n/a;

    return-object v0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public d(Le/f/a/f;Le/f/a/n/n/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/f;",
            "Le/f/a/n/n/d$a<",
            "-",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/z3/g/a$a;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    .line 2
    iget-object v0, p0, Le/a/z3/g/a$a;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v0, "packageManager.getApplic\u2026ri.schemeSpecificPart, 0)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/z3/g/a$a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Le/a/z3/g/a$a;->e(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Le/a/z3/g/a$a;->d:I

    .line 7
    iget v1, p0, Le/a/z3/g/a$a;->e:I

    .line 8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    new-instance v1, Le/a/z3/g/a$a$a;

    invoke-direct {v1, p0, p1}, Le/a/z3/g/a$a$a;-><init>(Le/a/z3/g/a$a;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1}, Le/a/e/a2;->j0(Landroid/graphics/Bitmap;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p2, v0}, Le/f/a/n/n/d$a;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Le/a/z3/g/a$c;

    invoke-direct {p1}, Le/a/z3/g/a$c;-><init>()V

    invoke-interface {p2, p1}, Le/f/a/n/n/d$a;->f(Ljava/lang/Exception;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-interface {p2, p1}, Le/f/a/n/n/d$a;->f(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "ByteArrayOutputStream().\u2026.toByteArray())\n        }"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
