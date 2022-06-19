.class public final Le/a/c/i/l/f/b;
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
.field public final synthetic a:Le/a/c/i/l/e/a;

.field public final synthetic b:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;


# direct methods
.method public constructor <init>(Le/a/c/i/l/e/a;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/i/l/f/b;->a:Le/a/c/i/l/e/a;

    iput-object p2, p0, Le/a/c/i/l/f/b;->b:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

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
    iget-object p1, p0, Le/a/c/i/l/f/b;->a:Le/a/c/i/l/e/a;

    iget-object p2, p0, Le/a/c/i/l/f/b;->b:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    invoke-virtual {p2}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/c/i/l/e/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
