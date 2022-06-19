.class public Le/a/h5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/h5/i;


# direct methods
.method public constructor <init>(Le/a/h5/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/h5/h;->a:Le/a/h5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h5/h;->a:Le/a/h5/i;

    .line 2
    iget-boolean v0, p1, Le/a/h5/i;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/h5/i;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/h5/i;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h5/n;

    check-cast p1, Lcom/truecaller/tcpermissions/RoleRequesterActivity;

    invoke-interface {v0, p1}, Le/a/h5/n;->K(Lcom/truecaller/tcpermissions/RoleRequesterActivity;)V

    :cond_0
    return-void
.end method
