.class public final Landroidx/core/app/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public static b(Landroidx/core/app/j$d;)Landroid/app/Notification$BubbleMetadata;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v1}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/core/app/j$d;->a()Z

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method
