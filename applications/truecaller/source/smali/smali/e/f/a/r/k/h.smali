.class public Le/f/a/r/k/h;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/widget/RemoteViews;

.field public final e:Landroid/content/Context;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Landroid/app/Notification;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, v0}, Le/f/a/r/k/c;-><init>(II)V

    .line 2
    iput-object p1, p0, Le/f/a/r/k/h;->e:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Le/f/a/r/k/h;->h:Landroid/app/Notification;

    .line 4
    iput-object p3, p0, Le/f/a/r/k/h;->d:Landroid/widget/RemoteViews;

    .line 5
    iput p2, p0, Le/f/a/r/k/h;->i:I

    .line 6
    iput p5, p0, Le/f/a/r/k/h;->f:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/f/a/r/k/h;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/k/h;->d:Landroid/widget/RemoteViews;

    iget v1, p0, Le/f/a/r/k/h;->i:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Le/f/a/r/k/h;->e:Landroid/content/Context;

    const-string v0, "notification"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const-string v0, "Argument must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/f/a/r/k/h;->g:Ljava/lang/String;

    iget v1, p0, Le/f/a/r/k/h;->f:I

    iget-object v2, p0, Le/f/a/r/k/h;->h:Landroid/app/Notification;

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le/f/a/r/k/h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
