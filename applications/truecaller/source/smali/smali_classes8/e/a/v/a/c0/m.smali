.class public final Le/a/v/a/c0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/v/a/c0/c;


# direct methods
.method public constructor <init>(Le/a/v/a/c0/c;Z)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c0/m;->a:Le/a/v/a/c0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/v/a/c0/m;->a:Le/a/v/a/c0/c;

    .line 2
    iget-object p1, p1, Le/a/v/a/c0/c;->e:Ls1/z/b/a;

    .line 3
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
