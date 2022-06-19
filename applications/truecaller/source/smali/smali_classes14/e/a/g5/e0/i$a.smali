.class public final Le/a/g5/e0/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g5/e0/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/v/b1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/i$a;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g5/e0/i$a;->b:Landroidx/fragment/app/Fragment;

    const-string v1, "requireActivity()"

    const-string v2, "requireActivity().viewModelStore"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->i1(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)Ln3/v/b1;

    move-result-object v0

    return-object v0
.end method
