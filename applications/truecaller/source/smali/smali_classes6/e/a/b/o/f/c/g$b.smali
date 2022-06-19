.class public final Le/a/b/o/f/c/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/f/c/g;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/o/f/c/g;

.field public final synthetic b:Le/a/b/o/c/b/a;


# direct methods
.method public constructor <init>(Le/a/b/o/f/c/g;Le/a/b/o/c/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/f/c/g$b;->a:Le/a/b/o/f/c/g;

    iput-object p2, p0, Le/a/b/o/f/c/g$b;->b:Le/a/b/o/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/o/f/c/g$b;->a:Le/a/b/o/f/c/g;

    .line 2
    iget-object p1, p1, Le/a/b/o/f/c/g;->e:Le/a/b/o/f/c/c;

    .line 3
    iget-object v0, p0, Le/a/b/o/f/c/g$b;->b:Le/a/b/o/c/b/a;

    invoke-interface {p1, v0}, Le/a/b/o/f/c/c;->ws(Le/a/b/o/c/b/a;)V

    return-void
.end method
