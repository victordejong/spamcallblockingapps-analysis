.class public final synthetic Le/m/d/z/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/z/g/x;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Le/m/d/z/g/x;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/g/a;->a:Le/m/d/z/g/x;

    iput-object p2, p0, Le/m/d/z/g/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/d/z/g/a;->a:Le/m/d/z/g/x;

    iget-object v1, p0, Le/m/d/z/g/a;->b:Landroid/content/Context;

    .line 1
    iget-object v2, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "FirebasePerfSharedPrefs"

    .line 2
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method
