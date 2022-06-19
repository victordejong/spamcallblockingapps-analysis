.class public final Le/f/a/n/q/d/v;
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Le/f/a/n/o/s;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Le/f/a/n/o/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Le/f/a/n/o/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/f/a/n/q/d/v;->a:Landroid/content/res/Resources;

    .line 4
    iput-object p2, p0, Le/f/a/n/q/d/v;->b:Le/f/a/n/o/w;

    return-void
.end method

.method public static d(Landroid/content/res/Resources;Le/f/a/n/o/w;)Le/f/a/n/o/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Le/f/a/n/q/d/v;

    invoke-direct {v0, p0, p1}, Le/f/a/n/q/d/v;-><init>(Landroid/content/res/Resources;Le/f/a/n/o/w;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/v;->b:Le/f/a/n/o/w;

    invoke-interface {v0}, Le/f/a/n/o/w;->a()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/v;->b:Le/f/a/n/o/w;

    invoke-interface {v0}, Le/f/a/n/o/w;->b()V

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Le/f/a/n/q/d/v;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Le/f/a/n/q/d/v;->b:Le/f/a/n/o/w;

    invoke-interface {v2}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/v;->b:Le/f/a/n/o/w;

    instance-of v1, v0, Le/f/a/n/o/s;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Le/f/a/n/o/s;

    invoke-interface {v0}, Le/f/a/n/o/s;->initialize()V

    :cond_0
    return-void
.end method
