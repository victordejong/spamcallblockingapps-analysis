.class public Le/m/a/g/o/l$a;
.super Le/m/a/g/r/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/o/l;


# direct methods
.method public constructor <init>(Le/m/a/g/o/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/o/l$a;->a:Le/m/a/g/o/l;

    invoke-direct {p0}, Le/m/a/g/r/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/o/l$a;->a:Le/m/a/g/o/l;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Le/m/a/g/o/l;->d:Z

    .line 3
    iget-object p1, p1, Le/m/a/g/o/l;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/g/o/l$b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/m/a/g/o/l$b;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Le/m/a/g/o/l$a;->a:Le/m/a/g/o/l;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Le/m/a/g/o/l;->d:Z

    .line 3
    iget-object p1, p1, Le/m/a/g/o/l;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/g/o/l$b;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Le/m/a/g/o/l$b;->a()V

    :cond_1
    return-void
.end method
