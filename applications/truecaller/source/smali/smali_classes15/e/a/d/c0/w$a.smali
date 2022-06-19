.class public final Le/a/d/c0/w$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/w;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/os/PowerManager$WakeLock;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/w;


# direct methods
.method public constructor <init>(Le/a/d/c0/w;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/w$a;->b:Le/a/d/c0/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/w$a;->b:Le/a/d/c0/w;

    .line 2
    iget-object v0, v0, Le/a/d/c0/w;->b:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Le/a/p5/s0/g;->b0(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->c0(Landroid/os/PowerManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method
