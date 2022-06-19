.class public final Le/a/b/a/a/a/g0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/g0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/v/c1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/a/g0;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/g0;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/g0$b;->b:Le/a/b/a/a/a/g0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/a/a/a/g0$b;->b:Le/a/b/a/a/a/g0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
