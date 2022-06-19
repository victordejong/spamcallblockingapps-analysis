.class public Le/f/a/n/q/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/k<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Le/f/a/n/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Le/f/a/n/k<",
            "TDataType;",
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
    iput-object p1, p0, Le/f/a/n/q/d/a;->b:Landroid/content/res/Resources;

    .line 4
    iput-object p2, p0, Le/f/a/n/q/d/a;->a:Le/f/a/n/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Le/f/a/n/i;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/a;->a:Le/f/a/n/k;

    invoke-interface {v0, p1, p2}, Le/f/a/n/k;->a(Ljava/lang/Object;Le/f/a/n/i;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/a;->a:Le/f/a/n/k;

    invoke-interface {v0, p1, p2, p3, p4}, Le/f/a/n/k;->b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/f/a/n/q/d/a;->b:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Le/f/a/n/q/d/v;->d(Landroid/content/res/Resources;Le/f/a/n/o/w;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1
.end method
