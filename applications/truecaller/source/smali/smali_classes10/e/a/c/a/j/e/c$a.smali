.class public final Le/a/c/a/j/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/e/c;->Ys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/j/e/c;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/c$a;->a:Le/a/c/a/j/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/j/e/c$a;->a:Le/a/c/a/j/e/c;

    iget-object v0, v0, Le/a/c/a/j/e/c;->a:Le/a/c/a/j/e/a;

    .line 2
    sget-object v1, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/c/a/g/h;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 5
    iget-object v0, p0, Le/a/c/a/j/e/c$a;->a:Le/a/c/a/j/e/c;

    iget-object v0, v0, Le/a/c/a/j/e/c;->a:Le/a/c/a/j/e/a;

    .line 6
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/a/c/a/g/h;->f:Le/a/c/a/g/c1;

    iget-object v0, v0, Le/a/c/a/g/c1;->a:Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    return-void
.end method
