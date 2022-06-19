.class public final Le/a/b/a/a/a/d$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b/a/a/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/d$g;->b:Le/a/b/a/a/a/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/b/a/a/c/c;

    iget-object v1, p0, Le/a/b/a/a/a/d$g;->b:Le/a/b/a/a/a/d;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/bizmon/R$dimen;->doubleSpace:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v0, v1}, Le/a/b/a/a/c/c;-><init>(F)V

    return-object v0
.end method
