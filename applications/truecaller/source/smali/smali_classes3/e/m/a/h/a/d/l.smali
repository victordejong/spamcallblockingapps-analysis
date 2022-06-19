.class public final Le/m/a/h/a/d/l;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Le/m/a/h/a/d/r;


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/r;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/d/l;->b:Le/m/a/h/a/d/r;

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/d/l;->b:Le/m/a/h/a/d/r;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    .line 3
    invoke-virtual {v0, v3, v2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Le/m/a/h/a/d/l;->b:Le/m/a/h/a/d/r;

    .line 4
    iget-object v2, v0, Le/m/a/h/a/d/r;->a:Landroid/content/Context;

    .line 5
    iget-object v0, v0, Le/m/a/h/a/d/r;->m:Landroid/content/ServiceConnection;

    .line 6
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Le/m/a/h/a/d/l;->b:Le/m/a/h/a/d/r;

    .line 7
    iput-boolean v1, v0, Le/m/a/h/a/d/r;->g:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 9
    iput-object v1, v0, Le/m/a/h/a/d/r;->m:Landroid/content/ServiceConnection;

    .line 10
    :cond_0
    iget-object v0, p0, Le/m/a/h/a/d/l;->b:Le/m/a/h/a/d/r;

    .line 11
    invoke-virtual {v0}, Le/m/a/h/a/d/r;->d()V

    return-void
.end method
