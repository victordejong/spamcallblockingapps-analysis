.class public final Le/a/b0/a/x/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/imageview/GoldShineImageView;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/x/g;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object v1, p0, Le/a/b0/a/x/g;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-static {v1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->e(Lcom/truecaller/common/ui/imageview/GoldShineImageView;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
