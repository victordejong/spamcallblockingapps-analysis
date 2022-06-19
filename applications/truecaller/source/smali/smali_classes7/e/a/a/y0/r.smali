.class public Le/a/a/y0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Le/a/a/y0/s;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/a/a/y0/r;->a:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Le/a/a/y0/r;->a:Landroid/widget/RemoteViews;

    const p2, 0x7f0a0d78

    const-string p3, "setBackgroundColor"

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return p4
.end method
