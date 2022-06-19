.class public final Le/a/r3/b$f;
.super Le/a/r3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/g/d;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/d;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/r3/b;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/r3/b$f;->a:Le/m/a/h/a/g/d;

    return-void
.end method
