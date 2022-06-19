.class public final Le/a/f4/b/h/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f4/b/h/d;-><init>(Landroid/content/Context;Le/a/p5/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Le/a/f4/b/h/d;


# direct methods
.method public constructor <init>(Le/a/f4/b/h/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f4/b/h/d$a;->b:Le/a/f4/b/h/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/a/f4/b/h/d$a;->a:Z

    .line 2
    iget-object p2, p0, Le/a/f4/b/h/d$a;->b:Le/a/f4/b/h/d;

    .line 3
    iget-object p2, p2, Le/a/f4/b/h/d;->d:Le/a/p5/u;

    .line 4
    invoke-interface {p2}, Le/a/p5/u;->d()Z

    move-result p2

    iput-boolean p2, p0, Le/a/f4/b/h/d$a;->a:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/f4/b/h/d$a;->b:Le/a/f4/b/h/d;

    .line 6
    iget-object p1, p1, Le/a/f4/b/h/d;->a:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp3/a/l0;

    .line 9
    invoke-virtual {p2}, Lp3/a/l0;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method
