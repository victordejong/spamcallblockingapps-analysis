.class public final Le/a/d/c0/p$d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/d/c0/p$d;

.field public final synthetic c:Le/a/d/c0/p$d$b;


# direct methods
.method public constructor <init>(Le/a/d/c0/p$d;Le/a/d/c0/p$d$b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p$d$a;->b:Le/a/d/c0/p$d;

    iput-object p2, p0, Le/a/d/c0/p$d$a;->c:Le/a/d/c0/p$d$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c0/p$d$a;->b:Le/a/d/c0/p$d;

    iget-object v0, v0, Le/a/d/c0/p$d;->g:Le/a/d/c0/p;

    .line 2
    iget-object v0, v0, Le/a/d/c0/p;->g:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Le/a/d/c0/p$d$a;->c:Le/a/d/c0/p$d$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
