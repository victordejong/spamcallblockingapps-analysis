.class public final Le/p/b/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/squareup/picasso/Picasso$d;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lv3/b0;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lv3/b0;Lcom/squareup/picasso/Picasso$d;I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 5
    iput-object p1, p0, Le/p/b/z$a;->b:Landroid/graphics/Bitmap;

    .line 6
    iput-object p2, p0, Le/p/b/z$a;->c:Lv3/b0;

    .line 7
    sget-object p1, Le/p/b/f0;->a:Ljava/lang/StringBuilder;

    const-string p1, "loadedFrom == null"

    .line 8
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Le/p/b/z$a;->a:Lcom/squareup/picasso/Picasso$d;

    .line 10
    iput p4, p0, Le/p/b/z$a;->d:I

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lv3/b0;Lcom/squareup/picasso/Picasso$d;)V
    .locals 2

    .line 1
    sget-object v0, Le/p/b/f0;->a:Ljava/lang/StringBuilder;

    const-string v0, "source == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, v1}, Le/p/b/z$a;-><init>(Landroid/graphics/Bitmap;Lv3/b0;Lcom/squareup/picasso/Picasso$d;I)V

    return-void
.end method
