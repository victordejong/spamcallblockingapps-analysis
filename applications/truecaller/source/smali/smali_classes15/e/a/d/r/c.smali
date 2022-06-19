.class public final Le/a/d/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/r/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Landroid/content/ContentResolver;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/r/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/r/c;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/d/r/c;->c:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/d/r/c;->d:Lo3/a;

    return-void
.end method
