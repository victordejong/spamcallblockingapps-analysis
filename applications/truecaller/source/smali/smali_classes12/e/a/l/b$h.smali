.class public final Le/a/l/b$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/b;->nn(Le/a/l/v2/i/a/d;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Le/a/l/b;

.field public final synthetic d:Le/a/l/v2/i/a/d;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Le/a/l/b;ZLe/a/l/v2/i/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/b$h;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Le/a/l/b$h;->c:Le/a/l/b;

    iput-object p4, p0, Le/a/l/b$h;->d:Le/a/l/v2/i/a/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/l/b$h;->c:Le/a/l/b;

    .line 3
    iget-object v1, p0, Le/a/l/b$h;->b:Landroid/view/ViewGroup;

    const v2, 0x7f0a07ef

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "container.findViewById(R.id.freeTrialLabel)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Le/a/l/b$h;->d:Le/a/l/v2/i/a/d;

    .line 4
    iget-object v2, v2, Le/a/l/v2/i/a/d;->e:Ljava/util/List;

    .line 5
    sget v3, Le/a/l/b;->s:I

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Le/a/l/b;->VA(Landroid/widget/TextView;Ljava/util/List;I)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
