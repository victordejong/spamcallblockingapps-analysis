.class Lg/i/a/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final f:Lg/i/a/h;


# direct methods
.method private constructor <init>(Lg/i/a/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/i/a/e$e;->f:Lg/i/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lg/i/a/h;Lg/i/a/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/i/a/e$e;-><init>(Lg/i/a/h;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$e;)V
    .locals 1

    .line 1
    sget-object v0, Lg/i/a/e$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lg/i/a/d$b;->NETWORK:Lg/i/a/d$b;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p2, Lg/i/a/d$b;->MEMORY:Lg/i/a/d$b;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p2, Lg/i/a/d$b;->DISK:Lg/i/a/d$b;

    .line 5
    :goto_0
    iget-object v0, p0, Lg/i/a/e$e;->f:Lg/i/a/h;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1, p2}, Lg/i/a/h;->onBitmapLoaded(Landroid/graphics/Bitmap;Lg/i/a/d$b;)V

    :cond_3
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/e$e;->f:Lg/i/a/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg/i/a/h;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
