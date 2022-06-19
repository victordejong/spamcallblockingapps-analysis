.class public final Le/a/l/a/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/l/a2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l/a2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/b0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/a/b0;->b:Le/a/l/a2;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/ShortcutManager;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/a/b0;->a:Landroid/content/Context;

    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.pm.ShortcutManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ShortcutManager;

    return-object v0
.end method
