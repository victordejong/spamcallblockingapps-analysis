.class public final Le/a/i/e0/b$c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e0/b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/e0/b$c;

.field public final synthetic c:Le/a/i/e0/b$c$b;


# direct methods
.method public constructor <init>(Le/a/i/e0/b$c;Le/a/i/e0/b$c$b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e0/b$c$a;->b:Le/a/i/e0/b$c;

    iput-object p2, p0, Le/a/i/e0/b$c$a;->c:Le/a/i/e0/b$c$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/e0/b$c$a;->b:Le/a/i/e0/b$c;

    iget-object v0, v0, Le/a/i/e0/b$c;->g:Le/a/i/e0/b;

    invoke-static {v0}, Le/a/i/e0/b;->d(Le/a/i/e0/b;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Le/a/i/e0/b$c$a;->c:Le/a/i/e0/b$c$b;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
