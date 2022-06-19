.class public Le/f/a/n/q/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/l<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/b0/d;

.field public final b:Le/f/a/n/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/a/n/o/b0/d;Le/f/a/n/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/b0/d;",
            "Le/f/a/n/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/d/b;->a:Le/f/a/n/o/b0/d;

    .line 3
    iput-object p2, p0, Le/f/a/n/q/d/b;->b:Le/f/a/n/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/File;Le/f/a/n/i;)Z
    .locals 3

    .line 1
    check-cast p1, Le/f/a/n/o/w;

    .line 2
    iget-object v0, p0, Le/f/a/n/q/d/b;->b:Le/f/a/n/l;

    new-instance v1, Le/f/a/n/q/d/e;

    invoke-interface {p1}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Le/f/a/n/q/d/b;->a:Le/f/a/n/o/b0/d;

    invoke-direct {v1, p1, v2}, Le/f/a/n/q/d/e;-><init>(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)V

    invoke-interface {v0, v1, p2, p3}, Le/f/a/n/d;->a(Ljava/lang/Object;Ljava/io/File;Le/f/a/n/i;)Z

    move-result p1

    return p1
.end method

.method public b(Le/f/a/n/i;)Le/f/a/n/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/b;->b:Le/f/a/n/l;

    invoke-interface {v0, p1}, Le/f/a/n/l;->b(Le/f/a/n/i;)Le/f/a/n/c;

    move-result-object p1

    return-object p1
.end method
