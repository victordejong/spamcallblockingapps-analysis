.class public Le/f/a/n/q/d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/f/e;

.field public final b:Le/f/a/n/o/b0/d;


# direct methods
.method public constructor <init>(Le/f/a/n/q/f/e;Le/f/a/n/o/b0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/d/x;->a:Le/f/a/n/q/f/e;

    .line 3
    iput-object p2, p0, Le/f/a/n/q/d/x;->b:Le/f/a/n/o/b0/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

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
    check-cast p1, Landroid/net/Uri;

    .line 2
    iget-object p4, p0, Le/f/a/n/q/d/x;->a:Le/f/a/n/q/f/e;

    invoke-virtual {p4, p1}, Le/f/a/n/q/f/e;->c(Landroid/net/Uri;)Le/f/a/n/o/w;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Le/f/a/n/q/f/b;

    invoke-virtual {p1}, Le/f/a/n/q/f/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p4, p0, Le/f/a/n/q/d/x;->b:Le/f/a/n/o/b0/d;

    invoke-static {p4, p1, p2, p3}, Le/f/a/n/q/d/o;->a(Le/f/a/n/o/b0/d;Landroid/graphics/drawable/Drawable;II)Le/f/a/n/o/w;

    move-result-object p1

    :goto_0
    return-object p1
.end method
