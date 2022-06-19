.class public Le/a/i4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/k/a/q;Le/a/i4/q$a;)Landroid/app/Notification;
    .locals 0

    .line 1
    invoke-interface {p2}, Le/a/i4/q$a;->create()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 2
    invoke-virtual {p1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
