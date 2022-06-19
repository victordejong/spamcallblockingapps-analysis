.class public Le/i/b/q1/b$a;
.super Le/i/b/f3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/q1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroid/content/ComponentName;

.field public c:Le/i/b/q1/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/content/ComponentName;Le/i/b/q1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/f3/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/q1/b$a;->a:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Le/i/b/q1/b$a;->b:Landroid/content/ComponentName;

    .line 4
    iput-object p3, p0, Le/i/b/q1/b$a;->c:Le/i/b/q1/c;

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/q1/b$a;->b:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/i/b/q1/b$a;->c:Le/i/b/q1/c;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Le/i/b/q1/c;->a()V

    .line 4
    iget-object p1, p0, Le/i/b/q1/b$a;->a:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/i/b/q1/b$a;->c:Le/i/b/q1/c;

    return-void
.end method
