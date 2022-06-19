.class public Le/m/a/g/j/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/j/d;->QA(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/m/a/g/j/d;


# direct methods
.method public constructor <init>(Le/m/a/g/j/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/d$a;->b:Le/m/a/g/j/d;

    iput p2, p0, Le/m/a/g/j/d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/j/d$a;->b:Le/m/a/g/j/d;

    .line 2
    iget-object v0, v0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget v1, p0, Le/m/a/g/j/d$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
