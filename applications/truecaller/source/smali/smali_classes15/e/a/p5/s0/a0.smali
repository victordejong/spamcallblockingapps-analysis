.class public final Le/a/p5/s0/a0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Dialog;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;I)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/a0;->b:Landroid/app/Dialog;

    iput p2, p0, Le/a/p5/s0/a0;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p5/s0/a0;->b:Landroid/app/Dialog;

    iget v1, p0, Le/a/p5/s0/a0;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
