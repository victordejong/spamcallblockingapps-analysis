.class public abstract Ln3/g0/l$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/g0/l$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/g0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Ln3/g0/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p1

    return p1
.end method
