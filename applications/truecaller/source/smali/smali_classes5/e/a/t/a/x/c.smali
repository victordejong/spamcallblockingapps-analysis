.class public final Le/a/t/a/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/t/a/x/d;

.field public final synthetic b:Le/a/t/a/x/i;


# direct methods
.method public constructor <init>(Le/a/t/a/x/d;Le/a/t/a/x/i;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/x/c;->a:Le/a/t/a/x/d;

    iput-object p2, p0, Le/a/t/a/x/c;->b:Le/a/t/a/x/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/t/a/x/c;->a:Le/a/t/a/x/d;

    .line 2
    iget-object v0, p1, Le/a/t/a/x/d;->b:Le/a/t/a/o;

    .line 3
    iget-object v1, p0, Le/a/t/a/x/c;->b:Le/a/t/a/x/i;

    .line 4
    iget-object v2, v1, Le/a/t/a/x/i;->a:Lcom/truecaller/android/truemoji/keyboard/EmojiView;

    .line 5
    iget-object p1, p1, Le/a/t/a/x/d;->a:Ljava/util/List;

    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/u/d;

    invoke-interface {v0, v2, p1}, Le/a/t/a/o;->c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z

    move-result p1

    return p1
.end method
