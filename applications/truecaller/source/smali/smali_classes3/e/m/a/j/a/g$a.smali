.class public final Le/m/a/j/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/j/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/j/a/g;


# direct methods
.method public constructor <init>(Le/m/a/j/a/g;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/j/a/g$a;->a:Le/m/a/j/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Le/m/a/j/a/g$a;->a:Le/m/a/j/a/g;

    .line 1
    iget-object v1, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Le/m/a/j/a/g$a;->a:Le/m/a/j/a/g;

    .line 4
    iget-object p2, p2, Le/m/a/j/a/g;->b:Ljava/util/Set;

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/m/a/j/a/g$a;->a:Le/m/a/j/a/g;

    .line 6
    iget-object p1, p1, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p1, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {p1}, Le/m/a/j/a/h/e;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Le/m/a/j/a/h/j;

    invoke-direct {p2, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
