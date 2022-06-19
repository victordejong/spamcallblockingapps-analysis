.class public final Le/a/n5/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n5/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/b0/e/f;Ls1/z/b/l;Le/a/c3/a;Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/pm/PackageManager;

.field public final synthetic c:Le/a/c3/a;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Le/a/c3/a;)V
    .locals 0

    iput-object p1, p0, Le/a/n5/d$a;->b:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Le/a/n5/d$a;->c:Le/a/c3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n5/d$a;->b:Landroid/content/pm/PackageManager;

    const-string v1, "com.microsoft.device.display.displaymask"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/n5/d$a;->c:Le/a/c3/a;

    invoke-interface {v1}, Le/a/c3/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
