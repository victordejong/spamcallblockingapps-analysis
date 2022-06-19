.class public final Le/a/b0/a/c/a/c$a;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/a/c/a/c;


# direct methods
.method public constructor <init>(Le/a/b0/a/c/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/c/a/c$a;->b:Le/a/b0/a/c/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/a/c/a/c$a;->b:Le/a/b0/a/c/a/c;

    .line 2
    iget-object v0, v0, Le/a/b0/a/c/a/c;->f:Le/a/p5/h0;

    .line 3
    sget v1, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundRed:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
