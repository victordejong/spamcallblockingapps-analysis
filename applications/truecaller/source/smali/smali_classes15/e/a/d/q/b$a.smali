.class public final Le/a/d/q/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/os/IBinder;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Le/a/d/q/b;


# direct methods
.method public constructor <init>(Le/a/d/q/b;Ls1/z/b/l;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Landroid/os/IBinder;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onConnectedCallback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDisconnectedCallback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/q/b$a;->d:Le/a/d/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/d/q/b$a;->b:Ls1/z/b/l;

    iput-object p3, p0, Le/a/d/q/b$a;->c:Ls1/z/b/a;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/d/q/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/d/q/b$a;->d:Le/a/d/q/b;

    .line 2
    iget-object p1, p1, Le/a/d/q/b;->a:Lq3/a/y;

    .line 3
    invoke-interface {p1}, Lq3/a/p1;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/d/q/b$a;->b:Ls1/z/b/l;

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7

    const-string v0, "className"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/d/q/b$a;->d:Le/a/d/q/b;

    new-instance v4, Le/a/d/q/b$a$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/d/q/b$a$a;-><init>(Le/a/d/q/b$a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
