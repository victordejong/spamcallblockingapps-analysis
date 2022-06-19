.class public final synthetic Le/m/a/h/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/z;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Le/m/a/h/a/a/c;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/z;Landroid/os/Bundle;Le/m/a/h/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/w;->a:Le/m/a/h/a/a/z;

    iput-object p2, p0, Le/m/a/h/a/a/w;->b:Landroid/os/Bundle;

    iput-object p3, p0, Le/m/a/h/a/a/w;->c:Le/m/a/h/a/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/a/w;->a:Le/m/a/h/a/a/z;

    iget-object v1, p0, Le/m/a/h/a/a/w;->b:Landroid/os/Bundle;

    iget-object v2, p0, Le/m/a/h/a/a/w;->c:Le/m/a/h/a/a/c;

    .line 1
    iget-object v3, v0, Le/m/a/h/a/a/z;->g:Le/m/a/h/a/a/p1;

    .line 2
    new-instance v4, Le/m/a/h/a/a/g1;

    .line 3
    invoke-direct {v4, v3, v1}, Le/m/a/h/a/a/g1;-><init>(Le/m/a/h/a/a/p1;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Le/m/a/h/a/a/z;->o:Landroid/os/Handler;

    new-instance v3, Le/m/a/h/a/a/y;

    .line 5
    invoke-direct {v3, v0, v2}, Le/m/a/h/a/a/y;-><init>(Le/m/a/h/a/a/z;Le/m/a/h/a/a/c;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, v0, Le/m/a/h/a/a/z;->i:Le/m/a/h/a/d/f1;

    .line 7
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/a/s3;

    invoke-interface {v0}, Le/m/a/h/a/a/s3;->zzf()V

    :cond_0
    return-void
.end method
