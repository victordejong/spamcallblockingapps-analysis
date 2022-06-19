.class public Le/m/d/n/j/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/n/j/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/m/d/n/j/e;Le/m/d/n/j/e$a;)V
    .locals 4

    .line 1
    sget-object p2, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le/m/d/n/j/e;->a:Landroid/content/Context;

    const-string v1, "com.google.firebase.crashlytics.unity_version"

    const-string v2, "string"

    .line 3
    invoke-static {v0, v1, v2}, Le/m/d/n/j/j/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v2, "Unity"

    .line 4
    iput-object v2, p0, Le/m/d/n/j/e$b;->a:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Le/m/d/n/j/e;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/m/d/n/j/e$b;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_1

    :cond_0
    const-string v0, "flutter_assets"

    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p1, Le/m/d/n/j/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Le/m/d/n/j/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    const/4 v2, 0x1

    :catch_0
    :cond_2
    :goto_0
    const/4 p1, 0x0

    if-eqz v2, :cond_3

    const-string v0, "Flutter"

    .line 11
    iput-object v0, p0, Le/m/d/n/j/e$b;->a:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Le/m/d/n/j/e$b;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_1

    .line 14
    :cond_3
    iput-object p1, p0, Le/m/d/n/j/e$b;->a:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Le/m/d/n/j/e$b;->b:Ljava/lang/String;

    :goto_1
    return-void
.end method
