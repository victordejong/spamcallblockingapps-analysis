.class public final Le/i/b/r1/n$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/r1/n;->loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/i/b/w1/a$a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/i/b/r1/n;

.field public final synthetic c:Ljava/net/URL;

.field public final synthetic d:Landroid/graphics/drawable/Drawable;

.field public final synthetic e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Le/i/b/r1/n;Ljava/net/URL;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Le/i/b/r1/n$a;->b:Le/i/b/r1/n;

    iput-object p2, p0, Le/i/b/r1/n$a;->c:Ljava/net/URL;

    iput-object p3, p0, Le/i/b/r1/n$a;->d:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Le/i/b/r1/n$a;->e:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Le/i/b/w1/a$a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/i/b/r1/n$a;->b:Le/i/b/r1/n;

    .line 4
    iget-object v0, v0, Le/i/b/r1/n;->a:Lcom/squareup/picasso/Picasso;

    .line 5
    iget-object v1, p0, Le/i/b/r1/n$a;->c:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->e(Ljava/lang/String;)Le/p/b/y;

    move-result-object v0

    const-string v1, "picasso.load(imageUrl.toString())"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Le/i/b/r1/n$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    iget v2, v0, Le/p/b/y;->c:I

    if-nez v2, :cond_0

    .line 8
    iput-object v1, v0, Le/p/b/y;->e:Landroid/graphics/drawable/Drawable;

    const-string v1, "placeholder(placeholder)"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p0, Le/i/b/r1/n$a;->e:Landroid/widget/ImageView;

    new-instance v2, Le/i/b/r1/m;

    invoke-direct {v2, p1}, Le/i/b/r1/m;-><init>(Le/i/b/w1/a$a;)V

    invoke-virtual {v0, v1, v2}, Le/p/b/y;->e(Landroid/widget/ImageView;Le/p/b/e;)V

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
