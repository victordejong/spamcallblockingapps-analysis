.class final Lg/f/a/e/c0/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/e/c0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lg/f/a/e/c0/k;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lg/f/a/e/c0/l$b;

.field public final e:F


# direct methods
.method constructor <init>(Lg/f/a/e/c0/k;FLandroid/graphics/RectF;Lg/f/a/e/c0/l$b;Landroid/graphics/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lg/f/a/e/c0/l$c;->d:Lg/f/a/e/c0/l$b;

    .line 3
    iput-object p1, p0, Lg/f/a/e/c0/l$c;->a:Lg/f/a/e/c0/k;

    .line 4
    iput p2, p0, Lg/f/a/e/c0/l$c;->e:F

    .line 5
    iput-object p3, p0, Lg/f/a/e/c0/l$c;->c:Landroid/graphics/RectF;

    .line 6
    iput-object p5, p0, Lg/f/a/e/c0/l$c;->b:Landroid/graphics/Path;

    return-void
.end method
