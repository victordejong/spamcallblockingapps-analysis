.class public final Le/a/a/c/r8/e$b;
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

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/a/c/r8/e;Landroid/content/Context;IILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/r8/e$b;->f:Le/a/a/c/r8/e;

    iput-object p2, p0, Le/a/a/c/r8/e$b;->g:Landroid/content/Context;

    invoke-direct {p0, p3, p4, p5}, Le/a/a/c/r8/a$a;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d(Le/a/a/c/r8/c;)V
    .locals 2

    const-string v0, "instanceHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/r8/e$b;->f:Le/a/a/c/r8/e;

    iget-object v1, p0, Le/a/a/c/r8/e$b;->g:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Le/a/a/c/r8/e;->b(Le/a/a/c/r8/e;Le/a/a/c/r8/c;Landroid/content/Context;)V

    return-void
.end method
