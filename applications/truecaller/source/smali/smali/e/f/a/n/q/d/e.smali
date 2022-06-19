.class public Le/f/a/n/q/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/w;
.implements Le/f/a/n/o/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/o/w<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Le/f/a/n/o/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Le/f/a/n/o/b0/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/f/a/n/q/d/e;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/f/a/n/q/d/e;->b:Le/f/a/n/o/b0/d;

    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)Le/f/a/n/q/d/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Le/f/a/n/q/d/e;

    invoke-direct {v0, p0, p1}, Le/f/a/n/q/d/e;-><init>(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/e;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Le/f/a/t/j;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/e;->b:Le/f/a/n/o/b0/d;

    iget-object v1, p0, Le/f/a/n/q/d/e;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/e;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
