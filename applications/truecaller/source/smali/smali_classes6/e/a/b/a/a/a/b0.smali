.class public final Le/a/b/a/a/a/b0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/widget/Spinner;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/a/v;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/v;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/b0;->b:Le/a/b/a/a/a/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/Spinner;)V
    .locals 3

    const-string v0, "spinner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/a/a/a/b0;->b:Le/a/b/a/a/a/v;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$array;->BusinessEditProfile_time:I

    .line 3
    sget v2, Lcom/truecaller/bizmon/R$layout;->layout_biztime_spinner:I

    .line 4
    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Le/a/b/a/a/a/b0;->a(Landroid/widget/Spinner;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
