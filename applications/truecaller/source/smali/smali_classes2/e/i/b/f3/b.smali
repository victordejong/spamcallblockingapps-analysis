.class public Le/i/b/f3/b;
.super Le/i/b/f3/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/i/b/f3/c;


# direct methods
.method public constructor <init>(Le/i/b/f3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/f3/b;->a:Le/i/b/f3/c;

    invoke-direct {p0}, Le/i/b/f3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/f3/b;->a:Le/i/b/f3/c;

    .line 2
    iget-object v0, v0, Le/i/b/f3/c;->b:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/i/b/f3/b;->a:Le/i/b/f3/c;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object v0, p1, Le/i/b/f3/c;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/f3/b;->a:Le/i/b/f3/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object v1, v0, Le/i/b/f3/c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
