.class public Ln3/m0/c0/j$h;
.super Ln3/c0/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ln3/c0/f0/a;-><init>(II)V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/j$h;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 5

    .line 1
    iget v0, p0, Ln3/c0/f0/a;->b:I

    const-string v1, "reschedule_needed"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    invoke-interface {p1, v1, v0}, Ln3/e0/a/b;->c1(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/m0/c0/j$h;->c:Landroid/content/Context;

    const-string v0, "androidx.work.util.preferences"

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 6
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
