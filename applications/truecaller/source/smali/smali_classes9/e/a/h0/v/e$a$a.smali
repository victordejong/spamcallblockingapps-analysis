.class public final Le/a/h0/v/e$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h0/v/e$a;-><init>(Landroid/view/View;Le/a/h0/v/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h0/v/e$a;


# direct methods
.method public constructor <init>(Le/a/h0/v/e$a;)V
    .locals 0

    iput-object p1, p0, Le/a/h0/v/e$a$a;->b:Le/a/h0/v/e$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/h0/v/e$a$a;->b:Le/a/h0/v/e$a;

    .line 4
    iget-object v0, p1, Le/a/h0/v/e$a;->d:Le/a/h0/v/h;

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Le/a/h0/v/h;->Hj(I)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
