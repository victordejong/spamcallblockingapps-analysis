.class public final Le/a/b/k/d/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/d/a/c;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/k/d/a/c;

.field public final synthetic b:Le/a/b/k/b/b/b;


# direct methods
.method public constructor <init>(Le/a/b/k/d/a/c;Le/a/b/k/b/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/d/a/c$b;->a:Le/a/b/k/d/a/c;

    iput-object p2, p0, Le/a/b/k/d/a/c$b;->b:Le/a/b/k/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/k/d/a/c$b;->a:Le/a/b/k/d/a/c;

    .line 2
    iget-object p1, p1, Le/a/b/k/d/a/c;->e:Le/a/b/k/d/a/d;

    .line 3
    iget-object v0, p0, Le/a/b/k/d/a/c$b;->b:Le/a/b/k/b/b/b;

    invoke-interface {p1, v0}, Le/a/b/k/d/a/d;->Kv(Le/a/b/k/b/b/b;)V

    return-void
.end method
