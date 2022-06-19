.class public Le/f/a/n/q/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/q/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/q/i/e<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/i/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/f/a/n/q/i/b;->a:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Le/f/a/n/q/d/v;->d(Landroid/content/res/Resources;Le/f/a/n/o/w;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1
.end method
