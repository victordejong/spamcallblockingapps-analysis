.class public final Le/p/b/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/b/p$a;->a:Landroid/graphics/Bitmap;

    .line 3
    iput p2, p0, Le/p/b/p$a;->b:I

    return-void
.end method
