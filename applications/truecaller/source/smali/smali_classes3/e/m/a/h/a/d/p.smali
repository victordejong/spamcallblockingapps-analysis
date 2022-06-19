.class public final Le/m/a/h/a/d/p;
.super Le/m/a/h/a/d/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:Le/m/a/h/a/d/q;


# direct methods
.method public constructor <init>(Le/m/a/h/a/d/q;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/d/p;->b:Le/m/a/h/a/d/q;

    .line 1
    invoke-direct {p0}, Le/m/a/h/a/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/d/p;->b:Le/m/a/h/a/d/q;

    iget-object v0, v0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    .line 2
    invoke-virtual {v1, v4, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 3
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, Le/m/a/h/a/d/r;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    iget-object v0, p0, Le/m/a/h/a/d/p;->b:Le/m/a/h/a/d/q;

    iget-object v0, v0, Le/m/a/h/a/d/q;->a:Le/m/a/h/a/d/r;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Le/m/a/h/a/d/r;->n:Landroid/os/IInterface;

    .line 6
    iput-boolean v2, v0, Le/m/a/h/a/d/r;->g:Z

    return-void
.end method
