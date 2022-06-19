.class public final Le/a/g5/e0/i$d;
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
        "Le/a/z3/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/e0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/i$d;->b:Le/a/g5/e0/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g5/e0/i$d;->b:Le/a/g5/e0/i;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->N1(Ln3/r/a/l;)Le/a/z3/e;

    move-result-object v0

    return-object v0
.end method
