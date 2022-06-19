.class public final Le/a/a/c/r8/e$i;
.super Le/a/a/c/r8/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/r8/e;->d(Landroid/content/Context;Le/a/a/c/r8/b;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Le/a/a/c/r8/e;

.field public final synthetic g:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/c/r8/e;Ls1/z/b/a;Landroid/content/Context;IILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a;",
            "Landroid/content/Context;",
            "II",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/r8/e$i;->f:Le/a/a/c/r8/e;

    iput-object p2, p0, Le/a/a/c/r8/e$i;->g:Ls1/z/b/a;

    invoke-direct {p0, p4, p5, p6}, Le/a/a/c/r8/a$a;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d(Le/a/a/c/r8/c;)V
    .locals 1

    const-string v0, "instanceHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/r8/e$i;->f:Le/a/a/c/r8/e;

    invoke-static {v0, p1}, Le/a/a/c/r8/e;->c(Le/a/a/c/r8/e;Le/a/a/c/r8/c;)V

    .line 2
    iget-object p1, p0, Le/a/a/c/r8/e$i;->g:Ls1/z/b/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
