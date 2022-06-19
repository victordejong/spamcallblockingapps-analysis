.class public final Le/a/i/d0/d0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d0/j;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/d0/j;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/j;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/j$a;->a:Le/a/i/d0/d0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/j$a;->a:Le/a/i/d0/d0/j;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/i/d0/d0/j;->handleClick(Landroid/view/View;)V

    return-void
.end method
