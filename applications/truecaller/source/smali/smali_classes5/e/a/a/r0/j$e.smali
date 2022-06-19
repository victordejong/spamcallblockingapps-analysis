.class public final Le/a/a/r0/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/r0/j;

.field public final synthetic b:Ln3/b/f/g0;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;Ln3/b/f/g0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$e;->a:Le/a/a/r0/j;

    iput-object p2, p0, Le/a/a/r0/j$e;->b:Ln3/b/f/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/r0/j$e;->a:Le/a/a/r0/j;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Le/a/a/r0/j;->h:Z

    .line 3
    iget-object p1, p0, Le/a/a/r0/j$e;->b:Ln3/b/f/g0;

    .line 4
    iget-object p1, p1, Ln3/b/f/g0;->d:Ln3/b/e/i/l;

    invoke-virtual {p1}, Ln3/b/e/i/l;->f()V

    return-void
.end method
