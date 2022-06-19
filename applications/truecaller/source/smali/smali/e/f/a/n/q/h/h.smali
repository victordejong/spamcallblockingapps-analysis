.class public final Le/f/a/n/q/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Le/f/a/l/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/b0/d;


# direct methods
.method public constructor <init>(Le/f/a/n/o/b0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/h/h;->a:Le/f/a/n/o/b0/d;

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
    check-cast p1, Le/f/a/l/a;

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
    check-cast p1, Le/f/a/l/a;

    .line 2
    invoke-interface {p1}, Le/f/a/l/a;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Le/f/a/n/q/h/h;->a:Le/f/a/n/o/b0/d;

    invoke-static {p1, p2}, Le/f/a/n/q/d/e;->d(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)Le/f/a/n/q/d/e;

    move-result-object p1

    return-object p1
.end method
