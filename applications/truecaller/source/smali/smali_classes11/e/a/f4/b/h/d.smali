.class public final Le/a/f4/b/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/b/h/c;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lp3/a/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/f4/b/h/d$a;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/p5/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/u;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/b/h/d;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/f4/b/h/d;->d:Le/a/p5/u;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/f4/b/h/d;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Le/a/f4/b/h/d$a;

    invoke-direct {p1, p0}, Le/a/f4/b/h/d$a;-><init>(Le/a/f4/b/h/d;)V

    iput-object p1, p0, Le/a/f4/b/h/d;->b:Le/a/f4/b/h/d$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lp3/a/l0;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f4/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/a/f4/b/h/d;->c:Landroid/content/Context;

    iget-object v0, p0, Le/a/f4/b/h/d;->b:Le/a/f4/b/h/d$a;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
