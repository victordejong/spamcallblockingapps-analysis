.class public final Le/a/a/r0/j$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$a;


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


# direct methods
.method public constructor <init>(Le/a/a/r0/j;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$f;->a:Le/a/a/r0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/b/f/g0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/r0/j$f;->a:Le/a/a/r0/j;

    .line 2
    iget-boolean v0, p1, Le/a/a/r0/j;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/a/r0/j;->UA(I)V

    :cond_0
    return-void
.end method
