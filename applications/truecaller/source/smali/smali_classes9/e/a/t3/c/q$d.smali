.class public final Le/a/t3/c/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t3/c/q;-><init>(Le/a/t3/c/p$a;Landroid/view/View;Le/a/v0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t3/c/q;


# direct methods
.method public constructor <init>(Le/a/t3/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t3/c/q$d;->a:Le/a/t3/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/q$d;->a:Le/a/t3/c/q;

    .line 2
    iget-object v0, v0, Le/a/t3/c/q;->d:Le/a/t3/c/p$a;

    .line 3
    invoke-interface {v0, p1}, Le/a/t3/c/p$a;->Hb(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
