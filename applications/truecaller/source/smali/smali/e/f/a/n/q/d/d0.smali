.class public final Le/f/a/n/q/d/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/d/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    new-instance p2, Le/f/a/n/q/d/d0$a;

    invoke-direct {p2, p1}, Le/f/a/n/q/d/d0$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
