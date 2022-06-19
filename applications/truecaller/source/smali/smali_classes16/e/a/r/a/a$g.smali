.class public final Le/a/r/a/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/a;->Ik()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/a/a;


# direct methods
.method public constructor <init>(Le/a/r/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/a$g;->a:Le/a/r/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r/a/a$g;->a:Le/a/r/a/a;

    invoke-virtual {p1}, Le/a/r/a/a;->SA()Le/a/r/a/g;

    move-result-object p1

    iget-object p2, p0, Le/a/r/a/a$g;->a:Le/a/r/a/a;

    check-cast p1, Le/a/r/a/i;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fragment"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Le/a/r/a/i;->Jj(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/r/a/a$g;->a:Le/a/r/a/a;

    invoke-virtual {p1}, Le/a/r/a/a;->SA()Le/a/r/a/g;

    move-result-object p1

    iget-object p2, p0, Le/a/r/a/a$g;->a:Le/a/r/a/a;

    invoke-virtual {p1, p2}, Le/a/r/a/g;->Ij(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method
