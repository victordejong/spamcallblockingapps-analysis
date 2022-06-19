.class public final Le/a/c/i/l/g/c;
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
.field public final synthetic a:Le/a/c/i/l/g/d;

.field public final synthetic b:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Le/a/c/i/l/g/d;Landroid/widget/RemoteViews;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/i/l/g/c;->a:Le/a/c/i/l/g/d;

    iput-object p2, p0, Le/a/c/i/l/g/c;->b:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Le/a/c/i/l/g/c;->a:Le/a/c/i/l/g/d;

    iget-object p2, p0, Le/a/c/i/l/g/c;->b:Landroid/widget/RemoteViews;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget p1, Lcom/truecaller/insights/R$id;->primaryIcon:I

    const-string p3, "setBackgroundColor"

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return p4
.end method
