.class public final Le/a/j5/a/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j5/a/b;-><init>(Landroid/content/Context;Le/a/p5/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j5/a/b;


# direct methods
.method public constructor <init>(Le/a/j5/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/j5/a/b$a;->b:Le/a/j5/a/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/j5/a/b$a;->b:Le/a/j5/a/b;

    .line 2
    iget-object v0, v0, Le/a/j5/a/b;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Le/a/j5/a/b$a;->b:Le/a/j5/a/b;

    .line 4
    iget-object v1, v1, Le/a/j5/a/b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "context.packageManager.g\u2026licationIcon(packageName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
