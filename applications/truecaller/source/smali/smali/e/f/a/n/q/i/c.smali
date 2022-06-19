.class public final Le/f/a/n/q/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/q/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/q/i/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/b0/d;

.field public final b:Le/f/a/n/q/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/q/i/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/n/q/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/q/i/e<",
            "Le/f/a/n/q/h/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/a/n/o/b0/d;Le/f/a/n/q/i/e;Le/f/a/n/q/i/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/b0/d;",
            "Le/f/a/n/q/i/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Le/f/a/n/q/i/e<",
            "Le/f/a/n/q/h/c;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/i/c;->a:Le/f/a/n/o/b0/d;

    .line 3
    iput-object p2, p0, Le/f/a/n/q/i/c;->b:Le/f/a/n/q/i/e;

    .line 4
    iput-object p3, p0, Le/f/a/n/q/i/c;->c:Le/f/a/n/q/i/e;

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/o/w<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Le/f/a/n/q/i/c;->b:Le/f/a/n/q/i/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Le/f/a/n/q/i/c;->a:Le/f/a/n/o/b0/d;

    invoke-static {v0, v1}, Le/f/a/n/q/d/e;->d(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)Le/f/a/n/q/d/e;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Le/f/a/n/q/i/e;->a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Le/f/a/n/q/h/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Le/f/a/n/q/i/c;->c:Le/f/a/n/q/i/e;

    invoke-interface {v0, p1, p2}, Le/f/a/n/q/i/e;->a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
