.class public final Le/a/c/a/m/c/w$e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/w$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/m/c/w$e;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/w$e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/w$e$a;->b:Le/a/c/a/m/c/w$e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/m/c/w$e$a;->b:Le/a/c/a/m/c/w$e;

    iget-object v0, v0, Le/a/c/a/m/c/w$e;->a:Le/a/c/a/m/c/w;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/c/a/m/c/w$e$a;->b:Le/a/c/a/m/c/w$e;

    iget-object v1, v1, Le/a/c/a/m/c/w$e;->a:Le/a/c/a/m/c/w;

    .line 2
    sget-object v2, Le/a/c/a/m/c/w;->f:[Ls1/a/l;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Reset success .."

    .line 4
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
