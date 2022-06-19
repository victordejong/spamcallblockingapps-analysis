.class public final Le/a/q2/f0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/f0;->a()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/content/pm/PackageInfo;",
        "Le/a/i/a0/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/q2/f0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/q2/f0$b;

    invoke-direct {v0}, Le/a/q2/f0$b;-><init>()V

    sput-object v0, Le/a/q2/f0$b;->b:Le/a/q2/f0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 2
    new-instance v8, Le/a/i/a0/b;

    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "it.packageName"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v0, "it.versionName"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 6
    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 7
    iget-wide v6, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-object v0, v8

    .line 8
    invoke-direct/range {v0 .. v7}, Le/a/i/a0/b;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-object v8
.end method
