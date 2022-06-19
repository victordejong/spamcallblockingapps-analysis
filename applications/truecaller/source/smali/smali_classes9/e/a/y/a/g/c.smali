.class public final Le/a/y/a/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/drawable/Drawable;II)V
    .locals 1

    and-int/lit8 p5, p7, 0x8

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p5, p7, 0x10

    const/4 p5, 0x0

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    move p6, v0

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/y/a/g/c;->a:I

    iput p2, p0, Le/a/y/a/g/c;->b:I

    iput p3, p0, Le/a/y/a/g/c;->c:I

    iput p4, p0, Le/a/y/a/g/c;->d:I

    iput-object p5, p0, Le/a/y/a/g/c;->e:Landroid/graphics/drawable/Drawable;

    iput p6, p0, Le/a/y/a/g/c;->f:I

    return-void
.end method
