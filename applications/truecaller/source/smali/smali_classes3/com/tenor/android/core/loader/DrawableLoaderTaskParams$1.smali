.class public Lcom/tenor/android/core/loader/DrawableLoaderTaskParams$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;->getListener()Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/loader/IDrawableLoaderTaskListener<",
        "TT;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/loader/DrawableLoaderTaskParams$1;->this$0:Lcom/tenor/android/core/loader/DrawableLoaderTaskParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public success(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    return-void
.end method
