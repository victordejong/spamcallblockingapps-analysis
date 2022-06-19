.class public final Le/a/b0/a/c/a/c$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/c/a/c;-><init>(FLandroid/graphics/RectF;Le/a/p5/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/a/c/a/c;


# direct methods
.method public constructor <init>(Le/a/b0/a/c/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/c/a/c$c;->b:Le/a/b0/a/c/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/a/c/a/c$c;->b:Le/a/b0/a/c/a/c;

    .line 2
    iget-object v0, v0, Le/a/b0/a/c/a/c;->f:Le/a/p5/h0;

    .line 3
    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_spam_outline_24dp:I

    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextRed:I

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
