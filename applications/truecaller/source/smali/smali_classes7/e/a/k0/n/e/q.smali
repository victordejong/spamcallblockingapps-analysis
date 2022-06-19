.class public final Le/a/k0/n/e/q;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/media/MediaPlayer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k0/n/e/s;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/a/k0/n/e/s;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/e/q;->b:Le/a/k0/n/e/s;

    iput-object p2, p0, Le/a/k0/n/e/q;->c:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/media/MediaPlayer;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/k0/n/e/q;->b:Le/a/k0/n/e/s;

    .line 4
    iget-object v0, v0, Le/a/k0/n/e/s;->c:Landroid/content/Context;

    .line 5
    iget-object v1, p0, Le/a/k0/n/e/q;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
