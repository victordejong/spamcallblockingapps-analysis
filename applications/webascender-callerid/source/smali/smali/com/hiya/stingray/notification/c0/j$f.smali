.class final Lcom/hiya/stingray/notification/c0/j$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/j;->s(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroidx/core/app/j$e;


# direct methods
.method constructor <init>(Landroidx/core/app/j$e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/j$f;->f:Landroidx/core/app/j$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$f;->f:Landroidx/core/app/j$e;

    invoke-virtual {v0, p1}, Landroidx/core/app/j$e;->r(Landroid/graphics/Bitmap;)Landroidx/core/app/j$e;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/notification/c0/j$f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
