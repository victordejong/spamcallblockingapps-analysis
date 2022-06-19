.class public final Le/a/k/q/b$a;
.super Le/a/k/q/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:F

.field public final b:Le/m/a/c/j1/f;


# direct methods
.method public constructor <init>(FLe/m/a/c/j1/f;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/k/q/b;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/k/q/b$a;->a:F

    iput-object p2, p0, Le/a/k/q/b$a;->b:Le/m/a/c/j1/f;

    return-void
.end method
