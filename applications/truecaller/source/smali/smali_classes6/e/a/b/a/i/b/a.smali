.class public final Le/a/b/a/i/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method public constructor <init>(IIILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x8

    if-eqz p4, :cond_0

    .line 1
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/b/a/i/b/a;->a:I

    iput p2, p0, Le/a/b/a/i/b/a;->b:I

    iput p3, p0, Le/a/b/a/i/b/a;->c:I

    iput-object p4, p0, Le/a/b/a/i/b/a;->d:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method
