.class public final Le/a/h3/b/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/content/ClipboardManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h3/b/c;


# direct methods
.method public constructor <init>(Le/a/h3/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/h3/b/b;->b:Le/a/h3/b/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h3/b/b;->b:Le/a/h3/b/c;

    .line 2
    iget-object v0, v0, Le/a/h3/b/c;->c:Landroid/content/Context;

    const-string v1, "clipboard"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method
